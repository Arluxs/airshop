from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from .models import CustomUser
from django.contrib.auth.forms import AuthenticationForm




class RegistroForm(UserCreationForm):
    rut = forms.CharField(max_length=10)
    email = forms.EmailField()
    direccion = forms.CharField(max_length=100)
    fecha_nacimiento = forms.DateField(widget=forms.DateInput(attrs={'type': 'date'}))

    class Meta:
        model = CustomUser
        fields = ['username', 'first_name', 'last_name', 'email', 'rut', 'direccion', 'fecha_nacimiento', 'password1', 'password2']
        widgets = {
            'fecha_nacimiento': forms.DateInput(attrs={'type': 'date'})
        }

class CustomAuthenticationForm(AuthenticationForm):
    email = forms.EmailField(label='Email')


class CheckoutForm(forms.Form):
    id_producto = forms.IntegerField()
    fecha = forms.DateField()
    total = forms.DecimalField()
    rut_cliente = forms.CharField(max_length=10)


class LoginForm(forms.Form):
    username = forms.CharField(label='Nombre de usuario', max_length=100)
    password = forms.CharField(label='Contraseña', widget=forms.PasswordInput)
    remember_me = forms.BooleanField(required=False, widget=forms.CheckboxInput(attrs={'class': 'form-check-input'}))

class UserProfileForm(forms.ModelForm):
    password = forms.CharField(label='Contraseña', widget=forms.PasswordInput, required=False)
    password_confirmation = forms.CharField(label='Confirmar contraseña', widget=forms.PasswordInput, required=False)

    class Meta:
        model = CustomUser
        fields = ['email', 'direccion']

    def clean(self):
        cleaned_data = super().clean()
        password = cleaned_data.get('password')
        password_confirmation = cleaned_data.get('password_confirmation')

        if password and not password_confirmation:
            self.add_error('password_confirmation', 'Por favor, confirma tu contraseña.')
        elif password and password != password_confirmation:
            self.add_error('password_confirmation', 'Las contraseñas no coinciden.')

        return cleaned_data

    def save(self, commit=True):
        user = super().save(commit=False)
        password = self.cleaned_data.get('password')

        if password:
            user.set_password(password)

        if commit:
            user.save()

        return user