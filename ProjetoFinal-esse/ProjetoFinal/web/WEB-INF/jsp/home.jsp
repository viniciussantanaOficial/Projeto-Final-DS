<%-- Document : home.jsp Created on : 13/05/2024, 14:10:42 Author : Senai --%>

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
            <link href="./style/home-main.css" rel="stylesheet" type="text/css" />
            <link href="./style/home.css" rel="stylesheet" type="text/css" />
        </head>

        <body>
a

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
                <div class="main-top">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
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
                                <img class="d-block w-100" src="..." alt="Third slide">
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

                    <div class="produtos-main">
                        <div class="card-deck">
                            <div class="card">
                                <img  class="card-img-top" src="./img/shopping 1.png" alt="Card image cap">
                                
                                <div class="card-body">
                                    <h5 class="card-title">Vinho reservado</h5>
                                    <p class="card-text"></p>
                                </div>
                               
                            </div>
                            <div class="card">
                                <img class="card-img-top" src="./img/shopping 1.png" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">Vinho reservado</h5>
                                    <p class="card-text"></p>
                                </div>
                                
                            </div>
                            <div class="card">
                                <img class="card-img-top" src="./img/shopping 1.png" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">Vinho reservado</h5>
                                    <p class="card-text"></p>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    
            </main>

            <footer>

            </footer>

a
        </body>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>

        </html>