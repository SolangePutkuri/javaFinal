const loginForm = document.getElementById('login-form');

loginForm.addEventListener('submit', function(event) 
{
    // Prevenir la acción por defecto
    event.preventDefault();
    
    // Valores de los inputs
    const email = loginForm.email.value;
    const password = loginForm.password.value;
    
    // Div de errores
    const emailError = document.getElementById('emailError');
    const passwordError = document.getElementById('passwordError');

    // Reiniciar el texto 
    emailError.textContent = '';
    passwordError.textContent = '';
    
    // Mostrar mensaje de error si los inputs están vacíos
    if (email === '') {
        emailError.textContent = 'El correo electrónico es obligatorio.';
    }

    if (password === '') {
        passwordError.textContent = 'La contraseña es obligatoria.';
    }

    if (email && password){
        window.location.href = '../index.html';
    }

});