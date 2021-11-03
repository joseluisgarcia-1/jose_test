from django import forms

from apps.products.models import Marca, Product

class ProductForm(forms.ModelForm):
    class Meta:
        model = Product
        fields = [
            'name',
            'description',
            'status',
            'price',
            'stock',
            'marca',
        ]
        labels = {
            'name': "Nombre",
            'description': "Descripción",
            'status': "Estado",
            'price': "Precio",
            'stock': "Cantidad",
            'marca': 'Marca',
        }
        widgets = {
            'name': forms.TextInput(attrs={'class':'form-control'}),
            'description': forms.TextInput(attrs={'class':'form-control'}),
            'status': forms.TextInput(attrs={'class':'form-control'}),
            'price': forms.TextInput(attrs={'class':'form-control'}),
            'stock': forms.TextInput(attrs={'class':'form-control'}),
            'marca': forms.TextInput(attrs={'class':'form-control'}),
        }

class MarcaForm(forms.ModelForm):
    class Meta:
        model = Marca
        fields = [
            'name', 
            'store'
        ]
        labels = {
            'name': 'Nombre de la marca', 
            'store': 'Nombre de la tienda'
        }
        widgets = {
            'name': forms.TextInput(attrs={'class':'form-control'}),
            'store': forms.Textarea(attrs={'class':'form-control'}),
        }