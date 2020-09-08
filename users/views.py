"""Users views"""

# Django
from django.contrib.auth.models import User
from django.shortcuts import render, redirect
from django.views.generic import DetailView
from django.contrib.auth import authenticate, logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth import views as auth_views

# Libraries
from passlib.hash import pbkdf2_sha256

# Exception
from django.db.utils import IntegrityError
from django.db.models import ObjectDoesNotExist

# Models
from links.models import TblUsuario
from links.forms import UserForm


class UserDetailView(DetailView):
    """User detail view"""

    template_name = 'users/detail.html'
    slug_field = 'correo_electronico'
    slug_url_kwarg = 'correo_electronico'
    queryset = TblUsuario.objects.all()


def user_form(request):
    if request.method == 'POST':
        name = request.POST['name']
        last_name = request.POST['last_name']
        email = request.POST['email']
        password = request.POST.get('password', True)
        password_confirmation = request.POST.get('passwordRepeat', True)

        if password != password_confirmation:
            return render(request, 'dashboard/administrator/admin_users/form_user.html',
                          {'error': 'Las contraseñas no coinciden'})

        try:
            user = TblUsuario(nombre=name, apellido=last_name, correo_electronico=email, contrasena=password,
                              is_personal=True)
            user.save()
        except IntegrityError:
            return render(request, 'dashboard/administrator/admin_users/form_user.html',
                          {'error': 'El correo electronico ya esta en uso'})

        return redirect('user_form')
    return render(request, 'dashboard/administrator/admin_users/form_user.html')


def user_delete(request, id_usuario):
    user = TblUsuario.objects.get(pk=id_usuario)
    user.delete()
    return redirect('dashboard:list_users')


def user_edit(request, id_usuario):
    user = TblUsuario.objects.filter(id_usuario=id_usuario).first()
    form = UserForm(instance=user)
    return render(request, 'dashboard/administrator/admin_users/update_user.html', {'form': form, 'user': user})


def user_update(request, id_usuario):
    user = TblUsuario.objects.get(pk=id_usuario)
    form = UserForm(request.POST, instance=user)

    return render(
        request=request,
        template_name='dashboard/administrator/admin_users/update_user.html',
        context={
            'profile': user
        }
    )


def user_list(request):
    """List Users view"""
    users = TblUsuario.objects.all()
    context = {'user_list': users}
    return render(request, 'dashboard/administrator/admin_users/list_user.html', context)


def user_detail(request):
    """User detail"""
    return render(request, 'users/detail.html')


class LoginView(auth_views.LoginView):
    """Login view"""
    template_name = 'users/login.html'


def login_view(request):
    """Login view"""

    error_message = render(request, 'users/login.html', {'error': 'Correo o contraseña invalida'})

    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['password']

        try:
            user_andromeda = TblUsuario.objects.get(correo_electronico=email)
            desc_password = pbkdf2_sha256.verify(password, user_andromeda.contrasena)
            user = authenticate(request, username=email, password=password)

            if user and user_andromeda and desc_password:

                if user_andromeda.position_id == 1:
                    return redirect('dashboard:administrator')

                elif user_andromeda.position_id == 2:
                    return redirect('dashboard:auxiliary')

                elif user_andromeda.position_id == 3 or user_andromeda.position_id == 4:
                    return redirect('dashboard:employee')
                else:
                    return render(request, 'users/login.html', {'error': 'El usuario no tiene registrado ningun rol'})

            return error_message

        except ObjectDoesNotExist:
            """Error no exist data in the database"""
            return error_message

        except ValueError:
            """Value error"""
            return error_message

    return render(request, 'users/login.html')


@login_required
def logout_view(request):
    """Logout a user"""
    logout(request)
    return redirect('users:login')


def signup(request):
    """Signup view"""
    form = UserForm()

    if request.method == 'POST':
        name = request.POST['nombre']
        last_name = request.POST['apellido']
        email = request.POST['correo_electronico']
        password = request.POST.get('contrasena', True)
        password_confirmation = request.POST.get('passwordRepeat', True)
        position = request.POST['position']

        enc_password = pbkdf2_sha256.encrypt(password, rounds=12000, salt_size=32)

        if password != password_confirmation:
            return render(request, 'users/register.html', {'form': form, 'error': 'Las contraseñas no coinciden'})

        try:
            user = User.objects.create_user(
                username=email,
                password=password,
                first_name=name,
                last_name=last_name,
                email=email
            )

            user_andromeda = TblUsuario(
                nombre=name,
                apellido=last_name,
                correo_electronico=email,
                contrasena=enc_password,
                position_id=position
            )

            user_andromeda.save()
        except IntegrityError:
            return render(request, 'users/register.html',
                          {'form': form, 'error': 'El correo electronico ya esta en uso'})

        return redirect('users:login', )
    return render(request, 'users/register.html', {'form': form})
