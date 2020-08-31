"""Andromeda views"""

# Django
from django.shortcuts import render


def index_views(request):
    """Dashboard view"""
    return render(request, 'index.html')
