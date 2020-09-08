"""Links URLs"""

# Django
from django.urls import path
from django.conf.urls import include

# Local views
from links import views

urlpatterns = [
    path(
        route='',
        view=views.index_views,
        name='index'
    ),

    path('users/', include(('users.urls', 'users'), namespace='users')),
    path('dashboard/', include(('dashboard.urls', 'dashboard'), namespace='dashboard')),
]

# dashboard_views.admin_views, name='administrator'
