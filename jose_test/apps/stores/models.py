from django.db import models

class Store(models.Model):
    nit = models.CharField(max_length = 100)
    name_company = models.CharField(max_length = 100)
    name_commerce = models.CharField(max_length = 100)
    address = models.CharField(max_length = 100)
    cellphone= models.CharField(max_length = 100)
    email = models.EmailField()
    website = models.URLField(max_length = 100)
    country = models.CharField(max_length = 100)
    state = models.CharField(max_length = 100)
    city = models.CharField(max_length = 100)
    
    def __str__(self):
        return '{} {}'.format(self.name_company, self.country)