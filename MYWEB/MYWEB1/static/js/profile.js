document.addEventListener('DOMContentLoaded', function() {
    const emailInput = document.getElementById('id_email');
    const passwordInput = document.getElementById('id_password');
    const confirmPasswordInput = document.getElementById('id_password_confirmation');
    const emailMessage = document.getElementById('email-message');
    const passwordValidationMessage = document.getElementById('password-validation-message');
    const passwordConfirmMessage = document.getElementById('password-confirm-message');
    const submitButton = document.getElementById('submit-button');
  
    emailInput.addEventListener('input', validateEmail);
    passwordInput.addEventListener('input', validatePassword);
    confirmPasswordInput.addEventListener('input', validatePassword);
  
    function validateEmail() {
      const email = emailInput.value;
      const emailRegex = /^\S+@\S+\.\S+$/;
      if (!emailRegex.test(email)) {
        emailMessage.textContent = 'El formato del correo electrónico no es válido';
        emailInput.classList.add('is-invalid');
        submitButton.disabled = true;
      } else {
        emailMessage.textContent = '';
        emailInput.classList.remove('is-invalid');
        if (passwordInput.value === confirmPasswordInput.value) {
          submitButton.disabled = false;
        }
      }
    }
  
    function validatePassword() {
      const password = passwordInput.value;
      const confirmPassword = confirmPasswordInput.value;
      if (password !== confirmPassword) {
        passwordValidationMessage.textContent = '';
        passwordConfirmMessage.textContent = 'Las contraseñas no coinciden';
        confirmPasswordInput.classList.add('is-invalid');
        submitButton.disabled = true;
      } else {
        passwordConfirmMessage.textContent = '';
        confirmPasswordInput.classList.remove('is-invalid');
        submitButton.disabled = false;
      }
  
      const passwordRegex = /^(?=.*\d)(?=.*\W)(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
      if (!passwordRegex.test(password)) {
        passwordValidationMessage.textContent = 'La contraseña debe contener al menos un símbolo, una mayúscula y un número';
        passwordInput.classList.add('is-invalid');
        submitButton.disabled = true;
      } else {
        passwordValidationMessage.textContent = '';
        passwordInput.classList.remove('is-invalid');
        if (password === confirmPassword) {
          submitButton.disabled = false;
        }
      }
    }
  });
  