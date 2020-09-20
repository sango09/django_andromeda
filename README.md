# Django_andromeda
[![CodeFactor](https://www.codefactor.io/repository/github/sango09/django_andromeda/badge?s=6ce7dfa25d4f36e0554fb6eab534600ccff09044)](https://www.codefactor.io/repository/github/sango09/django_andromeda)

Crear entorno virtual e inicializarlo

`pip3 install virtualenv`

`virtualenv nombre_entorno -p python3` 

Windows CMD

`.venv\Scripts\activate`

Ubuntu

`source nombre_entorno/bin/activate`


Instalar dependencias de pip3

`pip3 install -r requirements`

Instalar dependencias de npm

`cd front/`

`npm install`

Iniciar servidor de Django

`python3 manage.py runserver`

Utilizar base de datos con ubuntu

`sudo apt-get install python3-dev default-libmysqlclient-dev build-essential`


_Cambiar credenciales de acceso para la base de datos en setting.py_
``````
`
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'nombre_db',
        'USER': 'root',
        'PASSWORD': 'contraseña',
        'HOST': '127.0.0.1',
        'PORT': '3306',```````

**NO HACER MERGE A LA RAMA MASTER SIN AUTORIZACIÓN PREVIA**






