from datetime import date

users = [
    {
        'id_usuario': '1',
        'nombre': 'Juan Pablo',
        'apellido': 'Ardila',
        'correo_electronico': 'juan@cgb.edu.co',
        'contrasena': '1234567',
        'is_admin': True,

    },
    {
        'id_usuario': '2',
        'nombre': 'Santiago',
        'apellido': 'Gomez',
        'correo_electronico': 'santiago@cgb.edu.co',
        'contrasena': '1234567',
        'is_admin': True,
    },
    {
        'id_usuario': '3',
        'nombre': 'Sebastian',
        'apellido': 'Ordoñez',
        'correo_electronico': 'sebastian@cgb.edu.co',
        'contrasena': '1234567',
        'is_personal': True,
    },
    {
        'id_usuario': '4',
        'nombre': 'Santiago',
        'apellido': 'Vargas',
        'correo_electronico': 'vargas@cgb.edu.co',
        'contrasena': '1234567',
        'is_auxiliar': True,
    }
]

from links.models import TblUsuario

for user in users:
    obj = TblUsuario(**user)
    obj.save()
    print(obj.pk, ':', obj.correo_electronico)
