"""Administrator URLs."""

# Django
from django.urls import path
from django.conf.urls import include

# Local views
from apps.users import views as users_views
from apps.administrator import views as administrator_views

urlpatterns = [
    path(
        route='',
        view=administrator_views.AdministratorDashboardView.as_view(),
        name='administrator'
    ),

    # Profile
    path(
        route='<str:username>/',
        view=administrator_views.AdminDetailView.as_view(),
        name='detail'
    ),

    path('users/', include([
        # path(
        #   route='create_user/',
        #   view=users_views.
        # ),
        path(
            route='list_users/',
            view=users_views.UserListView.as_view(),
            name='list_users'
        ),
        path(
            route='update_user/<int:pk>/',
            view=users_views.user_update_view,
            name='update_user'
        )
    ]))
]
