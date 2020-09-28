"""Employee URLs"""

# Django
from django.urls import path, include

from apps.roles.administrator import views as administrator_views
# Local views
from apps.roles.employee import views
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

    # # Technical support
    path('soporte/', include([
        path(
            route='create_request/',
            view=administrator_views.SupportCreateView.as_view(
                template_name='dashboard/roles/employee/technical_support/create_support.html'
            ),
            name='create_support_employee'
        ),
    ]))

]
