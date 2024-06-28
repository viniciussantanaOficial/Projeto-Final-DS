<%-- 
    Document   : tela-checkout-pagamento
    Created on : 26/06/2024, 21:00:22
    Author     : vnici
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="./style/tela-checkout-pagamento.css" rel="stylesheet" type="text/css" />
        <link href="./style/Tela_inicial.css" rel="stylesheet" type="text/css" />

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
                        <c:choose>
                            <c:when test="${adm == true}">
                                <div class="perfil-tela-adm">
                                    <form action="sair" method="post">
                                        <a href="./login"><i class="fa-solid fa-gear"></i></a>
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

        <form id="frmEndereco" action="./checkoutPagamento" method="post">
            <div class="pagamento-tela">
                <div class="endereco">
                    <div class="endereco-title">
                        <h4>Endereço</h4>
                    </div>
                    <div class="rua-cep">
                    <div class="rua">
                        <h6>Rua</h6>
                        <input class="input" type="text" name="rua" placeholder="Rua">
                    </div>
                    <div class="cep">
                        <h6>CEP</h6>
                        <input class="input" type="text" name="cep" placeholder="CEP">
                    </div>
                </div>
                <div class="numero-bairro">
                    <div class="numero">
                        <h6>Número</h6>
                        <input class="input" type="text" name="numero" placeholder="Número">
                    </div>
                    <div class="bairro">
                        <h6>Bairro</h6>
                        <input class="input" type="text" name="bairro" placeholder="Bairro">
                    </div>
                </div>
                <div class="cidade-bairro">
                    <div class="cidade">
                        <h6>Cidade</h6>
                        <input class="input" type="text" name="cidade" placeholder="Cidade">
                    </div>
                    <div class="estado">
                        <h6>Estado</h6>
                        <input class="input" type="text" name="estado" placeholder="Estado">
                    </div>
                </div>
            </div>
                
                <div class="pagamento">
                    <h4>Pagamento</h4>
                    <div class="numero-cartao">
                        <div class="numero-letra-cartao">
                            <h6>Número do Cartão</h6>
                        </div>
                        <div class="input-numero-cartao2">
                            <input class="input" class="input-numero-cartao" id="input-numero-cartao" name="numero_cartao" type="text" placeholder="0000 0000 0000 0000">
                        </div>
                    </div>
        
                    <div class="validades-cartao">
                        <div class="nome-cartao">
                            <div class="nome-letra-cartao">
                                <h6>Nome no Cartão</h6>
                            </div>
                            <div class="input-nome-cartao">
                                <input class="input" class="input-nome-cartao" name="nome_cartao" type="text" placeholder="Nome Completo">
                            </div>
                        </div>
        
                        <div class="validade">
                            <h6>Validade</h6>
                            <div class="select-validade">
                                <select name="mes_validade" id="mes-cartao">
                                    <option value="">Mês...</option>
                                    <!-- Adicione aqui as opções dos meses -->
                                </select>
                            </div>
                            <div class="select-validade">
                                <select name="ano_validade" id="ano-cartao">
                                    <option value="">Ano...</option>
                                    <!-- Adicione aqui as opções dos anos -->
                                </select>
                            </div>
                            <div class="input-cvv">
                                <input class="input" type="text" name="cvv" placeholder="CVV">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button type="submit">Finalizar Compra</button>
        </form>
                          

    </body>

    <script src="./js/tela-checkout-pagamento.js"></script>
    <script src="./js/validar-carta.js"></script>
    
</html>
