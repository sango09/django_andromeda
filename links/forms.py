from django import forms
from .models import TblUsuario


class UserForm(forms.ModelForm):
    class Meta:
        model = TblUsuario
        fields = {'nombre', 'apellido', 'correo_electronico', 'contrasena'}
        labels = {
            'nombre': 'nombre',
            'apellido': 'apellido',
            'correo_electronico': 'correo_electronico',
            'contrasena': 'contrasena'
        }
