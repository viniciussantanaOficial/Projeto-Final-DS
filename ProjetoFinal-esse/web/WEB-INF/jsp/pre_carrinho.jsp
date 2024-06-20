<%-- Document : header Created on : 04/05/2024, 09:25:41 Author : Iago --%> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@page
contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>

    <link href="./style/pre_carrinho.css" rel="stylesheet" type="text/css"/>
    <script src="https://kit.fontawesome.com/446d1f4167.js" crossorigin="anonymous"></script>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  </head>
  <body>
  
    <button><i class="fa-solid fa-cart-shopping"></i></button>
    <h3>Carrinho</h3>
    <dialog>
      <div class="container">
        <div class="card-carrinho">
            <div class="card-left">
                <div class="img-carrinho">
                    <img src="./img/png-clipart-perfume-eau-de-toilette-milliliter-fluid-ounce-paco-rabanne-cosmetics-toilet.png"
                        alt="">
                    <div class="info-carrinho">
                        <div class="nome-produto">
                            vinho reservado
                        </div>
                        <div class="valor-produto">
                            R$40,00
                        </div>
                        <div class="quantidade-produto">
                            <select name="qntd" id="">
                                <option value="1">1</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-right">
                <div class="infos-text">
                    <p>Seu carrinho</p>
                    <p>1 item</p>
                    <div class="valor-total-produtos">
                        <p>Valor total do produto</p>
                        <div class="preco-total">
                            R$30,00
                        </div>
                    </div>
                    <div class="custo-total">
                        <p>Valor total do produto</p>
                        <div class="custo-total-entrega">
                            R$50,00
                        </div>
                    </div>
                </div>
                <div class="card-right-low">
                    <div class="preco-total">
                        <h4>Total</h4>
                        <div class="valor">
                           <h3>80,00</h3> 
                        </div>
                    </div>
                    <div class="buttons">
                    <div class="button1">
                        <button >Continuar comprando</button>
                    </div>
                        <div class="button2">
                            <button>Ver carrinho</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
        <div class="container">
        <div class="card-deck">
            <div class="card">
              <img class="card-img-top" src="..." alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">Last updated 3 mins ago</small>
              </div>
            </div>
            <div class="card">
              <img class="card-img-top" src="..." alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">Last updated 3 mins ago</small>
              </div>
            </div>
            <div class="card">
              <img class="card-img-top" src="..." alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">Last updated 3 mins ago</small>
              </div>
            </div>
          </div>
        </div>
    </dialog>
  </body>

  <script src="./js/pre_carrinho.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
crossorigin="anonymous"></script>

</html>