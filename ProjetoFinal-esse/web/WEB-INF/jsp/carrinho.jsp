<%-- Document : carrinho.jsp Created on : 20/05/2024, 15:27:43 Author : Senai --%>

  <%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>JSP Page</title>
      <link href="./style/home.css" rel="stylesheet" type="text/css" />

      <link href="./style/carrinho.css" rel="stylesheet" type="text/css" />
      <script src="https://kit.fontawesome.com/446d1f4167.js" crossorigin="anonymous"></script>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>

    <body>

        <div class="carrinho">
          <div class="cabecario-carrinho">
            <button><i class="fa-solid fa-cart-shopping"></i></button>
            <h3>Carrinho</h3>
          </div>
          <ul>
            <li class="carrinho-item">
              <div class="imagem">
                <img src="./img/o.21479.jpg" alt="">
              </div>
              <div class="info">
                <div class="separar-carrinho">
                <h4>Vinhos</h4>
              </div>
                <div class="detalhes">
                  <div class="categoria-carrinho">
                    <span>Bebidas</span>
                  </div>
                  <div class="preco">
                    <h6>R$30,00</h6>
                  </div>
                </div>
                <div class="separador-menos-mais">
                  <button class="separador-mais"><h3>+</h3></button>
                 <p>1</p>
                  <button class="separador-menos"><h3>-</h3></button>
                </div>
              </div>
            </li>
          </ul>

          <button class="button-pagar-carrinho">Pagar R$30,00</button>
        </div>
      </body>
      

    </html>