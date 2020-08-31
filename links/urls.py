# Django
from django.urls import path
from django.conf.urls import url
from django.views import generic
from django.views.generic import TemplateView

urlpatterns = [
    path('login/', generic.TemplateView.as_view(template_name='users/login.html')),
    path('register/', generic.TemplateView.as_view(template_name='users/register.html')),
    path('', generic.TemplateView.as_view(template_name="index.html")),
]
