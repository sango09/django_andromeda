"""Administrator URLs."""

# Django
from django.urls import path
from django.conf.urls import include

# Local views
from users import views as users_views
from dashboard import views as dashboard_views

urlpatterns = [
    path(
        route='',
        view=dashboard_views.admin_views,
        name='administrator'
    ),

    path('users/', include([
        path(
            route='list_users/',
            view=users_views.UserListView.as_view(),
            name='list_users'
        ),
    ]))
]
