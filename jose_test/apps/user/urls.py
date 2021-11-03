from django.urls import path, re_path, include
from apps.user.views import RegistroUsuario, UserAPI

urlpatterns = [
    path('registrar/', RegistroUsuario.as_view(), name='registrar'),   
    path('api/', UserAPI.as_view(), name="api"),
]