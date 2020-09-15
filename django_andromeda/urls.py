"""Django andromeda URls"""

# Django
from django.contrib import admin
from django.conf import settings
from django.urls import path
from django.conf.urls import include
from django.conf.urls.static import static


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('apps.links.urls')),
    path('i18n/', include('django.conf.urls.i18n')),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
