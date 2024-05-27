function abrirContainer(event) {
    const carrinho = document.getElementById('carrinho');
    carrinho.classList.toggle('aberto');
}
const abrirCarrinho = document.getElementById('card');
const fechar = document.getElementById('fechar');
abrirCarrinho.addEventListener("click", abrirContainer);
fechar.addEventListener("click", abrirContainer);