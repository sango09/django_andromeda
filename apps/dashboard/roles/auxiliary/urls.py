from django.urls import path, include

from apps.auxiliary import views

urlpatterns = [
    path(
        route='',
        view=views.AuxiliaryDashboardView.as_view(),
        name='auxiliary'
    ),
    path(
        route='algo/<str:username>/',
        view=views.AuxiliaryDashboardView.as_view(),
        name='detail_auxiliary'
    ),

    # path('soporte/', include([
    #     path(
    #         route='create_request/',
    #         view=views.RequestTechnicalSupport.as_view(),
    #         name='create_support'
    #     ),
    # ]))
]
