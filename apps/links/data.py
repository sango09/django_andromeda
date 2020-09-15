users = [
    {
        'id_usuario': '1',
        'nombre': 'Julian',
        'apellido': 'Ramirez',
        'correo_electronico': 'admin@cgb.edu.co',
        'contrasena': 'cgb123456',
        'is_admin': True,

    },
    {
        'id_usuario': '2',
        'nombre': 'Santiago',
        'apellido': 'Gomez',
        'correo_electronico': 'santiago@cgb.edu.co',
        'contrasena': 'cgb123456',
        'is_auxiliar': True,
    },
    {
        'id_usuario': '3',
        'nombre': 'Robert',
        'apellido': 'Salazar',
        'correo_electronico': 'robert@cgb.edu.co',
        'contrasena': 'cgb123456',
        'is_personal': True,
    },
    {
        'id_usuario': '4',
        'nombre': 'Maria',
        'apellido': 'Romero Cruz',
        'correo_electronico': 'maria@cgb.edu.co',
        'contrasena': 'cgb123456',
        'is_personal': True,
    },
    {
        'id_usuario': '5',
        'nombre': 'Juan Pablo',
        'apellido': 'Ardila Otero',
        'correo_electronico': 'vargas@cgb.edu.co',
        'contrasena': 'cgb123456',
        'is_auxiliar': True,
    }
]

from apps.links.models import TblUsuario

for user in users:
    obj = TblUsuario(**user)
    obj.save()
    print(obj.pk, ':', obj.correo_electronico)
