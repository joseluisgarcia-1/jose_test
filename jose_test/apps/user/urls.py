from django.urls import path, re_path, include
from apps.user.views import RegistroUsuario, UserAPI
app_name = 'user'
urlpatterns = [
    path('register/', RegistroUsuario.as_view(), name='register'),   
    path('api/', UserAPI.as_view(), name="api"),
]