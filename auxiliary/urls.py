from django.urls import path
from django.conf.urls import include

from auxiliary import views

urlpatterns = [
    path(
        route='',
        view=views.auxiliary_view,
        name='auxiliary'
    )
]
