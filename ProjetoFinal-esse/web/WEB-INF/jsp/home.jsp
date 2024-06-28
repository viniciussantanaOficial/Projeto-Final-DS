<%-- Document : home.jsp Created on : 13/05/2024, 14:10:42 Author : Senai --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <script src="https://kit.fontawesome.com/446d1f4167.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
        <link href="./style/modelo.css" rel="stylesheet" type="text/css" />
        <link href="./style/home-main.css" rel="stylesheet" type="text/css" />
        <link href="./style/home.css" rel="stylesheet" type="text/css" />
        <link href="./style/Tela_inicial.css" rel="stylesheet" type="text/css" />
        <link href="./style/footer.css" rel="stylesheet" type="text/css" />
        <link href="./style/carrinho-tela.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <header>
            <nav>
                <a class="logo" href="./home">Ls_video</a>
                <u class="nav-list">


                    
                        <li>Vinhos </li>
                   
                   
                        <li>Perfumes </li>
                    
                </u>
                <div class="icones-header2">
                    <div class="buscar-icone">
                        <input class="buscar-header" type="text"><i class="fa-solid fa-magnifying-glass"></i>
                    </div>
                    <div class="icone-header">
                        <c:choose>
                            <c:when test="${adm == true}">
                                <div class="perfil-tela-adm">
                                    <form action="sair" method="post">
                                        <a href="./telaadm"><i class="fa-solid fa-gear"></i></a>
                                            <a href="./carrinho"><i class="fa-solid fa-cart-shopping"></i></a>
                                        </form>
                            </c:when>
                            <c:otherwise>
                                <c:choose>
                                    <c:when test="${id_usuario != 0}">
                                        <form action="sair" method="post">
                                            <button type="submit">SAIR</button>
                                            <a href="./carrinho"><i class="fa-solid fa-cart-shopping"></i></a>
                                        </form>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="seprando-icones-input">
                                            <a href="./logar"><i class="fa-solid fa-user"></i>Cadastra-se</a>

                                        </div>
                                    </c:otherwise>
                                </c:choose>


                            </c:otherwise>
                        </c:choose>

                    </div>
                </div>
            </nav>
        </header>
        <main>
            <div class="main-top">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-s blide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="./img/R.jpg" alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="./img/o.21479.jpg" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="./img/Banner-Marca-PacoRabanne.webp" alt="Third slide">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button"
                       data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button"
                       data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <div class="produtos-main">
                <c:forEach items="${produto}" var="produto">
                    <div class="card">
                        <div class="card-image"><img style="width: 100%; height: 210px" class="img-fluid"
                                                     src="data:image/jpeg;base64,${produto.imagemBase64}" alt="100%x280"></div>
                        <div class="category">
                            <h4 class="card-title">${produto.nome} </h4>
                            <form action="produtoUnicoPag" method="post">
                                <input type="hidden" value="${produto.id_produto}" id="idProduto"
                                       name="idProduto">
                                <button type="submit" class="btn-car"><i
                                        class="fa-solid fa-cart-shopping"></i></button>
                            </form>
                        </div>
                        <div class="preco-produto">
                            <h5>R$${produto.valor}0</h5>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </main>
        <footer class="bg-body-tertiary text-center text-lg-start">
            <!-- Grid container -->
            <div class="container p-4">
                <!--Grid row-->
                <div class="row">
                    <!--Grid column-->
                    <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                        <h5 class="text-uppercase">QUEM SOMOS?</h5>

                        <p>
                            Bem-vindo a nossa loja, aqui temos varias opcoes de vinho para voce e perfumes para ficar cheiroso!
                        </p>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                        <h5 class="text-uppercase">LOCALIZACAO</h5>

                        <p>
                            nossa loja fica localizada na rua maranhao 280 
                            no centro de lodrina parana
                        </p>
                    </div>
                    <!--Grid column-->
                </div>
                <!--Grid row-->
            </div>
            <!-- Grid container -->

            <!-- Copyright -->
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.05);">
                © 2024 Ls_video
                <a class="text-body" href="https://mdbootstrap.com/">MDBootstrap.com</a>
            </div>
            <!-- Copyright -->
        </footer>




    </body>
    <script src="./js/pre_carrinho.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
    <script src="./js/home.js"></script>


</html>