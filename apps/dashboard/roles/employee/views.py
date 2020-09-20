"""Employee views"""

# Django
from django.contrib.auth.models import User
from django.views.generic import DetailView
from django.views.generic.base import TemplateView
from django.contrib.auth.mixins import LoginRequiredMixin


class EmployeeDashboardView(LoginRequiredMixin, TemplateView):
    """Employee dashboard View"""
    login_url = '/login/'
    template_name = 'dashboard/roles/employee/presentation/employee.html'


class RequestTechnicalSupport(LoginRequiredMixin, TemplateView):
    """Request Technical support"""
    template_name = 'dashboard/roles/employee/technical_support/create_support.html'


class EmployeeDetailView(LoginRequiredMixin, DetailView):
    """Employee detail view"""
    template_name = 'users/detail_users/detail_employee.html'
    slug_field = 'username'
    slug_url_kwarg = 'username'
    queryset = User.objects.all()
