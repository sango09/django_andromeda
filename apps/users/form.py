"""Forms users"""

# Django
from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

# Models
from apps.links.models import TblPerfil


class UserForm(UserCreationForm):
    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'password1', 'password2')
        labels = {
            'first_name': 'Nombres',
            'last_name': 'Apellidos',
            'username': 'Correo Electronico',
            'password': 'Contraseña',
            'password2': 'Confirmar contraseña'
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
