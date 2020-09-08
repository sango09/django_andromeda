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
            view=users_views.user_list,
            name='list_users'
        ),

        path(
            route='create_user',
            view=users_views.user_form,
            name='form_user'
        ),

        path(
            route='update_user/<int:id_usuario>/',
            view=users_views.user_update,
            name='edit_user'
        ),

        path(
            route='delete_user/<int:id_usuario>/',
            view=users_views.user_delete,
            name='delete_user'
        ),
    ]))
]
