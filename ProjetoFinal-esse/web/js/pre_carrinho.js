const bntcar = document.querySelector(".produtos-main .category .btn-car");
const telacar = document.querySelector(".carrinho-tela");
const fechar = document.querySelector(".carrinho-tela .fechar-carrinho");
bntcar.addEventListener("click", () => {
    telacar.classList.add("container");
    
});

fechar.addEventListener("click", () => {
    telacar.classList.remove("container");
    });
