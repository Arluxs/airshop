from django.shortcuts import render
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework.parsers import JSONParser
from django.views.decorators.csrf import csrf_exempt
from MYWEB1.models import CustomUser
from django.contrib.auth.hashers import check_password
from rest_framework.authtoken.models import Token

@api_view(['POST'])
def login1(request):
    data = JSONParser().parse(request)

    username = data['username']
    password = data['password']
    try:
        user = CustomUser.objects.get(username=username)
    except CustomUser.DoesNotExist:
        return Response("Usuario inválido")
    #validamos la APP
    pass_valido = check_password(password, user.password)
    if not pass_valido:
        return Response("Contraseña inválido")

    #Permite crear o recuperar el token
    token, created = Token.objects.get_or_create(user=user)
    #print(token.key)
    return Response(token.key)
