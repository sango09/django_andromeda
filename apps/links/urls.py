"""Links URLs"""

# Django
from django.urls import path
from django.conf.urls import include

# Local views
from apps.links import views

urlpatterns = [
    path(
        route='',
        view=views.index_views,
        name='index'
    ),

    path('users/', include(('apps.users.urls', 'apps.users'), namespace='users')),
    path('dashboard/', include(('apps.dashboard.urls', 'apps.dashboard'), namespace='dashboard')),
]

# dashboard_views.admin_views, name='administrator'
