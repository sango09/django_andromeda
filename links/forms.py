from django import forms
from .models import TblUsuario


class UserForm(forms.ModelForm):
    class Meta:
        model = TblUsuario
        fields = {'nombre', 'apellido', 'correo_electronico', 'contrasena', 'position'}
        labels = {
            'nombre': 'Nombres',
            'apellido': 'Apellidos',
            'correo_electronico': 'Correo Electronico',
            'contrasena': 'Contraseña',
            'position': 'Area laboral'

        }

    def __init__(self, *args, **kwargs):
        super(UserForm, self).__init__(*args, **kwargs)
        self.fields['position'].empty_label = 'Selecciona tu area'