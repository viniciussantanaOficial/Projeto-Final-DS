<%-- 
    Document   : newjsptela-listagem-produtos
    Created on : 26/06/2024, 14:51:13
    Author     : Senai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        
        <div class="main-left">
                    <div class="user-painel-adm">
                        <a class="user-p-adm" href="./login"><i class="fa-solid fa-user"></i>
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
                            <form action="deletarProduto" method="post" enctype="multipart/form-data">
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
                            </form>
                        </div>
                    </div>
                </div>
          
        
    </body>
</html>
