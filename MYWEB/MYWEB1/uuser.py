from .models import CustomUser

new_user = CustomUser.objects.create_user(
    username='johndoe',
    email='johndoe@example.com',
    rut='1234567890',
    direccion='123 Main St',
    fecha_nacimiento='1990-01-01',
    password='mypassword'
)
