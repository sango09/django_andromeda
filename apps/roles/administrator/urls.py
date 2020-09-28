"""Administrator URLs."""

from django.conf.urls import include
# Django
from django.urls import path

from apps.roles.administrator import views as administrator_views
# Local views
from apps.users import views as users_views

urlpatterns = [
    path(
        route='',
        view=administrator_views.AdministratorDashboardView.as_view(),
        name='administrator'
    ),

    # Profile Admin
    path(
        route='<str:username>/',
        view=users_views.UserDetailView.as_view(
            template_name='users/detail_users/detail_admin.html'
        ),
        name='detail_admin'
    ),

    path(
        route='me/update',
        view=users_views.UserUpdateProfileView.as_view(
            template_name='users/update_users/update_profile_admin.html'

        ),
        name="update_admin"
    ),

    path('users/', include([
        path(
            route='create_user/',
            view=users_views.RegisterView.as_view(
                template_name='dashboard/roles/administrator/admin_users/create_user.html'
            ),
            name='create_user'
        ),
        path(
            route='list_users/',
            view=users_views.UserListView.as_view(),
            name='list_users'
        ),
        path(
            route='update_user/<int:pk>/',
            view=users_views.user_update_view,
            name='update_user'
        )
    ])),

    # Inventory
    path('inventory/', include([
        path(
            route='create_inventory/',
            view=administrator_views.CreateInventoryView.as_view(
                template_name='dashboard/roles/administrator/inventory/create_inventory.html'
            ),
            name='create_inventory'
        ),
        path(
            route='inventory_list/',
            view=administrator_views.InventoryListView.as_view(
                template_name='dashboard/roles/administrator/inventory/inventory_list.html'
            ),
            name='inventory_list'
        ),
        path(
            route='inventory_update/<int:id>',
            view=administrator_views.InventoryUpdateView.as_view(
                template_name='dashboard/roles/administrator/inventory/update_inventory.html'
            ),
            name='inventory_update'
        ),

        path(
            route='inventory_delete/<int:id>',
            view=administrator_views.InventoryDeleteView.as_view(),
            name='inventory_delete'
        ),

        path(
            route='export/',
            view=administrator_views.export_inventory_view,
            name='export_inventory'
        )

    ])),

    # Implement
    path('implement/', include([
        path(
            route='create_implement/',
            view=administrator_views.CreateImplementView.as_view(
                template_name='dashboard/roles/administrator/inventory/implements/create_implement.html'
            ),
            name='create_implement'
        ),

        path(
            route='create_ficha_tecnica/',
            view=administrator_views.CreateFichaTecnicaView.as_view(
                template_name='dashboard/roles/administrator/inventory/ficha_tecnica/create_ficha_tecnica.html'
            ),
            name='create_ficha_tecnica'
        ),
    ])),

    # Support
    path('support/', include([
        path(
            route='create_support/',
            view=administrator_views.SupportCreateView.as_view(
                template_name='dashboard/roles/administrator/technical_support/create_support.html'
            ),
            name='create_support'
        ),
        path(
            route='list_support/',
            view=administrator_views.SupportListView.as_view(),
            name='list_support'
        )
    ])),

    # 
]
