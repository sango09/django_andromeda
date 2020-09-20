"""Users views"""

# Django
from django.contrib import messages
from django.contrib.auth import authenticate, login
from django.contrib.auth.mixins import LoginRequiredMixin
from django.shortcuts import render, redirect, get_object_or_404
from django.urls import reverse_lazy
from django.contrib.messages.views import SuccessMessageMixin
from django.views.generic import (
    ListView,
    DeleteView,
    TemplateView,
    DetailView,
)

# Models
from django.contrib.auth.models import User
from apps.links.models import TblPerfil

# Exception
from django.db.utils import IntegrityError
from django.http import HttpResponseRedirect
from django.db.models import ObjectDoesNotExist

# Forms
from .form import (
    UserForm,
    PositionForm,
    ProfileForm,
    ImageForm,
)


class UserDeleteView(SuccessMessageMixin, DeleteView):
    """User delete view"""
    template_name = 'dashboard/roles/administrator/admin_users/delete_user.html'
    success_message = "fue eliminado con exito"

    def get_object(self):
        id_ = self.kwargs.get('id')
        return get_object_or_404(User, id=id_)

    def get_success_url(self):
        return reverse_lazy('dashboard:list_users')

    def get_success_message(self, cleaned_data):
        return self.success_message % dict(
            cleaned_data,
            calculated_field=self.object.calculated_field,
        )


class UserListView(LoginRequiredMixin, ListView):
    """Return all users registers"""
    template_name = 'dashboard/roles/administrator/admin_users/list_user.html'
    model = User
    paginate_by = 5
    context_object_name = 'user_list'


class UserDetailView(LoginRequiredMixin, DetailView):
    """Employee detail view"""
    slug_field = 'username'
    slug_url_kwarg = 'username'
    queryset = User.objects.all()


class UserUpdateProfileView(LoginRequiredMixin, TemplateView):
    """User update view"""
    profile_form = ProfileForm
    image_form = ImageForm

    def post(self, request):
        post_data = request.POST or None
        file_data = request.FILES or None

        profile_form = ProfileForm(post_data, instance=request.user)
        image_form = ImageForm(post_data, file_data, instance=request.user.tblperfil)

        if profile_form.is_valid() and image_form.is_valid():
            profile_form.save()
            image_form.save()
            messages.success(request, 'Tu perfil fue actualizado con exito!')
            return HttpResponseRedirect(reverse_lazy('dashboard:detail_employee', args=[request.user.username]))

        context = self.get_context_data(
            profile_form=profile_form,
            image_form=image_form
        )

        return self.render_to_response(context)

    def get(self, request, *args, **kwargs):
        return self.post(request, *args, **kwargs)


def user_update_view(request, pk):
    user = User.objects.get(id=pk)
    user_form = ProfileForm(instance=user)
    position_form = PositionForm(instance=user.tblperfil)

    if request.method == 'POST':
        user_form = ProfileForm(request.POST, instance=user)
        position_form = PositionForm(request.POST, instance=user.tblperfil)

        if user_form.is_valid() and position_form.is_valid():
            user_form.save()
            position_form.save()
            messages.success(request, 'Usuario actualizado con exito!')
            return redirect('dashboard:list_users')

    context = {'user_form': user_form, 'position_form': position_form}

    return render(request, 'dashboard/roles/administrator/admin_users/update_user.html', context)


def login_view(request):
    """Login view"""
    if request.method == 'POST':
        post_data = request.POST or None

        email = post_data['email']
        password = post_data['password']

        try:
            user_data = User.objects.get(username=email)
            user = authenticate(request, username=email, password=password)
            position = TblPerfil.objects.get(user_id=user_data.pk)
            position_id = position.posicion_id

            if user:
                if position_id == 1:
                    login(request, user)
                    return redirect('dashboard:administrator')

                elif position_id == 2:
                    login(request, user)
                    return redirect('dashboard:auxiliary')

                elif position_id == 3 or position_id == 4:
                    login(request, user)
                    return redirect('dashboard:employee')

                return render(request, 'users/login.html', {'error': 'El usuario no tiene registrado ningun rol'})

            else:
                return render(request, 'users/login.html', {'error': 'Correo o contraseña invalido'})

        except ObjectDoesNotExist:
            return render(request, 'users/login.html', {'error': 'Usuario invalido'})

    return render(request, 'users/login.html')


def signup(request):
    """Signup view """
    user_form = UserForm()
    position_form = PositionForm()

    context = {
        'form': user_form,
        'position_form': position_form
    }

    if request.method == 'POST':
        post_data = request.POST or None

        name = post_data['first_name']
        last_name = post_data['last_name']
        email = post_data['username']
        password = post_data.get('password1', True)
        password_confirmation = post_data.get('password2', True)
        position = post_data['posicion']

        if password != password_confirmation:
            return render(request, 'users/register.html', context,
                          {'error': 'Las contraseñas no coinciden'})

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
            messages.success(request, 'Usuario registrado con exito!')

        except IntegrityError:
            return render(request, 'users/register.html', context,
                          {'error': 'El correo electronico ya esta en uso'})

        return redirect('users:login', )
    return render(request, 'users/register.html', context)
