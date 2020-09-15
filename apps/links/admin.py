"""Admin links"""

# Django
from django.contrib import admin

# Models
from apps.links.models import TblPerfil
from django.contrib.auth.models import User
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin


@admin.register(TblPerfil)
class ProfileAdmin(admin.ModelAdmin):
    """Profile admin"""
    list_display = ('pk', 'user', 'picture', 'creado', 'posicion')
    list_display_links = ('user', 'pk')
    list_editable = ('picture', 'posicion')
    search_fields = (
        'user__email',
        'user__first_name',
        'user__last_name'
    )

    list_filter = (
        'creado',
        'modificado',
        'user__is_active',
        'user__is_staff',
    )

    fieldsets = (
        ('profile', {
            'fields': ('user', 'picture', 'posicion')
        }),
        ('Metadata', {
            'fields': ('creado', 'modificado')
        }),
    )

    readonly_fields = ('creado', 'modificado')


class ProfileInLine(admin.StackedInline):
    """Profile in-line admin for users"""
    model = TblPerfil
    can_delete = False
    verbose_name_plural = 'profiles'


class UserAdmin(BaseUserAdmin):
    """Add profile admin to base user admin"""
    inlines = (ProfileInLine,)
    list_display = (
        'username',
        'email',
        'first_name',
        'last_name',
        'is_active',
        'is_staff'
    )


admin.site.unregister(User)
admin.site.register(User, UserAdmin)
