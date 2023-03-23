from django.http import HttpResponse
from django.shortcuts import render


def hello_world(request):
    return HttpResponse("Hola Mundo!")

def hello_world2(request):
    return HttpResponse("Hola Mundo!2")

def index(request):
    return render(request, 'index.html')