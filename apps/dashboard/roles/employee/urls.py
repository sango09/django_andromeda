"""Employee URLs"""

# Django
from django.urls import path, include

# Local views
from apps.employee import views

urlpatterns = [
    path(
        route='',
        view=views.EmployeeDashboardView.as_view(),
        name='employee'
    ),
    path(
        route='<str:username>/',
        view=views.EmployeeDetailView.as_view(),
        name='detail_employee'
    ),

    path('soporte/', include([
        path(
            route='create_request/',
            view=views.RequestTechnicalSupport.as_view(),
            name='create_support'
        ),
    ]))
]
