from django.contrib import admin
from apps.products.views import index_products, ProductList, ProductCreate, ProductUpdate, ProductDelete
from django.urls import path, re_path, include

urlpatterns = [
    path('', index_products, name='inicio'),
    path('products/listar', ProductList.as_view(), name='products_listar'),
    path('products/nueva', ProductCreate.as_view(), name='products_crear'),
    path('products/editar/<pk>/', ProductUpdate.as_view(), name='products_editar'),
    path('products/eliminar/<pk>/', ProductDelete.as_view(), name='products_eliminar'),
]
