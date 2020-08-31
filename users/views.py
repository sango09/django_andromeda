"""Users views"""

# Django
from django.contrib.auth.models import User
from django.shortcuts import render, redirect
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required

# Exception
from django.db.utils import IntegrityError

# Models
from links.models import TblUsuario
from links.forms import UserForm


def user_form(request):
    if request.method == 'POST':
        name = request.POST['name']
        last_name = request.POST['last_name']
        email = request.POST['email']
        password = request.POST.get('password', True)
        password_confirmation = request.POST.get('passwordRepeat', True)

        if password != password_confirmation:
            return render(request, 'dashboard/administrator/form_user.html', {'error': 'Las contraseñas no coinciden'})

        try:
            user = TblUsuario(nombre=name, apellido=last_name, correo_electronico=email, contrasena=password,
                              is_personal=True)
            user.save()
        except IntegrityError:
            return render(request, 'dashboard/administrator/form_user.html',
                          {'error': 'El correo electronico ya esta en uso'})

        return redirect('user_form')
    return render(request, 'dashboard/administrator/form_user.html')


def user_delete(request, id_usuario):
    user = TblUsuario.objects.get(pk=id_usuario)
    user.delete()
    return redirect('list_users')


def user_edit(request, id_usuario):
    user = TblUsuario.objects.filter(id_usuario=id_usuario).first()
    form = UserForm(instance=user)
    return render(request, 'dashboard/administrator/update_user.html', {'form': form, 'user': user})


def user_update(request, id_usuario):
    user = TblUsuario.objects.get(pk=id_usuario)
    form = UserForm(request.POST, instance=user)

    if form.is_valid():
        form.save()

    users = TblUsuario.objects.all()
    context = {'user_list': users}
    return render(request, 'dashboard/administrator/list_user.html', context)


def user_list(request):
    """List Users view"""
    users = TblUsuario.objects.all()
    context = {'user_list': users}
    return render(request, 'dashboard/administrator/list_user.html', context)


def login_view(request):
    """Login view"""
    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['password']
        user = authenticate(request, username=email, password=password)
        if user:
            login(request, user)
            return redirect('administrator')

        else:
            return render(request, 'users/login.html', {'error': 'Correo o contraseña invalida'})

    return render(request, 'users/login.html')


@login_required
def logout_view(request):
    """Logout a user"""
    logout(request)
    return redirect('login')


def signup(request):
    """Signup view"""
    if request.method == 'POST':
        name = request.POST['name']
        last_name = request.POST['last_name']
        email = request.POST['email']
        password = request.POST.get('password', True)
        password_confirmation = request.POST.get('passwordRepeat', True)

        if password != password_confirmation:
            return render(request, 'users/register.html', {'error': 'Las contraseñas no coinciden'})

        try:
            user = TblUsuario(nombre=name, apellido=last_name, correo_electronico=email, contrasena=password,
                              is_personal=True)
            data = User.objects.create_user(username=email, password=password, first_name=name, last_name=last_name)
            user.save()
        except IntegrityError:
            return render(request, 'users/register.html', {'error': 'El correo electronico ya esta en uso'})

        return redirect('login')
    return render(request, 'users/register.html')
