"""Administrator views"""

# Django
from django.contrib.auth.mixins import LoginRequiredMixin
from django.urls import reverse_lazy
from django.views.generic import (TemplateView, ListView)


class AdministratorDashboardView(LoginRequiredMixin, TemplateView):
    """Administrator dashboard View"""
    login_url = reverse_lazy('users:login')
    template_name = 'dashboard/roles/administrator/presentation/administrator.html'


class RegisterImplementView(LoginRequiredMixin, TemplateView):
    """Register item in the data base"""
    login_url = reverse_lazy('user:login')
    template_name = 'dashboard/roles/administrator/inventory/register_implement.html'


class InventoryListView(LoginRequiredMixin, TemplateView):
    """All implement in inventory"""
    login_url = reverse_lazy('user:login')
    template_name = 'dashboard/roles/administrator/inventory/inventory_list.html'
