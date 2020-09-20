"""Employee URLs"""

# Django
from django.urls import path, include

# Local views
from apps.dashboard.roles.employee import views
from apps.users import views as users_views

urlpatterns = [
    path(
        route='',
        view=views.EmployeeDashboardView.as_view(),
        name='employee'
    ),

    # Employee profile
    path(
        route='<str:username>/',
        view=users_views.UserDetailView.as_view(
            template_name='users/detail_users/detail_employee.html'
        ),
        name='detail_employee'
    ),

    # Update profile employee
    path(
        route='me/update/',
        view=users_views.UserUpdateProfileView.as_view(
            template_name="users/update_users/update_profile_employee.html"
        ),
        name='update_employee'
    ),

    path('soporte/', include([
        path(
            route='create_request/',
            view=views.RequestTechnicalSupport.as_view(),
            name='create_support'
        ),
    ]))
]
