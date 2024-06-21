const cartIcon = document.querySelector(".fa-solid.fa-cart-shopping");
const modal = document.querySelector("dialog");


if (cartIcon) {
    cartIcon.onclick = function() {
        modal.showModal();
        console.log("Abrindo modal");
    };
}

if (cartIcon) {
    cartIcon.onclick = function () {
        modal.close();
        window.location.href = "./pre_carrinho";
        console.log("Fechando modal");
    };
}