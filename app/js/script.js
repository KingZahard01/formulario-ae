// Form ------------------------------------------
// Función para manejar el cambio en el input file
function mostrarImagenSeleccionada() {
    var input = document.getElementById('img-input');
    var imagenMostrada = document.getElementById('img-show');

    // Verifica si se seleccionó un archivo
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        // Cuando se carga el archivo, actualiza la fuente de la imagen
        reader.onload = function (e) {
            imagenMostrada.src = e.target.result;
        };

        // Lee el contenido del archivo como una URL de datos
        reader.readAsDataURL(input.files[0]);
    }
}

// Agrega un evento de cambio al input file
document.getElementById('img-input').addEventListener('change', mostrarImagenSeleccionada);
// -----------------------------------------------

console.log('hola mundo');