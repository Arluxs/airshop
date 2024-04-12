/*function mostrarCheckout() {
    // Mostrar loader
    document.getElementById("loader").style.display = "block";

    // Demorar la ejecución por 1 segundo (1000 ms)
    setTimeout(() => {
        fetch('/checkout/')
            .then(response => response.text())
            .then(html => {
                // Ocultar loader
                document.getElementById("loader").style.display = "none";

                // Mostrar contenido del checkout
                document.getElementById("cart-content").innerHTML = html;
                alert(html);
            })
            .catch(error => console.log(error));
    }, 1000);
}


*/
window.addEventListener('load', function () {
    document.getElementById("loader-wrapper").style.display = "none";
});


const buyBtn = document.getElementById("buy-btn");

const loader = document.getElementById("loader");

buyBtn.addEventListener("click", () => {
    loader.style.display = "block";
    setTimeout(() => {
        loader.style.display = "none";
    }, 1000);
});

$(document).ready(function() {
    $('#empty-cart-btn').click(function() {
      $.ajax({
        url: "{% url 'limpiar_carrito' %}",
        method: "POST",
        data: {},
        beforeSend: function() {
          $('#loader').show();
        },
        success: function(response) {
          location.reload();
        },
        error: function(xhr, status, error) {
          console.log(error);
        },
        complete: function() {
          $('#loader').hide();
        }
      });
    });
  });




  $(document).ready(function() {
    $('.plus').click(function(event) {
      event.preventDefault();
      var href = $(this).attr('href');
      var cantidadInput = $(this).prev();
      var cantidadActual = parseInt(cantidadInput.val());
      var nuevaCantidad = cantidadActual + 1;
  
      // Mostrar loader
      $('#loader').show();
  
      $.ajax({
        url: href,
        method: "GET",
        success: function(data) {
          cantidadInput.val(nuevaCantidad);
        },
        error: function(xhr, status, error) {
          console.log(error);
        },
        complete: function() {
          // Ocultar loader
          $('#loader').hide();
        }
      });
    });
  
    $('.minus').click(function(event) {
      event.preventDefault();
      var href = $(this).attr('href');
      var cantidadInput = $(this).next();
      var cantidadActual = parseInt(cantidadInput.val());
  
      if (cantidadActual > 1) {
        var nuevaCantidad = cantidadActual - 1;
  
        // Mostrar loader
        $('#loader').show();
  
        $.ajax({
          url: href,
          method: "GET",
          success: function(data) {
            cantidadInput.val(nuevaCantidad);
          },
          error: function(xhr, status, error) {
            console.log(error);
          },
          complete: function() {
            // Ocultar loader
            $('#loader').hide();
          }
        });
      }
    });
  
    function validarRut(rut) {
      var rexp = /^([0-9])+\-([kK0-9])+$/;
      if (!rexp.test(rut)) {
        return false;
      }
  
      rut = rut.split('-');
      var elRut = rut[0], factor = 2, suma = 0, dv, i;
      for (i = (elRut.length - 1); i >= 0; i--) {
        suma += parseInt(elRut.charAt(i)) * factor++;
        if (factor > 7) factor = 2;
      }
      dv = 11 - (suma % 11);
      if (dv == 11) dv = 0;
      else if (dv == 10) dv = "K";
      if (dv == rut[1].toUpperCase()) {
        return true;
      } else {
        return false;
      }
    }
  
    $('#rut').blur(function() {
      var rutValue = $(this).val();
      if (validarRut(rutValue)) {
        $('#rut-message').html('RUT VÁLIDO');
        $('#rut-message').css('color', 'green');
      } else {
        $('#rut-message').html('RUT INVÁLIDO');
        $('#rut-message').css('color', 'red');
      }
    });
  });


  $(document).ready(function() {
    // Cargar regiones
    $.ajax({
        url: '/api/regiones/',
        type: 'GET',
        success: function(data) {
            var regionSelect = $('#region');
            regionSelect.empty();
            regionSelect.append($('<option>').text('Selecciona una región...').attr('value', ''));
            $.each(data, function(index, region) {
                regionSelect.append($('<option>').text(region.nombre).attr('value', region.id));
            });
        }
    });

    // Actualizar comunas al seleccionar una región
    $('#region').change(function() {
        var regionId = $(this).val();
        var comunaSelect = $('#comuna');
        comunaSelect.empty();
        comunaSelect.append($('<option>').text('Selecciona una comuna...').attr('value', ''));

        if (regionId !== '') {
            $.ajax({
                url: '/api/comunas/' + regionId + '/',
                type: 'GET',
                success: function(data) {
                    $.each(data, function(index, comuna) {
                        comunaSelect.append($('<option>').text(comuna.nombre).attr('value', comuna.id));
                    });
                }
            });
        }
    });
});