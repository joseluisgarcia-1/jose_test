from django.contrib import admin

# Register your models here.
from apps.products.models import Product, Marca

# Register your models here.
admin.site.register(Product)
admin.site.register(Marca)