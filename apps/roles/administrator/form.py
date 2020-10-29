"""Forms Administrator"""

# Django
from django import forms
from django.utils.translation import ugettext_lazy as _
from parler.models import TranslatableModel, TranslatedFields

# Models
from apps.links.models import (
    TblInventario,
    TblTipoImplemento,
    TblFichaTecnica,
    TblSoporteTecnico,

)


class TimeInput(forms.TimeInput):
    input_type = 'time'


class DateInput(forms.DateInput):
    input_type = 'date'


class InventoryForm(forms.ModelForm):
    """Form the inventory implement general"""
    fecha_compra = forms.DateField(widget=DateInput)

    class Meta:
        model = TblInventario
        fields = (
            'tipo_implemento', 'numero_serie', 'precio_compra', 'fecha_compra', 'estado_implemento', 'usuario_asignado'
        )
        labels = {
            'tipo_implemento': _('Tipo de implemento'),
            'numero_serie': _('Numero de serie'),
            'fecha_compra': _('Fecha de compra'),
            'precio_compra': _('Precio de compra'),
            'estado_implemento': _('Estado del implemento'),
            'usuario_asignado': _('Usuario asignado'),
        }

    def __init__(self, *args, **kwargs):
        super(InventoryForm, self).__init__(*args, **kwargs)
        self.fields['usuario_asignado'].empty_label = 'Ninguno'
        self.fields['tipo_implemento'].empty_label = 'Implemento'
        self.fields['estado_implemento'].empty_label = 'Estado en el inventario'


class InventoryUpdateForm(forms.ModelForm):
    class Meta:
        model = TblInventario
        fields = (
            'tipo_implemento', 'numero_serie', 'precio_compra', 'estado_implemento', 'usuario_asignado'
        )
        labels = {
            'tipo_implemento': _('Tipo de implemento'),
            'numero_serie': _('Numero de serie'),
            'precio_compra': _('Precio de compra'),
            'estado_implemento': _('Estado del implemento'),
            'usuario_asignado': _('Usuario asignado'),
        }

    def __init__(self, *args, **kwargs):
        super(InventoryUpdateForm, self).__init__(*args, **kwargs)
        self.fields['usuario_asignado'].empty_label = 'Ninguno'
        self.fields['tipo_implemento'].empty_label = 'Implemento'
        self.fields['estado_implemento'].empty_label = 'Estado en el inventario'


class ImplementForm(forms.ModelForm):
    """Implement form"""

    class Meta:
        model = TblTipoImplemento
        fields = 'tipo_implemento', 'ficha_tecnica'
        labels = {
            'tipo_implemento': _('Tipo de equipo tecnologico'),
            'ficha_tecnica': _('Ficha tecnica')
        }

    def __init__(self, *args, **kwargs):
        super(ImplementForm, self).__init__(*args, **kwargs)
        self.fields['ficha_tecnica'].empty_label = 'Seleccione una ficha tecnica'


class FichaTecnicaForm(forms.ModelForm):
    """Form to ficha tecnica"""

    class Meta:
        model = TblFichaTecnica
        fields = ('marca_implemento', 'modelo_implemento', 'detalles', 'sistema_operativo', 'image')
        labels = {
            'marca_implemento': _('Marca del equipo'),
            'modelo_implemento': _('Modelo'),
            'detalles': _('Especificaciones tecnicas'),
            'sistema_operativo': _('Sistema Operativo'),
            'image': _('Imagen de referencia')
        }

    def __init__(self, *args, **kwargs):
        super(FichaTecnicaForm, self).__init__(*args, **kwargs)
        self.fields['sistema_operativo'].empty_label = 'Sistema operativo del equipo'


class SupportForm(forms.ModelForm):
    fecha_solicitud = forms.DateField(widget=DateInput)
    hora_solicitud = forms.TimeField(widget=TimeInput)

    class Meta:
        model = TblSoporteTecnico
        fields = (
            'lugar_soporte', 'descripcion_problema', 'fecha_solicitud', 'hora_solicitud'
        )
        labels = {
            'lugar_soporte': _('Lugar del soporte'),
            'descripision_problema': _('Descripcion problema'),
            'fecha_solicitud': _('Fecha solicitud'),
            'hora_solicitud': _('Hora solicitud')
        }
