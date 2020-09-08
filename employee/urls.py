from django.urls import path
from django.conf.urls import include

from employee import views

urlpatterns = [
    path(
        route='',
        view=views.employee_view,
        name='employee'
    )
]
