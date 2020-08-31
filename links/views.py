"""Andromeda views"""

# Django
from django.contrib.auth import authenticate, login
from django.shortcuts import render


def login_view(request):
    """Login view"""
    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['password']
        print(email, ':', password)
