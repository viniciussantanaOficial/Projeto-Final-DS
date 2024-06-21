<%-- 
    Document   : Tela_Eletronicos
    Created on : Jun 17, 2024, 2:18:27 PM
    Author     : suiciniv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tela_Vinhos</title>
        <link href="./style/home.css" rel="stylesheet" type="text/css" />

    </head>
    <body>

        <header>
            <nav>
                <a class="logo" href="/">Ls_video</a>
                <u class="nav-list">


                    <li> <a href="/"></a>Vinhos </li>
                    <li> <a href="/"></a>Perfumes </li>
                    <li> <a href="/"></a>Eletronicos </li>

                </u>




                <div class="icones-header2">
                    <div class="buscar-icone">
                        <input class="buscar-header" type="text"><i class="fa-solid fa-magnifying-glass"></i>
                    </div>
                    <div class="icone-header">
                        <a href="./logar"><i class="fa-solid fa-user"></i></a>
                        <a href="./carrinho"><i class="fa-solid fa-cart-shopping2"></i></a>

                    </div>
                </div>


            </nav>
        </header>

        <main>
        <div class="produtos-main">
            <c:forEach items="${produto}" var="produto">
                <div class="card">
                    <div class="card-image"><img style="width: 400px; height: 210px" class="img-fluid"
                            src="data:image/jpeg;base64,${produto.imagemBase64}" alt="100%x280"></div>
                    <div class="category">
                        <h4 class="card-title">${produto.nome} </h4>
                        <button class="btn-car"><i class="fa-solid fa-cart-shopping"></i></button>
                    </div>
                </div>
            </c:forEach>
        </div>
    </main>
    </body>
</html>

