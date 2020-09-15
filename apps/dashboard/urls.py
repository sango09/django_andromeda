"""Dashboard URLs."""

# Django
from django.urls import path
from django.conf.urls import include

urlpatterns = [
    path('administrator/', include('apps.administrator.urls')),
    path('auxiliary/', include('apps.auxiliary.urls')),
    path('employee/', include('apps.employee.urls'))
]
