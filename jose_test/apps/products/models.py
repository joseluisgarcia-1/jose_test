from django.db import models
from apps.stores.models import Store

"""class Category(models.Model):
    name = models.CharField(max_length = 100)
    description = models.TextField(max_length = 100)

    def __str__(self):
        return '{} {}'.format(self.name, self.description)"""


"""class Marca(model.Model):
    name = models.CharField(max_length = 100)
    
    def __str__(self):
        return '{} {}'.format(self.name)"""

class Marca(models.Model):
    name = models.CharField(max_length = 100)
    store = models.ForeignKey(Store, null=True, blank=True, on_delete=models.CASCADE)

class Product(models.Model):
    TITLES_STATES =[
        ('Disponible', 'Disponible'),
        ('Agotado', 'Agotado'),
        ('Fabrica', 'Fabrica'),
    ]
    name = models.CharField(max_length = 100)
    description = models.TextField(max_length = 100)
    status = models.CharField(max_length = 50, choices=TITLES_STATES)
    price = models.DecimalField(max_digits = 6, decimal_places = 2)
    stock = models.IntegerField()
    #store = models.ForeignKey(Store, null=True, blank=True, on_delete=models.CASCADE)
    #marca = models.ManyToManyField(Marca)
    #image = models.ImageField(upload_to='products', null = True)
    #categories = models.ManyToManyField(Category, null = True, blank = True)
    #marca = models.CharField(max_length = 100)
    
    def __str__(self):
        return '{} {}'.format(self.name, self.description)
