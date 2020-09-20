"""Index views"""

# Django
from django.views.generic.base import TemplateView


class IndexView(TemplateView):
    """Index View"""
    template_name = 'index.html'
