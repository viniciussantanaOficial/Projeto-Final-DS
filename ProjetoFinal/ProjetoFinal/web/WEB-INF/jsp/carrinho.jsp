<%-- 
    Document   : carrinho.jsp
    Created on : 20/05/2024, 15:27:43
    Author     : Senai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="./style/home.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="./style/carrinho.css">
    </head>
    <body>
       
        <header>
            <div class="header-top">
                <h4 class="h1-header">Frete gratis acima de R$ 200,00 reais</h4>
            </div>
            <div class="header-low">
                <div class="nav">
                    <p>vinho</p>
                    <p>Perfumes</p>
                    <p>Eletronicos</p>
                </div>
                <div class="inputIcones">
                    <div class="input-buscar-icone-buscar">
                        <input type="text" id="buscar" name="buscar" placeholder="buscar...">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </div>
                    <div>
                        <i class="fa-solid fa-user"></i>
                        <i class="fa-solid fa-cart-shopping"></i>
                    </div>
                </div>
            </div>
        </header>


        <main>
            <div class="main-left">
            <h1 class="main-h1">Carrinho</h1>
            <h2 class="main-h2">Total [1 produtos] R$:?</h2>
            <h3 class="main-h3">Os intens do seu carrinho nao estao reservados.finalize a compra para  tornar-los seus itens pessoais</h3>
        </div>

        <div class="main-img">
            <img src="./img/shopping 1.png" alt="vinho">
        </div>



        </main>


        <footer>

        </footer>


    </body>
</html>
