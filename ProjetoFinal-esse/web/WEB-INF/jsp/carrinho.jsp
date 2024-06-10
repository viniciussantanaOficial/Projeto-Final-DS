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
            <div class="info-separator">
              <div class="info">
                <h4>teste</h4>
              </div>
              <div class="detalhes">
                <div class="tempo">
                  <i class="bx bxs-timer"></i>
                  <span>categoria</span>
                </div>
                <div class="status">
                  <i class="bx bxs-package"></i>
                  <span>vinho</span>
                </div>
              </div>
              <div class="Preco">
                <p>R$:25,50</p>
                <div class="contador">
                  <i class="bx bxs-minus"></i>
                  <i class="bx bxs-plus"></i>
                </div>
              </div>
            </div>
          </li>
        </ul>
      </div>

    </body>

    </html>