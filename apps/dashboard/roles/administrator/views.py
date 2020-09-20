"""Administrator views"""

# Django
from django.contrib.auth.mixins import LoginRequiredMixin
from django.urls import reverse_lazy
from django.views.generic.base import TemplateView


class AdministratorDashboardView(LoginRequiredMixin, TemplateView):
    """Auxiliary dashboard View"""
    login_url = reverse_lazy('users:login')
    template_name = 'dashboard/roles/administrator/presentation/administrator.html'