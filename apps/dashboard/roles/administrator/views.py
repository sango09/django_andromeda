"""Administrator views"""

# Django
from django.contrib.auth.models import User
from django.views.generic import DetailView
from django.views.generic.base import TemplateView
from django.contrib.auth.mixins import LoginRequiredMixin


class AdministratorDashboardView(LoginRequiredMixin, TemplateView):
    """Auxiliary dashboard View"""
    login_url = '/login/'
    template_name = 'dashboard/roles/administrator/presentation/administrator.html'


class AdminDetailView(LoginRequiredMixin, DetailView):
    """User detail view"""
    template_name = 'users/detail_users/detail_admin.html'
    slug_field = 'username'
    slug_url_kwarg = 'username'
    queryset = User.objects.all()
