jQuery(function ($) {
    // Máscara para o número do cartão de crédito
    $("#input-numero-cartao").mask("0000 0000 0000 0000");

    // Função para validar o número do cartão
    function validarNumeroCartao() {
        var numeroCartao = $("#input-numero-cartao").val().replace(/\s+/g, ''); // Remove todos os espaços

        // Verifica se o número do cartão tem exatamente 16 dígitos
        if (numeroCartao.length !== 16) {
            $("#input-numero-cartao").addClass('invalid');
            alert('Número do cartão inválido. Insira 16 dígitos numéricos.');
            return false;
        } else {
            $("#input-numero-cartao").removeClass('invalid');
            return true;
        }
    }

    // Evento de validação ao perder o foco do campo
    $("#input-numero-cartao").on('blur', validarNumeroCartao);

    // Evento de validação ao enviar o formulário
    $("form").on('submit', function(event) {
        if (!validarNumeroCartao()) {
            event.preventDefault(); // Impede o envio do formulário se o número do cartão for inválido
        }
    });
});