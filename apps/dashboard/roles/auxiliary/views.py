"""Auxiliary views"""

# Django
from django.views.generic import DetailView
from django.views.generic.base import TemplateView
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth.models import User


class AuxiliaryDashboardView(LoginRequiredMixin, TemplateView):
    """Auxiliary dashboard View"""
    login_url = '/login/'
    template_name = 'dashboard/roles/auxiliary/presentation/auxiliary.html'


class AuxiliaryDetailView(LoginRequiredMixin, DetailView):
    """Employee detail view"""
    template_name = 'users/detail_users/detail_auxiliary.html'
    slug_field = 'username'
    slug_url_kwarg = 'username'
    queryset = User.objects.all()
