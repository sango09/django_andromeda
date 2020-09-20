"""Links URLs"""

from django.conf.urls import include
# Django
from django.urls import path

# Local views
from apps.links import views

urlpatterns = [
    path(
        route='',
        view=views.IndexView.as_view(),
        name='index'
    ),

    path('users/', include(('apps.users.urls', 'apps.users'), namespace='users')),
    path('dashboard/', include(('apps.dashboard.urls', 'apps.dashboard'), namespace='dashboard')),
]
