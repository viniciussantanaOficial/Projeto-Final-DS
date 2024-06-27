 document.getElementById('.perfil-tela-adm').addEventListener('click', function() {
            var selectElement = document.getElementById('perfil-tela-adm');
            selectElement.style.display = 'block';
            selectElement.focus();
        });
        
        document.getElementById('perfil-tela-adm').addEventListener('blur', function() {
            document.getElementById('perfil-tela-adm').style.display = 'none';
        });
        
    