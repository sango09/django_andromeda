# Django
from django.shortcuts import render


def auxiliary_view(request):
    """Auxiliary dashboard"""
    return render(request, 'dashboard/auxiliary/presentation/auxiliary.html')
