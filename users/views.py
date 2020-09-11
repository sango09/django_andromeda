"""Users views"""

# Django
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth.models import User
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth import authenticate, login
from django.contrib.auth import views as auth_views
from django.urls import reverse_lazy, reverse
from django.views.generic import (
    DetailView,
    ListView,
    DeleteView,
    UpdateView,
)

# Forms
from .form import UserForm, PositionForm, ProfileForm

# Exception
from django.db.utils import IntegrityError
from django.db.models import ObjectDoesNotExist

# Models
from django.contrib.auth.models import User
from links.models import TblPerfil


class UserDetailView(LoginRequiredMixin, DetailView):
    """User detail view"""
    template_name = 'users/detail.html'
    slug_field = 'username'
    slug_url_kwarg = 'username'
    queryset = User.objects.all()


class UserDeleteView(DeleteView):
    """User delete view"""
    template_name = 'dashboard/administrator/admin_users/delete_user.html'

    def get_object(self):
        id_ = self.kwargs.get('id')
        return get_object_or_404(User, id=id_)

    def get_success_url(self):
        return reverse_lazy('dashboard:list_users')


class UserListView(LoginRequiredMixin, ListView):
    """Return all users registers"""
    template_name = 'dashboard/administrator/admin_users/list_user.html'
    model = User
    paginate_by = 5
    context_object_name = 'user_list'


class LogoutView(LoginRequiredMixin, auth_views.LogoutView):
    """Logout view."""
    template_name = 'users/login.html'


class UserUpdateView(LoginRequiredMixin, UpdateView):
    """User update view"""
    template_name = 'users/update_profile.html'
    form_class = ProfileForm
    queryset = User.objects.all()

    def get_object(self):
        id_ = self.kwargs.get('id')
        return get_object_or_404(User, id=id_)

    def get_success_url(self):
        """Return to user's profile"""
        username = self.object.username
        return reverse('users:detail', kwargs={'username': username})


class UserUpdateProfileView(LoginRequiredMixin, UpdateView):
    """User update profile view"""
    template_name = 'users/update_image.html'
    form_class = ProfileForm
    queryset = TblPerfil.objects.all()

    def get_object(self):
        id_ = self.kwargs.get('id')
        return get_object_or_404(User, id=id_)

    def get_success_url(self):
        """Return to user's profile"""
        username = self.object.username
        return reverse('users:detail', kwargs={'username': username})


def login_view(request):
    """Login view"""
    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['password']
        user_data = User.objects.get(username=email)

        user = authenticate(request, username=email, password=password)
        position = TblPerfil.objects.get(user_id=user_data.pk)
        position_id = position.posicion_id

        if user:
            if position_id == 1:
                print(position_id)
                login(request, user)
                redirect_authenticate_user = True
                return redirect('dashboard:administrator')

            elif position_id == 2:
                print(position_id)
                login(request, user)
                return redirect('dashboard:auxiliary')

            elif position_id == 3 or position == 4:
                print(position_id)
                login(request, user)
                return redirect('dashboard:employee')
            else:
                return render(request, 'users/login.html', {'error': 'El usuario no tiene registrado ningun rol'})
        else:
            return redirect(request, 'users/login.html', {'error': 'Correo o contraseña invalido'})

    return render(request, 'users/login.html')


def signup(request):
    """Signup view"""
    form = UserForm()
    position_form = PositionForm()

    if request.method == 'POST':
        name = request.POST['first_name']
        last_name = request.POST['last_name']
        email = request.POST['username']
        password = request.POST.get('password', True)
        password_confirmation = request.POST.get('passwordRepeat', True)
        position = request.POST['posicion']

        if password != password_confirmation:
            return render(request, 'users/register.html',
                          {'form': form,
                           'position_form': position_form,
                           'error': 'Las contraseñas no coinciden'
                           })

        try:
            user = User.objects.create_user(
                username=email,
                first_name=name,
                last_name=last_name,
                password=password,
                email=email,
            )
            profile = TblPerfil(user=user, posicion_id=position)
            profile.save()

        except IntegrityError:
            return render(request, 'users/register.html',
                          {'form': form,
                           'position_form': position_form,
                           'error': 'El correo electronico ya esta en uso'
                           })

        return redirect('users:login', )
    return render(request, 'users/register.html', {'form': form, 'position_form': position_form})
