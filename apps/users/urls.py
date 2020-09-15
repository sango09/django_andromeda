"""Users URLs"""

# Django
from django.urls import path
from django.conf.urls import include

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
            view=views.LogoutView.as_view(),
            name='logout'
        ),

        path(
            route='signup/',
            view=views.signup,
            name='signup'
        ),
    ])),

    # Profile
    path(
        route='<str:username>/',
        view=views.UserDetailView.as_view(),
        name='detail'
    ),

    # Update user
    path(
        route='me/update/',
        view=views.UserUpdateProfileView.as_view(),
        name='update'
    ),


    # Delete user
    path(
        route='<int:id>/delete/',
        view=views.UserDeleteView.as_view(),
        name='delete'
    ),
]
