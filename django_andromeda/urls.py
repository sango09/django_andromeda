"""Django andromeda URls"""

# Django
from django.contrib import admin
from django.urls import path
from django.conf.urls import include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('links.urls')),
    path('i18n/', include('django.conf.urls.i18n')),
]
