# Django
from django.urls import path

# Local views
from users import views as users_views
from dashboard import views as dashboard_views
from links import views as index_views

urlpatterns = [
    path('', index_views.index_views, name='index'),
    path('users/login/', users_views.login_view, name='login'),
    path('users/logout/', users_views.logout_view, name='logout'),
    path('users/signup/', users_views.signup, name='signup'),
    path('dashboard/administrator/', dashboard_views.admin_views, name='administrator'),
    path('dashboard/administrator/users', users_views.user_list, name='list_users'),
    path('dashboard/administrator/users/create_user', users_views.user_form, name='form_user'),
    path('dashboard/administrator/users/update_user/<int:id_usuario>/', users_views.user_edit, name='edit_user'),
    path('dashboard/administrator/users/update_user/<int:id_usuario>/', users_views.user_update, name='update_user'),
    path('dashboard/administrator/users/delete_user/<int:id_usuario>/', users_views.user_delete, name='delete_user'),


]
