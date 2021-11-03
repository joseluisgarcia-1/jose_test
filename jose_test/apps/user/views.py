from django.shortcuts import render
from django.contrib.auth.models import User
from django.views.generic import CreateView
from django.contrib.auth.forms import UserCreationForm
from django.urls import reverse_lazy
from apps.user.forms import RegisterForm
from rest_framework.views import APIView
from apps.user.serializers import UserSerializer
import json
from django.http import HttpResponse
# Create your views here.

class RegistroUsuario(CreateView):
    model = User
    template_name = 'usuario/register.html'
    form_class = RegisterForm
    success_url = reverse_lazy('stores:store_listar')

class UserAPI(APIView):
    serializer = UserSerializer

    def get(self, request, format=None):
        lista = User.objects.all()
        response = self.serializer(lista, many=True)
        return HttpResponse(json.dumps(response.data), content_type='application/json')