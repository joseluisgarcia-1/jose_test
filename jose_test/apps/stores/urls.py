from django.contrib.auth.decorators import login_required
from apps.stores.views import listadousuarios, index, store_view, store_list, store_edit, store_delete, StoreList, StoreCreate, StoreUpdate, StoreDelete
from django.urls import path, re_path, include
app_name = 'stores'
urlpatterns = [
    path('',index,name='index'),
    path('nuevo/',login_required(StoreCreate.as_view()),name='store_crear'),
    path('listar/',login_required(StoreList.as_view()),name='store_listar'),
    path('editar/<pk>/',login_required(StoreUpdate.as_view()),name='store_editar'),
    path('eliminar/<pk>/',login_required(StoreDelete.as_view()),name='store_eliminar'),
    path('listado/', listadousuarios,name='listado'),
]
