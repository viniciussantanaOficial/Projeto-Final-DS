<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="style/style.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>



        <div class="wrapper fadeInDown">
            <div id="formContent">
                <!-- Tabs Titles -->

                <!-- Icon -->
                <div class="fadeIn first">
                    <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" />
                </div>

                <!-- Login Form -->
                <form action="logar" method="post">
                    <input type="text" id="usuario" class="fadeIn second" name="usuario" placeholder="login">
                    <input type="text" id="senha" class="fadeIn third" name="senha" placeholder="password">
                    <button type="submit" class="fadeIn fourth">Login In</button>
                    <c:if test="${not empty errorMensager}" >  
                        <div style="color: red;" >
                            ${errorMensager}
                        </div>
                    </c:if>
                        
                        

                    
                </form>

                <!-- Remind Passowrd -->
                <div id="formFooter">
                    <a class="underlineHover" href="./cadastro">Nao possui cadastro?</a>
                </div>
                
                <div>
                    
                </div>
            </div>
        </div>

    </body>
</html>
