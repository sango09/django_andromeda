from django.urls import path

from apps.employee import views

urlpatterns = [
    path(
        route='',
        view=views.employee_view,
        name='employee'
    )
]
