# from django.shortcuts import render
# from apps.users.form import (
#     UserForm,
#     PositionForm,
# )
#
# # Models
# from django.contrib.auth.models import User
# from apps.links.models import TblPerfil
#
# # Exception
# from django.db.utils import IntegrityError
#
#
# def create_user(request):
#     form = UserForm()
#     position_form = PositionForm()
#
#     if request.method == 'POST':
#         name = request.POST['first_name']
#         last_name = request.POST['last_name']
#         email = request.POST['username']
#         password = request.POST.get('password', True)
#         password_confirmation = request.POST.get('passwordRepeat', True)
#         position = request.POST['posicion']
#
#         if password != password_confirmation:
#             return render(request, 'users/register.html',
#                           {'form': form,
#                            'position_form': position_form,
#                            'error': 'Las contraseñas no coinciden'
#                            })
#
#         try:
#             user = User.objects.create_user(
#                 username=email,
#                 first_name=name,
#                 last_name=last_name,
#                 password=password,
#                 email=email,
#             )
#             profile = TblPerfil(user=user, posicion_id=position)
#             profile.save()
#
#         except IntegrityError:
#             return render(request, 'users/register.html',
#                           {'form': form,
#                            'position_form': position_form,
#                            'error': 'El correo electronico ya esta en uso'
#                            })
#
#         return redirect('users:login', )
#     return render(request, 'users/register.html', {'form': form, 'position_form': position_form})
