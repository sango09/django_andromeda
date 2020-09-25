"""Auxiliary URLs"""

# Django
from django.urls import path, include

from apps.roles.administrator import views as administrator_view
# Local views
from apps.roles.auxiliary import views
from apps.users import views as users_views

urlpatterns = [
    path(
        route='',
        view=views.AuxiliaryDashboardView.as_view(),
        name='auxiliary'
    ),

    # Auxiliary profile
    path(
        route='<str:username>/',
        view=users_views.UserDetailView.as_view(
            template_name='users/detail_users/detail_auxiliary.html'
        ),
        name='detail_auxiliary'
    ),

    # Update user
    path(
        route='me/update/',
        view=users_views.UserUpdateProfileView.as_view(
            template_name="users/update_users/update_profile_auxiliary.html"
        ),
        name='update_auxiliary'
    ),

    # path('soporte/', include([
    #     path(
    #         route='create_request/',
    #         view=views.RequestTechnicalSupport.as_view(),
    #         name='create_support'
    #     ),
    # ]))

    # Inventory General
    path('inventory/', include([
        path(
            route='inventory_list',
            view=administrator_view.InventoryListView.as_view(
                template_name='dashboard/roles/auxiliary/inventory/inventory_list.html'
            ),
            name='inventory_auxiliary'
        ),
        path(
            route='create_inventory',
            view=administrator_view.CreateInventoryView.as_view(
                template_name='dashboard/roles/auxiliary/inventory/create_inventory.html'
            ),
            name='create_inventory_auxiliary'
        ),

        path(
            route='update_inventory/<int:id>',
            view=administrator_view.InventoryUpdateView.as_view(
                template_name='dashboard/roles/auxiliary/inventory/update_inventory.html'
            ),
            name='inventory_update_auxiliary'
        ),
    ])),
]
