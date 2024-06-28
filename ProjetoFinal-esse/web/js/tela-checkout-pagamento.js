const selectMes = document.getElementById('mes-cartao');
    const selectAno = document.getElementById('ano-cartao');
    
    const meses = [
        { value: '', text: 'Mês...' },
        { value: 'Janeiro', text: 'Janeiro' },
        { value: 'Fevereiro', text: 'Fevereiro' },
        { value: 'Março', text: 'Março' },
        { value: 'Abril', text: 'Abril' },
        { value: 'Maio', text: 'Maio' },
        { value: 'Junho', text: 'Junho' },
        { value: 'Julho', text: 'Julho' },
        { value: 'Agosto', text: 'Agosto' },
        { value: 'Setembro', text: 'Setembro' },
        { value: 'Outubro', text: 'Outubro' },
        { value: 'Novembro', text: 'Novembro' },
        { value: 'Dezembro', text: 'Dezembro' }
    ];
    
    meses.forEach(mes => {
        const option = document.createElement('option');
        option.value = mes.value;
        option.textContent = mes.text;
        selectMes.appendChild(option);
    });
    
   
    const anoAtual = new Date().getFullYear();
    const anosFuturos = 10; 
    
    for (let i = 0; i <= anosFuturos; i++) {
        const option = document.createElement('option');
        const ano = anoAtual + i;
        option.value = ano;
        option.textContent = ano;
        selectAno.appendChild(option);
    }

    const frmEndereco = document.getElementById('frmEndereco');

    frmEndereco.addEventListener('submit', function(event){
        event.preventDefault();

        const inputs = document.getElementsByClassName('input');
        let j = 0; 
        for(let i = 0; i < inputs.length; i++){
            if(inputs[0].value.trim() === ""){
                j = 1;
            }
        }
        if(j == 1){
            alert("Preencha todos os dados corretamente!");
        }else{
            frmEndereco.submit();
        }
    });

/////////////////////////////////////////////////////////////



