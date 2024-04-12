from django.http import HttpResponse
from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from django.contrib.auth.views import LoginView
from django.contrib.auth import authenticate, login
from django.contrib.auth.decorators import login_required
import requests



def hello_world(request):
    return HttpResponse("Hola Mundo!")

def hello_world2(request):
    return HttpResponse("Hola Mundo!2")

def index(request):
    return render(request, 'index.html')

def producto(request):
    return render(request, 'productos.html')

def home_view(request):
    return render(request, 'index.html')

def wishlist(request):
    # Aquí puede agregar la lógica para recuperar y mostrar la lista de deseos del usuario actual
    return render(request, 'wishlist.html')

@login_required
def user_profile(request):
    return render(request, 'profile.html')

def contacto(request):
    return render(request, 'contacto.html')

def cart(request):
    return render(request, 'cart.html')


def registro1(request):
    return render(request, 'registro1.html')

class CustomLoginView(LoginView):
    template_name = 'registro.html'
    redirect_authenticated_user = True

