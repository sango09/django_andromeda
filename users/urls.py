"""Users URLs"""

# Django
from django.urls import path
from django.conf.urls import include

# Local views
from users import views

urlpatterns = [

    # Profile
    path(
        route='detail/',
        view=views.UserDetailView.as_view(),
        name='detail'
    ),

    # Management
    path('', include([
        path(
            route='login/',
            view=views.login_view,
            name='login'
        ),

        path(
            route='logout/',
            view=views.logout_view,
            name='logout'
        ),

        path(
            route='signup/',
            view=views.signup,
            name='signup'
        ),
    ])),
]
