<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        <link href="./style/cadastro.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="http://code.jquery.com/jquery-3.7.1.js"></script>
        <script src="http://jqueryvalidation.org/files/dist/jquery.validate.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.js"></script>
        

    </head>

    <body>

        <div class="container">
            <div class="form-image">
                <img src="./img/6405794-conta-login-ilustracao-plana-vetor.jpg" alt="tela-de-cadastro">
            </div>
            <div class="form">
                <form action="cadastrar-usuario" method="post">
                    <div class="form-header">
                        <div class="title">
                            <h1>Cadastra-se</h1>
                        </div>
                    </div>
                    <div class="input-group">
                        <div class="input-box">
                            <label for="firstname">Primeiro nome</label>
                            <input id="firstname" type="text" name="firstname" placeholder="Digite seu primeiro name" required>
                        </div>

                        <div class="input-box">
                            <label for="lastname">Usuario</label>
                            <input id="lastname" type="text" name="lastname" placeholder="Digite seu usuario" required>
                        </div>

                        <div class="input-box">
                            <label for="email">Email</label>
                            <input type="email" id="email" name="email" class="form-control form-control-lg" required />
                        </div>

                        <div class="input-box">
                            <label for="phone">Telefone</label>
                            <input id="phone" type="text" name="phone"  required>
                        </div>                       

                        <div class="input-box">
                            <label for="date">Nascimento</label>
                            <input id="date" type="date" name="date" placeholder="(XX/XX/XXXX)" required>
                        </div>
                        <div class="input-box">
                            <label for="cpf">cpf</label>
                            <input id="cpf" type="text" name="cpf"  required>
                        </div>

                        <div class="input-box">
                            <label for="passaword">Senha</label>
                            <input type="password" id="password" name="password" class="form-control form-control-lg" required=""/>
                        </div>
                    </div>

                    <div class="gender-inputs">
                        <div class="gender-title">
                            <h6>Genero</h6>
                        </div>
                        <div class="gender-group">
                            <div class="gender-input">
                                <input type="radio" id="female" name="gender">
                                <label for="female"> Feminino</label>
                            </div>

                            <div class="gender-input">
                                <input type="radio" id="female" name="gender">
                                <label for="male"> Masculino</label>
                            </div>
                        </div>
                    </div>
                    <div class="login-button">
                        <button type="submit">Entrar</button>
                    </div>
                </form>
            </div>

        </div>

    </body>
    <script
        type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.2.0/mdb.umd.min.js"
    ></script>
    <script src="./js/js-validacoes.js"></script>
    

</html>