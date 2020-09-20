"""Users URLs"""


# Django
from django.urls import path
from django.conf.urls import include
from django.contrib.auth import views as auth_views

# Local views
from apps.users import views

urlpatterns = [

    # Management
    path('', include([
        path(
            route='login/',
            view=views.login_view,
            name='login'
        ),

        path(
            route='logout/',
            view=auth_views.LogoutView.as_view(
                next_page='users:login'
            ),
            name='logout'
        ),

        path(
            route='signup/',
            view=views.signup,
            name='signup'
        ),
    ])),

    # Delete user
    path(
        route='<int:id>/delete/',
        view=views.UserDeleteView.as_view(),
        name='delete'
    ),
]
