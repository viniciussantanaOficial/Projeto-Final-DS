<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Welcome to Spring Web MVC project</title>
  <link rel="stylesheet" type="text/css" href="./../style/cadastro.css">
</head>

<body>

  <div class="container">
    <div class="form-image">
      <img src="./../img/undraw_Online_test_re_kyfx.png" alt="aaa"/>
    </div>
    <div class="form">
      <form action="#" method="post">

        <div class="form-header">
          <div class="title">
            <h1>Cadastrar-se</h1>
          </div>
          <div class="login-button">
            <button type="button"><a href="#">Entrar</a></button>
          </div>
        </div>

        <div class="input-box">
          <label for="firstname">Primeiro nome</label>
          <input type="text" id="firstname" name="firstname" placeholder="Digite seu nome" required>
        </div>

        <div class="input-box">
          <label for="lastname">Segundo nome</label>
          <input type="text" id="lastname" name="lastname" placeholder="Digite seu sobrenome" required>
        </div>

        <div class="input-box">
          <label for="email">Email</label>
          <input type="email" id="email" name="email" placeholder="Digite seu email" required>
        </div>

        <div class="input-box">
          <label for="number">Celular</label>
          <input type="text" id="number" name="number" placeholder="(xx) xxxx-xxxx" required>
        </div>

        <div class="input-box">
          <label for="password">Senha</label>
          <input type="password" id="password" name="password" placeholder="Digite sua senha" required>
        </div>
    </div>

    <div class="gender-inputs">
      <div class="gender-title">
        <h6>Gênero</h6>
      </div>

      <div class="gender-group">
        <div class="gender-input">
          <input type="radio" id="female" name="gender">
          <label for="female">Feminino</label>
        </div>

        <div class="gender-input">
          <input type="radio" id="female" name="gender">
          <label for="male">Masculino</label>
        </div>
      </div>
    </div>

    <div class="continue-button">
      <button><a href="./login">Continuar</a></button>
    </div>
    </form>
  </div>

</body>

</html>