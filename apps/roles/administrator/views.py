"""Administrator views"""
import csv

from django.contrib import messages
# Django
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.http import HttpResponseRedirect, HttpResponse
from django.shortcuts import get_object_or_404
from django.urls import reverse_lazy
from django.views.generic import (
    TemplateView,
    ListView,
    UpdateView,
    DeleteView,
)

# Models
from apps.links.models import (
    TblInventario,
    TblAuxiliar,
    TblEmpleado,
    TblSoporteTecnico,
)
# Forms
from .form import (
    InventoryForm,
    ImplementForm,
    FichaTecnicaForm,
    InventoryUpdateForm,
    SupportForm,
)


class AdministratorDashboardView(LoginRequiredMixin, TemplateView):
    """Administrator dashboard View"""
    login_url = reverse_lazy('users:login')
    template_name = 'dashboard/roles/administrator/presentation/administrator.html'


class InventoryDeleteView(SuccessMessageMixin, DeleteView):
    """User delete view"""
    template_name = 'dashboard/roles/administrator/inventory/delete_inventory.html'
    success_message = "Eliminado con exito"

    def get_object(self):
        id_ = self.kwargs.get('id')
        return get_object_or_404(TblInventario, id_inventario=id_)

    def get_success_url(self):
        return reverse_lazy('dashboard:inventory_list')

    def get_success_message(self, cleaned_data):
        return self.success_message % dict(
            cleaned_data,
            calculated_field=self.object.calculated_field,
        )


class CreateInventoryView(LoginRequiredMixin, TemplateView):
    """Add inventory in the data base"""
    login_url = reverse_lazy('users:login')
    form_class = InventoryForm()

    def post(self, request):
        post_data = request.POST or None
        form_class = InventoryForm(post_data)

        if form_class.is_valid():
            form_class.save()
            messages.success(request, 'Registro exitoso!')
            return HttpResponseRedirect(reverse_lazy('dashboard:inventory_list'))

        context = self.get_context_data(
            form=form_class
        )

        return self.render_to_response(context)

    def get(self, request, *args, **kwargs):
        return self.post(request, *args, **kwargs)


class CreateImplementView(LoginRequiredMixin, TemplateView):
    """Add implement to inventory general"""
    login_url = reverse_lazy('user:login')
    form_class = ImplementForm()

    def post(self, request):
        post_data = request.POST or None
        form_class = ImplementForm(post_data)

        if form_class.is_valid():
            form_class.save()
            messages.success(request, 'Implemento registrado con exito')
            return HttpResponseRedirect(reverse_lazy('dashboard:create_inventory'))

        context = self.get_context_data(
            form=form_class
        )

        return self.render_to_response(context)

    def get(self, request, *args, **kwargs):
        return self.post(request, *args, **kwargs)


class CreateFichaTecnicaView(LoginRequiredMixin, TemplateView):
    """Create ficha tecnica of the implement"""
    login_url = reverse_lazy('user:login')
    form_class = FichaTecnicaForm()

    def post(self, request):
        post_data = request.POST or None
        file_data = request.FILES or None

        form_class = FichaTecnicaForm(post_data, file_data)

        if form_class.is_valid():
            form_class.save()
            messages.success(request, 'Ficha tecnica registrada con exito!')
            return HttpResponseRedirect(reverse_lazy('dashboard:create_implement'))

        context = self.get_context_data(
            form=form_class
        )

        return self.render_to_response(context)

    def get(self, request, *args, **kwargs):
        return self.post(request, *args, **kwargs)


class InventoryListView(SuccessMessageMixin, LoginRequiredMixin, ListView):
    """All implement in inventory"""
    login_url = reverse_lazy('user:login')
    model = TblInventario
    paginate_by = 8
    context_object_name = 'inventory_list'


class InventoryUpdateView(LoginRequiredMixin, UpdateView, SuccessMessageMixin):
    """Update inventory view"""
    form_class = InventoryUpdateForm
    queryset = TblInventario.objects.all()

    def get_object(self):
        id_ = self.kwargs.get("id")
        return get_object_or_404(TblInventario, id_inventario=id_)

    def form_valid(self, form):
        messages.success(self.request, "Inventario actualizado")
        position = self.request.user.tblperfil.posicion_id

        if position == 1:
            self.success_url = reverse_lazy('dashboard:inventory_list')

        self.success_url = reverse_lazy('dashboard:inventory_auxiliary')
        return super().form_valid(form)


class SupportCreateView(LoginRequiredMixin, TemplateView):
    """ Create support view """
    login_url = reverse_lazy('user:login')
    form_class = SupportForm()

    def post(self, request):
        post_data = request.POST or None
        form_class = SupportForm(post_data)

        if form_class.is_valid():
            support = form_class.save(commit=False)
            auxiliar = TblAuxiliar.objects.get(id_auxiliar=1)
            empleado = TblEmpleado.objects.get(id_empleado=1)
            support.empleado = empleado
            support.auxiliar_asignado = auxiliar
            support.save()
            position = request.user.tblperfil.posicion_id
            messages.success(request, 'Soporte tecnico solicitado con exito!')

            if position == 1:
                return HttpResponseRedirect(reverse_lazy('dashboard:create_support'))

            elif position == 2:
                return HttpResponseRedirect(reverse_lazy('dashboard:create_support_auxiliary'))

            else:
                return HttpResponseRedirect(reverse_lazy('dashboard:create_support_employee'))

        context = self.get_context_data(form=form_class)
        return self.render_to_response(context)

    def get(self, request, *args, **kwargs):
        return self.post(request, *args, **kwargs)


class SupportListView(LoginRequiredMixin, ListView):
    """ Create Support list """
    login_url = reverse_lazy('user:login')
    template_name = 'dashboard/common/support/list_support.html'
    model = TblSoporteTecnico
    paginate_by = 5
    context_object_name = 'list_support'


def export_inventory_view(request):
    """Export all inventory to CSV"""
    response = HttpResponse(content_type='text/csv')
    writer = csv.writer(response)
    writer.writerow([
        'Tipo Implemento', 'Numero de serie',
        'Fecha de compra', 'Precio de compra',
        'Fecha de registro en el sistema', 'Ultima modificacion en el sistema',
        'Estado del implemento', 'Usuario asignado'])

    for item in TblInventario.objects.all().values_list(
            'tipo_implemento', 'numero_serie',
            'fecha_compra', 'precio_compra',
            'fecha_creacion', 'fecha_modificacion',
            'estado_implemento', 'usuario_asignado'):
        writer.writerow(item)

    response['Content-Disposition'] = 'attachment; filename="inventario_andromeda.csv"'

    return response
