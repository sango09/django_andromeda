"""Auxiliary views"""

# Django
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.shortcuts import get_object_or_404
from django.urls import reverse_lazy
from django.views.generic import UpdateView
from django.views.generic.base import TemplateView

from apps.links.models import TblInventario
from apps.roles.administrator.form import InventoryUpdateForm


class AuxiliaryDashboardView(LoginRequiredMixin, TemplateView):
    """Auxiliary dashboard View"""
    login_url = reverse_lazy('users:login')
    template_name = 'dashboard/roles/auxiliary/presentation/auxiliary.html'


class InventoryAuxiliaryUpdateView(LoginRequiredMixin, UpdateView, SuccessMessageMixin):
    """Update inventory view"""
    form_class = InventoryUpdateForm
    queryset = TblInventario.objects.all()
    success_url = reverse_lazy('dashboard:inventory_auxiliary')

    def get_object(self):
        id_ = self.kwargs.get("id")
        return get_object_or_404(TblInventario, id_inventario=id_)

    def form_valid(self, form):
        return super().form_valid(form)
