const cartIcon = document.querySelector(".fa-solid.fa-cart-shopping");
const modal = document.querySelector("dialog");
const fechar = document.querySelector(".fa-x"); 

if (cartIcon) {
    cartIcon.onclick = function() {
        modal.showModal();
        console.log("Abrindo modal");
    };
}

if (fechar) {
    fechar.onclick = function () {
        modal.close();
        console.log("Fechando modal");
    };
}