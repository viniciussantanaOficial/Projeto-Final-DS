<%-- Document : Painel_Adm Created on : 10/06/2024, 14:35:16 Author : Senai --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="C ontent-Type" content="text/html; charset=UTF-8">
            <title>Welcome to Spring Web MVC project</title>
            <link href="./style/painel-adm.css" rel="stylesheet" type="text/css" />
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
                crossorigin="anonymous"></script>
            <script src="https://kit.fontawesome.com/446d1f4167.js" crossorigin="anonymous"></script>
        </head>

        <body>
            <header>
                <div class="header-top">
                    <h1>PAINEL ADM</h1>
                </div>
            </header>

            <main>

                <div class="main-left">
                    <div class="user-painel-adm">
                        <a class="user-p-adm" href=""><i class="fa-solid fa-user"></i>
                            <h2>Login</h2>
                        </a>
                    </div>
                    <div class="home-adm">
                        <a class="home-p-adm" href="./home"><i class="fa-solid fa-house"></i>
                            <h2>Home</h2>
                        </a>
                    </div>
                </div>

                <div class="main-top">
                    <div class="gerenciar-main">
                        <div class="separar-title">
                            <h3> Gerenciar produtos</h3>
                        </div>
                        <div class="inputs-adm">
                            <form action="cadastrarProduto" method="post" enctype="multipart/form-data">
                                <div class="nome-produto">
                                    <h3>Nome do produto</h3>
                                    <input type="text" name="nome-produto" >
                                </div>
                                <div class="Categoria-produto">
                                    <h3>Categoria do produto</h3>
                                    <select name="select-categoria">
                                        <option value="1">Vinhos</option>
                                        <option value="2">Perfumes</option>
                                        <option value="3">Eletronicos</option>
                                    </select>
                                </div>
                                <div class="escolher-arquivo">
                                    <h3>Escolha um arquivo</h3>
                                    <input type="file" name="part" accept="image/png">
                                </div>
                                <div class="Preco-produto">
                                    <h3>preco do produto</h3>
                                    <input type="number" step="0.01" name="valor" >
                                </div>
                                <div>
                                    <button type="submit">Cadastrar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                </div>

                <div class="main-top">
                    <div class="main-adm">
                        <h3> Gerenciar usuarios</h3>
                    </div>
                    <div class="adicionar-produtos">
                        .
                    </div>
                </div>

                <div class="main-top">
                    <div class="main-adm">
                        <h3> Adicionar produtos</h3>
                    </div>
                    <div class="adicionar-produtos">
                        .
                    </div>
                </div>


            </main>


        </body>

        </html>