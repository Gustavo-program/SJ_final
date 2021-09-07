let fotoFile = document.getElementById('file-input');

fotoFile.addEventListener('change', function() {
    document.getElementById('fichero').innerHTML = document.getElementById('file-input').files[0].name;
});