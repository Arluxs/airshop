from .models import categoria, Producto, Cliente, Venta
from django.shortcuts import render, redirect, get_object_or_404
from django.http import HttpResponse
from django.contrib import messages
from .carrito import Carrito
from django.urls import reverse
from django.contrib.auth.decorators import login_required
from django.http import JsonResponse
from django.contrib.auth import authenticate, login
from .forms import RegistroForm, CheckoutForm
from django.contrib.auth.models import User
from .models import CustomUser, ListaDeseo
from django.contrib.auth.views import LoginView
from django.contrib.auth.forms import AuthenticationForm
import os
from django.conf import settings
from django.http import HttpResponse
from .models import Producto, Venta, Region, Comuna
from django.conf import settings
import requests
import datetime
from .forms import UserProfileForm
from django.views.generic import UpdateView
from .models import CustomUser
from django.urls import reverse_lazy




def listar_categorias(request):
    categorias = categoria.objects.all()
    return render(request, 'lista_categorias.html', {'categorias': categorias})



def product_list(request):
    # Recupera todos los productos de la base de datos
    products = Product.objects.all()
    
    # Renderiza la plantilla con los productos
    return render(request, 'product_list.html', {'products': products})


def producto_detail(request, id_producto):
    producto = get_object_or_404(Producto, id_producto=id_producto)
    return render(request, 'productos.html', {'producto': producto})

def lista_productos(request):
    productos = Producto.objects.all()
    return render(request, 'lista_productos.html', {'productos': productos})

def lista_productos1(request):
    productos = Producto.objects.all()
    return render(request, 'productos.html', {'producto': productos})

def registro(request):
    if request.method == 'POST':
        form = RegistroForm(request.POST)
        if form.is_valid():
            username = form.cleaned_data['username']
            first_name = form.cleaned_data['first_name']
            last_name = form.cleaned_data['last_name']
            email = form.cleaned_data['email']
            password = form.cleaned_data['password1']
            rut = form.cleaned_data['rut']
            direccion = form.cleaned_data['direccion']
            fecha_nacimiento = form.cleaned_data['fecha_nacimiento']
            # Creamos un nuevo usuario personalizado
            nuevo_usuario = CustomUser.objects.create_user(
                username=username,
                first_name=first_name,
                last_name=last_name,
                email = email,
                password=password,
                rut=rut,
                direccion=direccion,
                fecha_nacimiento=fecha_nacimiento
            )

            # Autenticamos al usuario y lo iniciamos sesión
            usuario_autenticado = authenticate(username=username, password=password)
            login(request, usuario_autenticado)

            # Redirigimos al usuario a la página de inicio
            return redirect('index.html')
    else:
        form = RegistroForm()

    return render(request, 'registro3.html', {'form': form})

def registro1(request):
    if request.method == 'POST':
        form = RegistroForm(request.POST)
        if form.is_valid():
            username = form.cleaned_data['username']
            first_name = form.cleaned_data['first_name']
            last_name = form.cleaned_data['last_name']
            email = form.cleaned_data['email']
            password = form.cleaned_data['password1']
            rut = form.cleaned_data['rut']
            direccion = form.cleaned_data['direccion']
            fecha_nacimiento = form.cleaned_data['fecha_nacimiento']
            # Creamos un nuevo usuario personalizado
            print(username)
            nuevo_usuario = CustomUser.objects.create_user(
                username=username,
                first_name=first_name,
                last_name=last_name,
                email = email,
                password=password,
                rut=rut,
                direccion=direccion,
                fecha_nacimiento=fecha_nacimiento
            )
            print(username)

            # Autenticamos al usuario y lo iniciamos sesión
            usuario_autenticado = authenticate(username=username, password=password)
            login(request, usuario_autenticado)
            print(usuario_autenticado)

            # Redirigimos al usuario a la página de inicio
            return redirect('../../contacto')
    else:
        form = RegistroForm()

    return render(request, 'registro1.html', {'form': form})

def registrobase(request):
    if request.method == 'POST':
        form = RegistroForm(request.POST)
        if form.is_valid():
            username = form.cleaned_data['username']
            first_name = form.cleaned_data['first_name']
            last_name = form.cleaned_data['last_name']
            email = form.cleaned_data['email']
            password = form.cleaned_data['password1']
            rut = form.cleaned_data['rut']
            direccion = form.cleaned_data['direccion']
            fecha_nacimiento = form.cleaned_data['fecha_nacimiento']
            # Creamos un nuevo usuario personalizado
            nuevo_usuario = CustomUser.objects.create_user(
                username=username,
                first_name=first_name,
                last_name=last_name,
                email = email,
                password=password,
                rut=rut,
                direccion=direccion,
                fecha_nacimiento=fecha_nacimiento
            )

            # Autenticamos al usuario y lo iniciamos sesión
            usuario_autenticado = authenticate(email=email, password=password)
            login(request, usuario_autenticado)

            # Redirigimos al usuario a la página de inicio
            return redirect('user_profile')
    else:
        form = RegistroForm()

    return render(request, 'lista_productos.html', {'form': form})


def login_user(request):
    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['password']
        user = authenticate(request, email=email, password=password)
        if user is not None:
            login(request, user)
            return redirect('contacto.html')
        else:
            error_message = 'Correo electrónico o contraseña inválidos.'
    else:
        error_message = None
    return render(request, 'index.html', {'error_message': error_message})

def actualizar_carrito(request):
    if request.method == 'POST':
        carrito = Carrito(request)
        id_producto = request.POST.get('id_producto')
        cantidad = int(request.POST.get('cantidad'))
        producto = get_object_or_404(Producto, id_producto=id_producto)
        carrito.actualizar(producto=producto, cantidad=cantidad)
        return JsonResponse({'status': 'ok'})
    else:
        return JsonResponse({'status': 'error'})


def agregar_al_carrito(request, id_producto):
    carrito = Carrito(request)
    producto = get_object_or_404(Producto, id_producto=id_producto)
    carrito.agregar(producto=producto)
    return redirect('carrito')


def eliminar_producto_carrito(request, id_producto):
    carrito = Carrito(request)
    producto = get_object_or_404(Producto, id_producto=id_producto)
    carrito.eliminar(producto=producto)
    return redirect('carrito')




def restar_producto(request, id_producto):
    carrito = Carrito(request)
    producto = get_object_or_404(Producto, id_producto=id_producto)
    carrito.restar(producto)
    return redirect('carrito')


def limpiar_carrito(request):
    carrito = Carrito(request)
    carrito.limpiar()
    return redirect('carrito')

def carritom(request):
    if not request.user.is_authenticated:
        # Redireccionar al usuario a la página de inicio de sesión
        return redirect('login')

    carrito = Carrito(request)
    productos = carrito.get_productos()
    total = carrito.get_total()

    context = {
        "productos": productos,
        "total": total
    }
    return render(request, "cart.html", context)


def total_carrito(request):
    total = 0
    if request.user.is_authenticated:
        if "carrito" in request.session.keys():
            for key, value in request.session["carrito"].items():
                total += int(value["acumulado"])
    return render(request, 'cart.html', {'total_carrito': total})




def inicio(request):
    form = AuthenticationForm()
    return render(request, 'registration/login.html', {'form': form})

def checkout(request):
    carrito = Carrito(request)
    productos = carrito.get_productos()
    total = carrito.get_total()
    iva = round(total * 0.19, 2) # Calcula el IVA (19%) y redondea a 2 decimales

    context = {
        'productos': productos,
        'total': total,
        'iva': iva,
        'envio': 0, # Costo de envío siempre será 0 por ahora
    }

    return render(request, 'checkout.html', context)




def procesar_compra(request):
    if request.method == 'POST':
        carrito = Carrito(request)
        productos = carrito.get_productos()
        total_compra = sum(item['precio_total'] for item in productos)
        rut = request.POST.get('rut')
        fecha_actual = datetime.datetime.now()

        ultimo_id_venta = Venta.objects.latest('id_venta').id_venta if Venta.objects.exists() else 0
        id_venta = ultimo_id_venta + 1

        skus = [item['sku_producto'] for item in productos]

        for sku in skus:
            venta = Venta(id_venta=id_venta, sku_producto=sku, fecha=fecha_actual, total=total_compra, rut=rut)
            venta.save()
        return render(request, 'confirmacion.html', {'venta': venta})    
        
    return render(request, 'checkout.html')


def reporte_ventas(request):
    ventas = Venta.objects.all()
    return render(request, 'reportes.html', {'ventas': ventas})


class CustomUserUpdateView(UpdateView):
    model = CustomUser
    form_class = UserProfileForm
    template_name = 'profile.html'
    success_url = reverse_lazy('user_profile')

    def get_object(self, queryset=None):
        # Obtener el objeto CustomUser del usuario actualmente logueado
        return self.request.user

    def form_valid(self, form):
        password = form.cleaned_data['password']

        if password:
         self.object.set_password(password)
    
        messages.success(self.request, 'El usuario ha sido modificado con éxito.')
        return super().form_valid(form)


def user_profile(request):
    if request.method == 'POST':
        form = UserProfileForm(request.POST, instance=request.user)
        if form.is_valid():
            form.save()
            messages.success(request, 'El usuario ha sido modificado con éxito.')
            return redirect('user_profile')  # Redirigir a la página de perfil de usuario
    else:
        form = UserProfileForm(instance=request.user)
    
    context = {
        'form': form
    }
    return render(request, 'user_profile.html', context)


def get_regiones(request):
    regiones = Region.objects.all().values('id', 'nombre')
    return JsonResponse(list(regiones), safe=False)

def get_comunas(request, region_id):
    comunas = Comuna.objects.filter(region_id=region_id).values('id', 'nombre')
    return JsonResponse(list(comunas), safe=False)

@login_required
def lista_deseos(request):
    cliente_id = request.user.id
    lista_deseos = ListaDeseo.objects.filter(id_cliente=cliente_id)
    return render(request, 'listadeseos.html', {'lista_deseos': lista_deseos})


@login_required
def agregar_lista_deseos(request, producto_id):
    producto = get_object_or_404(Producto, id_producto=producto_id)
    cliente = get_object_or_404(CustomUser, id=request.user.id)
    cliente_id = cliente.id  # Obtener el ID del cliente
    print('ID del cliente:', cliente_id)
    
    ListaDeseo.objects.get_or_create(id_cliente=cliente_id, id_producto=producto)
    return redirect('lista_deseos')

@login_required
def quitar_lista_deseos(request, producto_id):
    producto = get_object_or_404(Producto, id_producto=producto_id)
    cliente = get_object_or_404(CustomUser, id=request.user.id)
    cliente_id = cliente.id 

    ListaDeseo.objects.filter(id_cliente=cliente_id, id_producto=producto).delete()
    return redirect('lista_deseos')