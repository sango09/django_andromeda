"""Administrator URLs."""

from django.conf.urls import include
# Django
from django.urls import path

from apps.dashboard.roles.administrator import views as administrator_views
# Local views
from apps.users import views as users_views

urlpatterns = [
    path(
        route='',
        view=administrator_views.AdministratorDashboardView.as_view(),
        name='administrator'
    ),

    # Profile Admin
    path(
        route='<str:username>/',
        view=users_views.UserDetailView.as_view(
            template_name='users/detail_users/detail_admin.html'
        ),
        name='detail_admin'
    ),

    path(
        route='me/update',
        view=users_views.UserUpdateProfileView.as_view(
            template_name='users/update_users/update_profile_admin.html'

        ),
        name="update_admin"
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
