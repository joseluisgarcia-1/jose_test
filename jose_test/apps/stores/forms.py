from django import forms

from apps.stores.models import Store


class StoreForm(forms.ModelForm):

	class Meta:
		model = Store

		fields = [
			'nit',
			'name_company',
			'name_commerce',
			'address',
			'email',
			'cellphone',
			'website',
			'country',
			'state',
			'city',
		]
		labels = {
			'nit': 'Nit',
			'name_company': 'Nombre de la empresa',
			'name_commerce': 'Nombre comercial',
			'address': 'Dirección',
			'email': 'Correo electrónico',
			'cellphone': 'Telefono',
			'website': 'Sito web',
			'country': 'País',
			'state': 'Estado',
			'city': 'Ciudad',
		}
		widgets = {
			'nit': forms.TextInput(attrs={'class':'form-control'}),
			'name_company': forms.TextInput(attrs={'class':'form-control'}),
			'name_commerce': forms.TextInput(attrs={'class':'form-control'}),
			'address': forms.TextInput(attrs={'class':'form-control'}),
			'email': forms.TextInput(attrs={'class':'form-control'}),
			'cellphone': forms.TextInput(attrs={'class':'form-control'}),
			'website': forms.TextInput(attrs={'class':'form-control'}),
			'country': forms.TextInput(attrs={'class':'form-control'}),
			'state': forms.TextInput(attrs={'class':'form-control'}),
			'city': forms.TextInput(attrs={'class':'form-control'}),
		}