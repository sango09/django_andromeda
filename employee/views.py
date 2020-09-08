"""Employee views"""

# Django
from django.shortcuts import render


def employee_view(request):
    """Employee dashboard"""
    return render(request, 'dashboard/employee/presentation/employee.html')
