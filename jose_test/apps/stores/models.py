from django.db import models

class Store(models.Model):
    nit = models.CharField(max_length = 100)
    nombre_empresa = models.CharField(max_length = 100)
    nombre_comercial = models.CharField(max_length = 100)
    direccion = models.CharField(max_length = 100)
    telefono = models.CharField(max_length = 100)
    correo = models.EmailField()
    sitio_web = models.URLField(max_length = 100)
    pais = models.CharField(max_length = 100)
    estado = models.CharField(max_length = 100)
    ciudad = models.CharField(max_length = 100)

class Marca(models.Model):
    name = models.ForeignKey(Store, null=True, blank=True, on_delete=models.CASCADE)