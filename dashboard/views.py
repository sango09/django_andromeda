"""Andromeda views"""

# Django
from django.shortcuts import render


def admin_views(request):
    """Dashboard view"""
    return render(request, 'dashboard/administrator/presentation/administrator.html')
