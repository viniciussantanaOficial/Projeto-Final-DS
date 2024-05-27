<%-- Document : header Created on : 04/05/2024, 09:25:41 Author : Iago --%> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@page
contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>

    <link href="./style/pre_carrinho.css" rel="stylesheet" type="text/css"/>
  </head>
  <body>
  
    <div id="carrinho">
      <div id="background-carrinho"></div>
      <div id="carrinho-container">
        <div class="carrinho-header">
            <i id="fechar-carrinho" class="fa-solid fa-xmark"></i>
        </div>
        <div id="carrinho-main"></div>
        <div class="carrinho-footer">
          <button class="btn btn-finalizar">FINALIZAR COMPRA</button>
        </div>
      </div>
    </div>
  </body>

  <script src="./js/pre_carrinho.js"></script>
</html>