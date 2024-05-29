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
            <link href="./style/pre_carrinho.css" rel="stylesheet" type="text/css" />
            <link href="./style/Tela_inicial.css" rel="stylesheet" type="text/css"/>
            <link href="./style/footer.css" rel="stylesheet" type="text/css" />
        </head>

        <body>


            <header>
                <nav>
                    <a class="logo" href="/">Ls_video</a>
                    <u class="nav-list">
                       

                        <li> <a href="/"></a>Vinhos </li>
                        <li> <a href="/"></a>Perfumes </li>
                        <li> <a href="/"></a>Eletronicos </li>
                        
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

                        <section class="pt-5 pb-5">
                            <div class="container">
                                <div class="row">
                                    <div class="col-6">
                                        <h3 class="mb-3">Carousel cards title </h3>
                                    </div>
                                    <div class="col-6 text-right">
                                        <a class="btn btn-primary mb-3 mr-1" href="#carouselExampleIndicators2"
                                            role="button" data-slide="prev">
                                            <i class="fa fa-arrow-left"></i>
                                        </a>
                                        <a class="btn btn-primary mb-3 " href="#carouselExampleIndicators2"
                                            role="button" data-slide="next">
                                            <i class="fa fa-arrow-right"></i>
                                        </a>
                                    </div>
                                    <div class="col-12">
                                        <div id="carouselExampleIndicators2" class="carousel slide"
                                            data-ride="carousel">

                                            <div class="carousel-inner">
                                                <div class="carousel-item active">
                                                    <div class="row">

                                                        <div class="col-md-4 mb-3">
                                                            <div class="card">
                                                                <img class="img-fluid" alt="100%x280"
                                                                    src="https://images.unsplash.com/photo-1532781914607-2031eca2f00d?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=7c625ea379640da3ef2e24f20df7ce8d">
                                                                <div class="card-body">
                                                                    <h4 class="card-title">Special title treatment</h4> <a href="./carrinho"><i class="fa-solid fa-cart-shopping"></i></a>
                                                                   

                                                                </div>

                                                            </div>
                                                        </div>
                                                        <div class="col-md-4 mb-3">
                                                            <div class="card">
                                                                <img class="img-fluid" alt="100%x280"
                                                                    src="https://images.unsplash.com/photo-1517760444937-f6397edcbbcd?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=42b2d9ae6feb9c4ff98b9133addfb698">
                                                                <div class="card-body">
                                                                    <h4 class="card-title">Special title treatment</h4><i class="fa-solid fa-cart-shopping"></i>
                                                                    

                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4 mb-3">
                                                            <div class="card">
                                                                <img class="img-fluid" alt="100%x280"
                                                                    src="https://images.unsplash.com/photo-1532712938310-34cb3982ef74?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=3d2e8a2039c06dd26db977fe6ac6186a">
                                                                <div class="card-body">
                                                                    <h4 class="card-title">Special title treatment</h4><i class="fa-solid fa-cart-shopping"></i>

                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="carousel-item">
                                                    <div class="row">

                                                        <div class="col-md-4 mb-3">
                                                            <div class="card">
                                                                <img class="img-fluid" alt="100%x280"
                                                                    src="https://images.unsplash.com/photo-1532771098148-525cefe10c23?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=3f317c1f7a16116dec454fbc267dd8e4">
                                                                <div class="card-body">
                                                                    <h4 class="card-title">Special title treatment</h4><i class="fa-solid fa-cart-shopping"></i>

                                                                </div>

                                                            </div>
                                                        </div>
                                                        <div class="col-md-4 mb-3">
                                                            <div class="card">
                                                                <img class="img-fluid" alt="100%x280"
                                                                    src="https://images.unsplash.com/photo-1532715088550-62f09305f765?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=ebadb044b374504ef8e81bdec4d0e840">
                                                                <div class="card-body">
                                                                    <h4 class="card-title">Special title treatment</h4><i class="fa-solid fa-cart-shopping"></i>

                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4 mb-3">
                                                            <div class="card">
                                                                <img class="img-fluid" alt="100%x280"
                                                                    src="https://images.unsplash.com/photo-1506197603052-3cc9c3a201bd?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=0754ab085804ae8a3b562548e6b4aa2e">
                                                                <div class="card-body">
                                                                    <h4 class="card-title">Special title treatment</h4><i class="fa-solid fa-cart-shopping"></i>
                                                                   

                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="carousel-item">
                                                    <div class="row">

                                                        <div class="col-md-4 mb-3">
                                                            <div class="card">
                                                                <img class="img-fluid" alt="100%x280"
                                                                    src="https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=ee8417f0ea2a50d53a12665820b54e23">
                                                                <div class="card-body">
                                                                    <h4 class="card-title">Special title treatment</h4><i class="fa-solid fa-cart-shopping"></i>

                                                                </div>

                                                            </div>
                                                        </div>
                                                        <div class="col-md-4 mb-3">
                                                            <div class="card">
                                                                <img class="img-fluid" alt="100%x280"
                                                                    src="https://images.unsplash.com/photo-1532777946373-b6783242f211?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=8ac55cf3a68785643998730839663129">
                                                                <div class="card-body">
                                                                    <h4 class="card-title">Special title treatment</h4><i class="fa-solid fa-cart-shopping"></i>

                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4 mb-3">
                                                            <div class="card">
                                                                <img class="img-fluid" alt="100%x280"
                                                                    src="https://images.unsplash.com/photo-1532763303805-529d595877c5?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=5ee4fd5d19b40f93eadb21871757eda6">
                                                                <div class="card-body">
                                                                    <h4 class="card-title">Special title treatment</h4><i class="fa-solid fa-cart-shopping"></i>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>

                    </div>

                    <section class="pt-5 pb-5">
                        <div class="container">
                            <div class="row">
                                <div class="col-6">
                                    <h3 class="mb-3">Carousel cards title </h3>
                                </div>
                                <div class="col-6 text-right">
                                    <a class="btn btn-primary mb-3 mr-1" href="#carouselExampleIndicators2"
                                        role="button" data-slide="prev">
                                        <i class="fa fa-arrow-left"></i>
                                    </a>
                                    <a class="btn btn-primary mb-3 " href="#carouselExampleIndicators2" role="button"
                                        data-slide="next">
                                        <i class="fa fa-arrow-right"></i>
                                    </a>
                                </div>
                                <div class="col-12">
                                    <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">

                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <div class="row">

                                                    <div class="col-md-4 mb-3">
                                                        <div class="card">
                                                            <img class="img-fluid" alt="100%x280"
                                                                src="https://images.unsplash.com/photo-1532781914607-2031eca2f00d?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=7c625ea379640da3ef2e24f20df7ce8d">
                                                            <div class="card-body">
                                                                <h4 class="card-title">Special title treatment</h4><i class="fa-solid fa-cart-shopping"></i>
                                                                

                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <div class="card">
                                                            <img class="img-fluid" alt="100%x280"
                                                                src="https://images.unsplash.com/photo-1517760444937-f6397edcbbcd?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=42b2d9ae6feb9c4ff98b9133addfb698">
                                                            <div class="card-body">
                                                                <h4 class="card-title">Special title treatment</h4><i class="fa-solid fa-cart-shopping"></i>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <div class="card">
                                                            <img class="img-fluid" alt="100%x280"
                                                                src="https://images.unsplash.com/photo-1532712938310-34cb3982ef74?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=3d2e8a2039c06dd26db977fe6ac6186a">
                                                            <div class="card-body">
                                                                <h4 class="card-title">Special title treatment</h4><i class="fa-solid fa-cart-shopping"></i>

                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="carousel-item">
                                                <div class="row">

                                                    <div class="col-md-4 mb-3">
                                                        <div class="card">
                                                            <img class="img-fluid" alt="100%x280"
                                                                src="https://images.unsplash.com/photo-1532771098148-525cefe10c23?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=3f317c1f7a16116dec454fbc267dd8e4">
                                                            <div class="card-body">
                                                                <h4 class="card-title">Special title treatment</h4><i class="fa-solid fa-cart-shopping"></i>

                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <div class="card">
                                                            <img class="img-fluid" alt="100%x280"
                                                                src="https://images.unsplash.com/photo-1532715088550-62f09305f765?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=ebadb044b374504ef8e81bdec4d0e840">
                                                            <div class="card-body">
                                                                <h4 class="card-title">Special title treatment</h4><i class="fa-solid fa-cart-shopping"></i>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <div class="card">
                                                            <img class="img-fluid" alt="100%x280"
                                                                src="https://images.unsplash.com/photo-1506197603052-3cc9c3a201bd?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=0754ab085804ae8a3b562548e6b4aa2e">
                                                            <div class="card-body">
                                                                <h4 class="card-title">Special title treatment</h4><i class="fa-solid fa-cart-shopping"></i>

                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="carousel-item">
                                                <div class="row">

                                                    <div class="col-md-4 mb-3">
                                                        <div class="card">
                                                            <img class="img-fluid" alt="100%x280"
                                                                src="https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=ee8417f0ea2a50d53a12665820b54e23">
                                                            <div class="card-body">
                                                                <h4 class="card-title">Special title treatment</h4><i class="fa-solid fa-cart-shopping"></i>

                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <div class="card">
                                                            <img class="img-fluid" alt="100%x280"
                                                                src="https://images.unsplash.com/photo-1532777946373-b6783242f211?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=8ac55cf3a68785643998730839663129">
                                                            <div class="card-body">
                                                                <h4 class="card-title">Special title treatment</h4><i class="fa-solid fa-cart-shopping"></i>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <div class="card">
                                                            <img class="img-fluid" alt="100%x280"
                                                                src="https://images.unsplash.com/photo-1532763303805-529d595877c5?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=5ee4fd5d19b40f93eadb21871757eda6">
                                                            <div class="card-body">
                                                                <h4 class="card-title">Special title treatment</h4><i class="fa-solid fa-cart-shopping"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                <div class="proximo">
                    <button class="button-proximo">Proximo</button>
                </div>

                </div>




            </main>



            <footer class="bg-body-tertiary text-center">

                <div class="container p-4">

                    <section class="mb-4">

                        <a data-mdb-ripple-init class="btn btn-outline btn-floating m-1" href="#!" role="button"><i
                                class="fab fa-facebook-f"></i></a>


                        <a data-mdb-ripple-init class="btn btn-outline btn-floating m-1" href="#!" role="button"><i
                                class="fab fa-twitter"></i></a>


                        <a data-mdb-ripple-init class="btn btn-outline btn-floating m-1" href="#!" role="button"><i
                                class="fab fa-google"></i></a>


                        <a data-mdb-ripple-init class="btn btn-outline btn-floating m-1" href="#!" role="button"><i
                                class="fab fa-instagram"></i></a>


                        <a data-mdb-ripple-init class="btn btn-outline btn-floating m-1" href="#!" role="button"><i
                                class="fab fa-linkedin-in"></i></a>


                        <a data-mdb-ripple-init class="btn btn-outline btn-floating m-1" href="#!" role="button"><i
                                class="fab fa-github"></i></a>
                    </section>



                    <section class="">
                        <form action="">

                            <div class="row d-flex justify-content-center">

                                <div class="col-auto">
                                    <p class="pt-2">
                                        <strong>Sign up for our newsletter</strong>
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
                                        Subscribe
                                    </button>
                                </div>

                            </div>

                        </form>
                    </section>



                    <section class="mb-4">
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt distinctio earum
                            repellat quaerat voluptatibus placeat nam, commodi optio pariatur est quia magnam eum
                            harum corrupti dicta, aliquam sequi voluptate quas.
                        </p>
                    </section>



                    <section class="">

                        <div class="row">

                            <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                                <h5 class="text-uppercase">Links</h5>

                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a class="text-body" href="#!">Link 1</a>
                                    </li>
                                    <li>
                                        <a class="text-body" href="#!">Link 2</a>
                                    </li>
                                    <li>
                                        <a class="text-body" href="#!">Link 3</a>
                                    </li>
                                    <li>
                                        <a class="text-body" href="#!">Link 4</a>
                                    </li>
                                </ul>
                            </div>



                            <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                                <h5 class="text-uppercase">Links</h5>

                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a class="text-body" href="#!">Link 1</a>
                                    </li>
                                    <li>
                                        <a class="text-body" href="#!">Link 2</a>
                                    </li>
                                    <li>
                                        <a class="text-body" href="#!">Link 3</a>
                                    </li>
                                    <li>
                                        <a class="text-body" href="#!">Link 4</a>
                                    </li>
                                </ul>
                            </div>



                            <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                                <h5 class="text-uppercase">Links</h5>

                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a class="text-body" href="#!">Link 1</a>
                                    </li>
                                    <li>
                                        <a class="text-body" href="#!">Link 2</a>
                                    </li>
                                    <li>
                                        <a class="text-body" href="#!">Link 3</a>
                                    </li>
                                    <li>
                                        <a class="text-body" href="#!">Link 4</a>
                                    </li>
                                </ul>
                            </div>

                            <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                                <h5 class="text-uppercase">Links</h5>

                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a class="text-body" href="#!">Link 1</a>
                                    </li>
                                    <li>
                                        <a class="text-body" href="#!">Link 2</a>
                                    </li>
                                    <li>
                                        <a class="text-body" href="#!">Link 3</a>
                                    </li>
                                    <li>
                                        <a class="text-body" href="#!">Link 4</a>
                                    </li>
                                </ul>
                            </div>

                        </div>

                    </section>

                </div>





            </footer>





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
        <script src="./js/home.js"></script>

        </html>