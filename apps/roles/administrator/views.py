"""Administrator views"""

from django.contrib import messages
# Django
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.http import HttpResponseRedirect
from django.shortcuts import get_object_or_404
from django.urls import reverse_lazy
from django.views.generic import (
    TemplateView,
    ListView,
    UpdateView,
    DeleteView,
)

# Models
from apps.links.models import TblInventario
# Forms
from .form import (
    InventoryForm,
    ImplementForm,
    FichaTecnicaForm,
)


class AdministratorDashboardView(LoginRequiredMixin, TemplateView):
    """Administrator dashboard View"""
    login_url = reverse_lazy('users:login')
    template_name = 'dashboard/roles/administrator/presentation/administrator.html'


class InventoryDeleteView(SuccessMessageMixin, DeleteView):
    """User delete view"""
    template_name = 'dashboard/roles/administrator/admin_users/delete_user.html'
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
    template_name = 'dashboard/roles/administrator/inventory/create_inventory.html'

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
    template_name = 'dashboard/roles/administrator/inventory/implements/create_implement.html'

    def post(self, request):
        post_data = request.POST or None
        form_class = ImplementForm(post_data)

        if form_class.is_valid():
            form_class.save()
            messages.success(request, 'Implemento registrado con exito')
            return HttpResponseRedirect(reverse_lazy('dashboard:create_implement'))

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
    template_name = 'dashboard/roles/administrator/inventory/implements/create_ficha_tecnica.html'

    def post(self, request):
        post_data = request.POST or None

        form_class = FichaTecnicaForm(post_data)

        if form_class.is_valid():
            form_class.save()
            messages.success(request, 'Ficha tecnica registrada con exito!')
            return HttpResponseRedirect(reverse_lazy('dashboard:inventory_list'))

        context = self.get_context_data(
            form=form_class
        )

        return self.render_to_response(context)

    def get(self, request, *args, **kwargs):
        return self.post(request, *args, **kwargs)


class InventoryListView(LoginRequiredMixin, ListView):
    """All implement in inventory"""
    login_url = reverse_lazy('user:login')
    template_name = 'dashboard/roles/administrator/inventory/inventory_list.html'
    model = TblInventario
    paginate_by = 8
    context_object_name = 'inventory_list'


class InventoryUpdateView(LoginRequiredMixin, UpdateView):
    """Update inventory view"""
    form_class = InventoryForm
    template_name = 'dashboard/roles/administrator/inventory/update_inventory.html'
    queryset = TblInventario.objects.all()

    def get_object(self):
        id_ = self.kwargs.get("id")
        return get_object_or_404(TblInventario, id_inventario=id_)

    def form_valid(self, form):
        print(form.cleaned_data)
        return super().form_valid(form)

    def get_success_url(self):
        return reverse_lazy('dashboard:inventory_list   ')
