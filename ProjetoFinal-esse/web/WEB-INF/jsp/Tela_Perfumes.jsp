<%-- 
    Document   : Tela_Perfumes
    Created on : Jun 17, 2024, 2:12:45 PM
    Author     : suiciniv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tela_Vinhos</title>
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


                    <a href="./Tela_Vinhos2">
                        <li>Vinhos </li>
                    </a>
                    <a href="./Tela_Perfumes">
                        <li>Perfumes </li>
                    </a>
                    

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
