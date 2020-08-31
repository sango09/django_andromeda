"""Andromeda views"""

# Django
from django.shortcuts import render
from django.contrib.auth.decorators import login_required


@login_required
def admin_views(request):
    """Dashboard view"""
    return render(request, 'dashboard/administrator/administrator.html')

