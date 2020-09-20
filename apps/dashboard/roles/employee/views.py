"""Employee views"""

# Django
from django.contrib.auth.mixins import LoginRequiredMixin
from django.urls import reverse_lazy
from django.views.generic import (
    TemplateView,
)


class EmployeeDashboardView(LoginRequiredMixin, TemplateView):
    """Employee dashboard View"""
    login_url = reverse_lazy('users:login')
    template_name = 'dashboard/roles/employee/presentation/employee.html'


class RequestTechnicalSupport(LoginRequiredMixin, TemplateView):
    """Request Technical support"""
    template_name = 'dashboard/roles/employee/technical_support/create_support.html'
