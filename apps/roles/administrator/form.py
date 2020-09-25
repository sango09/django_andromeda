"""Forms Administrator"""

# Django
from django import forms

# Models
from apps.links.models import (
    TblInventario,
    TblTipoImplemento,
    TblFichaTecnica,

)


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
            'tipo_implemento': 'Tipo de implemento',
            'numero_serie': 'Numero de serie',
            'fecha_compra': 'Fecha de compra',
            'precio_compra': 'Precio de compra',
            'estado_implemento': 'Estado del implemento',
            'usuario_asignado': 'Usuario asignado',
        }

    def __init__(self, *args, **kwargs):
        super(InventoryForm, self).__init__(*args, **kwargs)
        self.fields['usuario_asignado'].empty_label = 'Ninguno'
        self.fields['tipo_implemento'].empty_label = 'Implemento'
        self.fields['estado_implemento'].empty_label = 'Estado en el inventario'


class ImplementForm(forms.ModelForm):
    """Implement form"""

    class Meta:
        model = TblTipoImplemento
        fields = 'tipo_implemento', 'ficha_tecnica'
        labels = {
            'tipo_implemento': 'Tipo de equipo tecnologico',
            'ficha_tecnica': 'Ficha tecnica'
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
            'marca_implemento': 'Marca del equipo',
            'modelo_implemento': 'Modelo',
            'detalles': 'Especificaciones tecnicas',
            'sistema_operativo': 'Sistema Operativo',
            'image': 'Imagen de referencia'
        }

    def __init__(self, *args, **kwargs):
        super(FichaTecnicaForm, self).__init__(*args, **kwargs)
        self.fields['sistema_operativo'].empty_label = 'Sistema operativo del equipo'
