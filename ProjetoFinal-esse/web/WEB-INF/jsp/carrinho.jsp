<%-- Document : carrinho.jsp Created on : 20/05/2024, 15:27:43 Author : Senai --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="./style/carrinho-chekout.css" rel="stylesheet" type="text/css" />
        <script src="https://kit.fontawesome.com/446d1f4167.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css" integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc=" crossorigin="anonymous" />
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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
                    <a href="./pre_carrinho">
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

        <div class="container">
            <div class="row">
                <div class="col-xl-8">
                    <div class="card border shadow-none">
                        <div class="card-body">
                            <c:forEach items="${produto}" var="p">

                                <div class="d-flex align-items-start border-bottom pb-3">
                                    <div class="me-4">
                                        <img style="width: 400px; height: 210px" class="avatar-lg rounded"
                                             src="data:image/jpeg;base64,${p.id_produto.imagemBase64}" alt="100%x280"> 
                                    </div>
                                    <div class="flex-grow-1 align-self-center overflow-hidden">
                                        <div>
                                            <h5 class="text-truncate font-size-18"><a href="#" class="text-dark">${p.id_produto.nome}</a></h5>
                                            <p class="text-muted mb-0">
                                                <i class="bx bxs-star text-warning"></i>
                                                <i class="bx bxs-star text-warning"></i>
                                                <i class="bx bxs-star text-warning"></i>
                                                <i class="bx bxs-star text-warning"></i>
                                                <i class="bx bxs-star-half text-warning"></i>
                                            </p>
                                            <p class="mb-0 mt-1">Color : <span class="fw-medium">Gray</span></p>
                                        </div>
                                    </div>

                                    <form action="deletar-carrinho" method="post" class="flex-shrink-0 ms-2">
                                        <input type="hidden" id="idProduto" name="idProduto" value="${p.id_produto.id_produto}">
                                        <ul class="list-inline mb-0 font-size-16">
                                            <li class="list-inline-item">
                                                <button type="submit" class="text-muted px-1">
                                                    <i class="mdi mdi-trash-can-outline"></i>
                                                </button>
                                            </li>
                                            <li class="list-inline-item">

                                            </li>
                                        </ul>
                                    </form>
                                </div>
                            </c:forEach>
                            <div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="mt-3">
                                            <p class="text-muted mb-2">Price</p>
                                            <h5 class="mb-0 mt-2"><span class="text-muted me-2"><del class="font-size-16 fw-normal">$500</del></span>$450</h5>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="mt-3">
                                            <p class="text-muted mb-2">Quantity</p>
                                            <div class="d-inline-flex">
                                                <select class="form-select form-select-sm w-xl">
                                                    <option value="1">1</option>
                                                    <option value="2" selected="">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                    <option value="6">6</option>
                                                    <option value="7">7</option>
                                                    <option value="8">8</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="mt-3">
                                            <p class="text-muted mb-2">Total</p>
                                            <h5>$900</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>





                    <div class="row my-4">
                        <div class="col-sm-6">
                            <a href="ecommerce-products.html" class="btn btn-link text-muted">
                                <i class="mdi mdi-arrow-left me-1"></i> Continue Shopping </a>
                        </div> <!-- end col -->
                        <div class="col-sm-6">
                            <div class="text-sm-end mt-2 mt-sm-0">
                                <a href="ecommerce-checkout.html" class="btn btn-success">
                                    <i class="mdi mdi-cart-outline me-1"></i> Checkout </a>
                            </div>
                        </div> <!-- end col -->
                    </div> <!-- end row-->
                </div>

                <div class="col-xl-4">
                    <div class="mt-5 mt-lg-0">
                        <div class="card border shadow-none">
                            <div class="card-header bg-transparent border-bottom py-3 px-4">
                                <h5 class="font-size-16 mb-0">Order Summary <span class="float-end">#MN0124</span></h5>
                            </div>
                            <div class="card-body p-4 pt-2">

                                <div class="table-responsive">
                                    <table class="table mb-0">
                                        <tbody>
                                            <tr>
                                                <td>Sub Total :</td>
                                                <td class="text-end">$ 780</td>
                                            </tr>
                                            <tr>
                                                <td>Discount : </td>
                                                <td class="text-end">- $ 78</td>
                                            </tr>
                                            <tr>
                                                <td>Shipping Charge :</td>
                                                <td class="text-end">$ 25</td>
                                            </tr>
                                            <tr>
                                                <td>Estimated Tax : </td>
                                                <td class="text-end">$ 18.20</td>
                                            </tr>
                                            <tr class="bg-light">
                                                <th>Total :</th>
                                                <td class="text-end">
                                                    <span class="fw-bold">
                                                        $ 745.2
                                                    </span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- end table-responsive -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end row -->

        </div>
</html>