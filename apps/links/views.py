"""Andromeda views"""

# Django
from django.shortcuts import render


def index_views(request):
    """Index view"""
    return render(request, 'index.html')
