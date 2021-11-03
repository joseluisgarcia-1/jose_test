from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.views.generic import ListView, CreateView, DeleteView, UpdateView
from apps.products.models import Store, Product
from django.contrib.auth.models import User
# Create your views here.
from apps.products.forms import MarcaForm, ProductForm
from django.urls import reverse_lazy

def index_products(request):
    return HttpResponse("Index of products")

class ProductList(ListView):
    model = Product
    template_name = 'products/products_list.html'

class ProductCreate(CreateView):
    model = Product
    template_name = 'products/products_form.html'
    form_class = ProductForm
    second_form_class = MarcaForm
    success_url = reverse_lazy('products:products_listar')

    def get_context_data(self, **kwargs):
        context = super(ProductCreate, self).get_context_data(**kwargs)
        if 'form' not in context:
            context['form'] = self.form_class(self.request.GET)
        if 'form2' not in context:
            context['form2'] = self.second_form_class(self.request.GET)
        return context
    def post(self, request, *args, **kwargs):
        self.object = self.get_object
        form = self.form_class(request.POST)
        form2 = self.second_form_class(request.POST)
        if form.is_valid() and form2.is_valid():
            products = form.save(commit=False)
            products.store = form2.save()
            products.save()
            return HttpResponseRedirect(self.get_success_url())
        else:
            return self.render_to_response(self.get_context_data(form=form, form2=form2))


class ProductUpdate(UpdateView):
    model = Product
    second_model = Store
    template_name = 'products/products_form.html'
    form_class = ProductForm
    second_form_class = MarcaForm
    success_url = reverse_lazy('products:products_listar')

    def get_context_data(self, **kwargs):
        context = super(ProductUpdate, self).get_context_data(**kwargs)
        pk = self.kwargs.get('pk', 0)
        products = self.model.objects.get(id=pk)
        store = self.second_model.objects.get(id=products.store_id)
        if 'form' not in context:
            context['form'] = self.form_class()
        if 'form2' not in context:
            context['form2'] = self.second_form_class(instance=store)
        context['id'] = pk
        return context
    
    def post(self, request, *args, **kwargs):
        self.object = self.get_object
        id_products = kwargs['pk']
        products = self.model.objects.get(id=id_products)
        store = self.second_model.objects.get(id=products.store_id)
        form = self.form_class(request.POST, instance=products)
        form2 = self.second_form_class(request.POST, instance=store)
        if form.is_valid() and form2.is_valid():
            form.save()
            form2.save()
            return HttpResponseRedirect(self.get_success_url())
        else:
            return HttpResponseRedirect(self.get_success_url())

class ProductDelete(DeleteView):
    model = Product
    template_name = 'products/products_delete.html'
    success_url = reverse_lazy('products:products_listar')

