"""Auxiliary URLs"""

# Django
from django.urls import path

# Local views
from apps.dashboard.roles.auxiliary import views
from apps.users import views as users_views

urlpatterns = [
    path(
        route='',
        view=views.AuxiliaryDashboardView.as_view(),
        name='auxiliary'
    ),

    # Auxiliary profile
    path(
        route='<str:username>/',
        view=users_views.UserDetailView.as_view(
            template_name='users/detail_users/detail_auxiliary.html'
        ),
        name='detail_auxiliary'
    ),

    # Update user
    path(
        route='me/update/',
        view=users_views.UserUpdateProfileView.as_view(
            template_name="users/update_users/update_profile_auxiliary.html"
        ),
        name='update_auxiliary'
    ),

    # path('soporte/', include([
    #     path(
    #         route='create_request/',
    #         view=views.RequestTechnicalSupport.as_view(),
    #         name='create_support'
    #     ),
    # ]))
]
