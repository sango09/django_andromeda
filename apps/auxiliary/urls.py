from django.urls import path

from apps.auxiliary import views

urlpatterns = [
    path(
        route='',
        view=views.auxiliary_view,
        name='auxiliary'
    )
]
