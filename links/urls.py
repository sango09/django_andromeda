

# Django
from django.urls import path
from django.views import generic

urlpatterns = [
    path('login/', generic.TemplateView.as_view(template_name='users/login.html')),
    path('register/', generic.TemplateView.as_view(template_name='users/register.html')),
    path('', generic.TemplateView.as_view(template_name="index.html")),
    path('administrator', generic.TemplateView.as_view(template_name='dashboard/administrator/administrator.html'))
]
