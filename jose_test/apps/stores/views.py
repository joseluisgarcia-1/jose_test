from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.models import User
from apps.stores.forms import StoreForm
from django.core import serializers
from apps.stores.models import Store
from django.urls import reverse_lazy
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
# Create your views here.

def listadousuarios(request):
	lista = serializers.serialize('json', User.objects.all(), fields=['username', 'first_name'])
	return HttpResponse(lista, content_type='application/json')

def index(request):
	return render(request, 'stores/index.html')

def store_view(request):
	if request.method == 'POST':
		form = StoreForm(request.POST)
		if form.is_valid():
			form.save()
		return redirect('stores:store_listar')
	else:
		form = StoreForm()
	return render(request, 'stores/store_form.html', {'form':form})

def store_list(request):
	stores = Store.objects.all()
	contexto = {'stores':stores, 'form':form}
	return render(request, 'stores/store_list.html', contexto)

def store_edit(request, id_store):
	stores = Store.objects.get(id=id_store)
	if request.method == 'GET':
		form = StoreForm(instance=stores)
	else:
		form = StoreForm(request.POST, instance=stores)
		if form.is_valid():
			form.save()
		return redirect('stores:store_listar')
	return render(request, 'stores/store_form.html', {'form':form})

def store_delete(request, id_store):
	stores = Store.objects.get(id=id_store)
	if request.method == 'POST':
		stores.delete()
		return redirect('stores:store_listar')
	return render(request, 'stores/store_delete.html', {'stores':stores})

class StoreList(ListView):
	model = Store
	template_name = 'stores/store_list.html'
	paginate_by = 2

class StoreCreate(CreateView):
	model = Store
	form_class = StoreForm
	template_name = 'stores/store_form.html'
	success_url = reverse_lazy('stores:store_listar')

class StoreUpdate(UpdateView):
	model = Store
	form_class = StoreForm
	template_name = 'stores/store_form.html'
	success_url = reverse_lazy('stores:store_listar')

class StoreDelete(DeleteView):
	model = Store
	template_name = 'stores/store_delete.html'
	success_url = reverse_lazy('stores:store_listar')