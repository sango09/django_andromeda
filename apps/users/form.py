"""Forms users"""

# Django
from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.utils.translation import ugettext_lazy as _
from parler.models import TranslatableModel, TranslatedFields

# Models
from apps.links.models import TblPerfil


class UserForm(UserCreationForm):
    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'password1', 'password2')
        labels = {
            'username': 'Email',
            'password': 'Contraseña',
            'password2': 'Confirmar contraseña'
        }


class PositionForm(forms.ModelForm):
    class Meta:
        model = TblPerfil
        fields = ('posicion',)
        labels = {
            'posicion': 'Rol',
        }

    def __init__(self, *args, **kwargs):
        super(PositionForm, self).__init__(*args, **kwargs)
        self.fields['posicion'].empty_label = 'Area laboral'


class ProfileForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name')
        labels = {
            'first_name': _('Nombres'),
            'last_name': _('Apellidos'),
            'username': _('Correo Electronico'),
        }


class ImageForm(forms.ModelForm):
    class Meta:
        model = TblPerfil
        fields = ('picture',)
        labels = {
            'picture': _('Imagen')
        }
