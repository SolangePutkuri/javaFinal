const loginForm = document.getElementById('contacto-form');

loginForm.addEventListener('submit', function(event) {

    // Prevenir la acción por defecto
    event.preventDefault();
    
    // Valores de los inputs
    const name = loginForm.name.value;
    const email = loginForm.email.value;
    const message = loginForm.message.value;
    
    // Div de errores
    const nameError = document.getElementById('nameError');
    const emailError = document.getElementById('emailError');
    const messageError = document.getElementById('messageError');

    // Reiniciar el texto 
    nameError.textContent = '';
    emailError.textContent = '';
    messageError.textContent = '';
    
    // Mostrar mensaje de error si los inputs están vacíos
    if (name === '') {
        nameError.textContent = 'Debes ingresar un nombre para continuar';
    }

    if (email === '') {
        emailError.textContent = 'Debes ingresar un correo para continuar';
    }
    
    if (message === '') {
        messageError.textContent = 'Debes escribir un mensaje para continuar';
    }

    if (email && nameError && message){
        window.location.href = '../index.html';
    }

});