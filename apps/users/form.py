from django import forms
from django.contrib.auth.models import User
from apps.links.models import TblPerfil


class UserForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'password')
        labels = {
            'first_name': 'Nombres',
            'last_name': 'Apellidos',
            'username': 'Correo Electronico',
            'password': 'Contraseña',
        }


class PositionForm(forms.ModelForm):
    class Meta:
        model = TblPerfil
        fields = ('posicion',)

    def __init__(self, *args, **kwargs):
        super(PositionForm, self).__init__(*args, **kwargs)
        self.fields['posicion'].empty_label = 'Area laboral'


class ProfileForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name')
        labels = {
            'first_name': 'Nombres',
            'last_name': 'Apellidos',
            'username': 'Correo Electronico',
        }


class ImageForm(forms.ModelForm):
    class Meta:
        model = TblPerfil
        fields = ('picture',)
        labels = {
            'picture': 'Imagen'
        }
