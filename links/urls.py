# Django
from django.urls import path
from django.conf.urls import url
from django.views import generic
from django.views.generic import TemplateView

urlpatterns = [
    path('view2/',
         generic.TemplateView.as_view(template_name='view2.html')),
    url(r"^.*", TemplateView.as_view(template_name="index.html")),

]
