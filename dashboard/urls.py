"""Dashboard URLs."""

# Django
from django.urls import path
from django.conf.urls import include

urlpatterns = [
    path('administrator/', include('administrator.urls')),
    path('auxiliary/', include('auxiliary.urls')),
    path('employee/', include('employee.urls'))
]
