"""Dashboard URLs."""

from django.conf.urls import include
# Django
from django.urls import path

urlpatterns = [
    path('administrator/', include('apps.dashboard.roles.administrator.urls')),
    path('auxiliary/', include('apps.dashboard.roles.auxiliary.urls')),
    path('employee/', include('apps.dashboard.roles.employee.urls'))
]
