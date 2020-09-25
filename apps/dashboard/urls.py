"""Dashboard URLs."""

from django.conf.urls import include
# Django
from django.urls import path

urlpatterns = [
    path('administrator/', include('apps.roles.administrator.urls')),
    path('auxiliary/', include('apps.roles.auxiliary.urls')),
    path('employee/', include('apps.roles.employee.urls'))
]
