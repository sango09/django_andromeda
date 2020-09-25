"""Administrator admin django"""

# Django
from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from django.contrib.auth.models import User

# Models
from apps.links.models import (
    TblInventario,
    TblFichaTecnica,
    TblTipoImplemento,
)


@admin.register(TblInventario)
class InventoryAdmin(admin.ModelAdmin):
    list_display = ('pk', 'tipo_implemento', 'numero_serie', 'fecha_compra')
    list_display_links = ('tipo_implemento', 'pk')


@admin.register(TblTipoImplemento)
class TypeImplementAdmin(admin.ModelAdmin):
    list_display = ('pk', 'tipo_implemento', 'ficha_tecnica_id')


@admin.register(TblFichaTecnica)
class FichaTecnicaAdmin(admin.ModelAdmin):
    list_display = ('pk', 'marca_implemento', 'modelo_implemento', 'detalles', 'sistema_operativo', 'image')

