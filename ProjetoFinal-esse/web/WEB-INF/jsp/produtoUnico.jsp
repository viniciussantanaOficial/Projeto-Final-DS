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
                <main class="container-produto-unico">
                    <div class="card-right">
                        <div class="separar-carrinho">
                            <div class="card-produto">
                                <div class="cartao-image">
                                    <img class="img-fluid" src="data:image/jpeg;base64,${produto.imagemBase64}"
                                        alt="${produto.nome}">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carrinho-lateral">
                            <div class="meu-carrinho">
                                <h3>Seu carrinho</h3>
                            </div>
                            <div class="infos-text">
                                <div class="category-cards">
                                    <h4 class="card-title">${produto.nome}</h4>
                                    <div class="item-carrinho">
                                        <h6>1 item</h6>
                                    </div>
                                </div>
                                <div class="valor-total-produtos">
                                    <h6>Valor total do produto</h6>
                                    <div class="preco-total">
                                        <h6>R$${produto.valor}</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="card-right-low">
                                <div class="buttons">
                                    <div class="button1">
                                        <a href="./home"><button>Continuar comprando</button></a>
                                    </div>
                                     <form action="add-carrinho" method="post" class="button2">
                                        <input type="hidden" name="idProduto" value="${produto.id_produto}" id="idProduto"> 
                                        <button type="submit">Adicionar ao carrinho</button>
                                    </form
                                </div>
                            </div>
                        </div>


                </main>

                <footer class="bg-body-tertiary text-center">
                    <div id="footer-mainclass" class="container2 p-4">
                        <section class="">
                            <form action="">
                                <div class="row d-flex justify-content-center">
                                    <div class="col-auto">
                                        <p class="pt-2">
                                            <strong>Email de contanto</strong>
                                        </p>
                                    </div>
                                    <div class="col-md-5 col-12">
                                        <div data-mdb-input-init class="form-outline mb-4">
                                            <input type="email" id="form5Example24" class="form-control" />
                                            <label class="form-label" for="form5Example24">Email address</label>
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <button data-mdb-ripple-init type="submit" class="btn btn-outline mb-4">
                                            Enviar
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </section>
                        <section class="mb-4">
                            <p>
                                
                            </p>
                        </section>
                        <section class="">
                            <div class="row">
                                <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                                    
                                    <c:choose>
                            <c:when test="${id_usuario != 0}">
                                <a href="./logar"><i class="fa-solid fa-user"></i></a>
                                </c:when>
                                <c:otherwise>
                             <h5 class="text-uppercase">Links</h5>
                                    <ul class="list-unstyled mb-0">
                                        <li>
                                            <a class="text-body" href="./login">Login</a>
                                        </li>
                                        <li>
                                            <a class="text-body" href="./cadastro">Cadastro</a>
                                        </li>
                                        <li>
                                            <a class="text-body" href="./home">Pagina inicial</a>
                                        </li>
                                    </ul>
                            </c:otherwise>
                        </c:choose>
                                    
                                </div>     
                            </div>
                        </section>
                    </div>
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