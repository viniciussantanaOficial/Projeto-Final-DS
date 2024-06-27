function showEmptyCartAlert() {
    swal({
        title: "Carrinho vazio",
        text: "Nenhum produto adicionado ao carrinho",
        icon: "info",
        button: "Continuar comprando"
    });
}

document.addEventListener('DOMContentLoaded', (event) => {
    // Verifica se o carrinho está vazio ao carregar a página
    if (document.getElementById('emptyCartMessage')) {
        showEmptyCartAlert();
    }
});