<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="taglib.jsp" %>
<%@ page import="com.example.flowershop_doan.bean.Product" %>
<%@ page import="com.example.flowershop_doan.dao.ProductDao" %>
<c:set var="cart" value="${sessionScope.cart}"></c:set>

<html>
<head>
    <title>Chi tiết</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="assets/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/animate.css">

    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">

    <link rel="stylesheet" href="assets/css/aos.css">

    <link rel="stylesheet" href="assets/css/ionicons.min.css">

    <link rel="stylesheet" href="assets/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="assets/css/jquery.timepicker.css">


    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/icomoon.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body class="goto-here">
<%--header--%>
<%@ include file="header.jsp" %>

<%--breakcumb--%>
<%@ include file="breakcumb.jsp" %>

<!--CHI TIẾT SẢN PHẨM-->
<section class="ftco-section">
    <%
        Product p = (Product) request.getAttribute("product");
        String status = (String) request.getAttribute("status");

    %>
    <div class="container">

        <div class="row">
            <div class="col-lg-6 mb-5 ftco-animate">
                <%--                    https://tools.dalathasfarm.com/public/products/1638/1638325734/p4u-(10)wm_800x800.jpg--%>
                <a href="#"
                   class="image-popup"><img
                        src="<%=p.getImage()%>"
                        class="img-fluid" alt="Colorlib Template"></a>
            </div>
            <div class="col-lg-6 product-details pl-md-5 ftco-animate">
                <h3><%=p.getName()%>
                </h3>
                <div class="rating d-flex">
                    <p class="text-left">
                        <a href="#" class="mr-2" style="color: #000;"><%=p.getStatus()%> <span style="color: #bbb;">Đã bán </span></a>
                    </p>
                </div>
                <p class="price"><span><%=p.getPriceSell()%>đ</span></p>
                <p><%=p.getDescription()%><br>

                </p>
                <div class="row mt-4">

                    <div class="w-100"></div>
                    <div class="input-group col-md-6 d-flex mb-3 price-dc" style="text-decoration: line-through;">
	             Giá gốc : <%=p.getPriceOld()%>
                    </div>
                    <div class="w-100"></div>
                    <div class="col-md-12">
                        <p style="color: #000;">Tình trạng: <%=status%>
                        </p>
                    </div>
                </div>
                <div class="d-flex">
                    <p><a href="<%=request.getContextPath()%>/add-to-cart?pid=<%=p.getId()%>&context=cart" class="btn btn-outline-success  py-3 px-5 mr-4">Thêm
                        Vào Giỏ</a></p>
                    <p><a href="<%=request.getContextPath()%>/cart" class="btn  btn-success py-3 px-5 "
                    >Mua Ngay</a></p>

                </div>
            </div>
        </div>
    </div>

</section>

<%--SẢN PHẨM GỢI Ý--%>
<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-3 pb-3">
            <div class="col-md-12 heading-section text-center ftco-animate">
                <span class="subheading">Products</span>
                <h2 class="mb-4">SẢN PHẨM MỚI NHẤT</h2>
                <p>Dinh Thao Vy flower shop always bring the best </p>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <!--            SẢN PHẨM 1-->
            <div class="col-md-6 col-lg-3 ftco-animate">
                <div class="product">
                    <a href="#" class="img-prod"><img class="img-fluid"
                                                      src="https://tools.dalathasfarm.com/public/products/DRP6/DRP64AK112/AA0_6481wm_800x800.jpg"
                                                      alt="Colorlib Template">
                        <span class="status">30%</span>
                        <div class="overlay"></div>
                    </a>
                    <div class="text py-3 pb-4 px-3 text-center">
                        <h3><a href="#">HOA GIÁNG SINH ĐỎ</a></h3>
                        <div class="d-flex">
                            <div class="pricing">
                                <p class="price"><span class="mr-2 price-dc">180.000đ</span><span class="price-sale">126.000đ</span>
                                </p>
                            </div>
                        </div>
                        <div class="bottom-area d-flex px-3">
                            <div class="m-auto d-flex">
                                <a href="#"
                                   class="add-to-cart d-flex justify-content-center align-items-center text-center">
                                    <span><i class="ion-ios-menu"></i></span>
                                </a>
                                <a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
                                    <span><i class="ion-ios-cart"></i></span>
                                </a>
                                <a href="#" class="heart d-flex justify-content-center align-items-center ">
                                    <span><i class="ion-ios-heart"></i></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--            SẢN PHẦM 2-->
            <div class="col-md-6 col-lg-3 ftco-animate">
                <div class="product">
                    <a href="#" class="img-prod"><img class="img-fluid"
                                                      src="https://tools.dalathasfarm.com/public/products/DRP6/DRP61HW057/AA0_6436wm_800x800.jpg"
                                                      alt="Colorlib Template">
                        <div class="overlay"></div>
                    </a>
                    <div class="text py-3 pb-4 px-3 text-center">
                        <h3><a href="#">CÂY TÙNG CHÚC MỪNG</a></h3>
                        <div class="d-flex">
                            <div class="pricing">
                                <p class="price"><span>120.000đ</span></p>
                            </div>
                        </div>
                        <div class="bottom-area d-flex px-3">
                            <div class="m-auto d-flex">
                                <a href="#"
                                   class="add-to-cart d-flex justify-content-center align-items-center text-center">
                                    <span><i class="ion-ios-menu"></i></span>
                                </a>
                                <a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
                                    <span><i class="ion-ios-cart"></i></span>
                                </a>
                                <a href="#" class="heart d-flex justify-content-center align-items-center ">
                                    <span><i class="ion-ios-heart"></i></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--            SẢN PHẨM 3-->
            <div class="col-md-6 col-lg-3 ftco-animate">
                <div class="product">
                    <a href="#" class="img-prod"><img class="img-fluid"
                                                      src="https://tools.dalathasfarm.com/public/products/CB2X/CB2XMAS001/AA0_642523581wm_800x800.jpg"
                                                      alt="Colorlib Template">
                        <div class="overlay"></div>
                    </a>
                    <div class="text py-3 pb-4 px-3 text-center">
                        <h3><a href="#">COMBO HOA GIÁNG SINH ĐỎ</a></h3>
                        <div class="d-flex">
                            <div class="pricing">
                                <p class="price"><span>180.000đ</span></p>
                            </div>
                        </div>
                        <div class="bottom-area d-flex px-3">
                            <div class="m-auto d-flex">
                                <a href="#"
                                   class="add-to-cart d-flex justify-content-center align-items-center text-center">
                                    <span><i class="ion-ios-menu"></i></span>
                                </a>
                                <a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
                                    <span><i class="ion-ios-cart"></i></span>
                                </a>
                                <a href="#" class="heart d-flex justify-content-center align-items-center ">
                                    <span><i class="ion-ios-heart"></i></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--            SẢN PHẨM 4-->
            <div class="col-md-6 col-lg-3 ftco-animate">
                <div class="product">
                    <a href="#" class="img-prod"><img class="img-fluid"
                                                      src="https://tools.dalathasfarm.com/public/products/CB2W/CB2WGP61DK/AA0_6113wm_800x800.jpg"
                                                      alt="Colorlib Template">
                        <div class="overlay"></div>
                    </a>
                    <div class="text py-3 pb-4 px-3 text-center">
                        <h3><a href="#">CÂY TÙNG THƠM XANH NGÁT</a></h3>
                        <div class="d-flex">
                            <div class="pricing">
                                <p class="price"><span>120.000đ</span></p>
                            </div>
                        </div>
                        <div class="bottom-area d-flex px-3">
                            <div class="m-auto d-flex">
                                <a href="#"
                                   class="add-to-cart d-flex justify-content-center align-items-center text-center">
                                    <span><i class="ion-ios-menu"></i></span>
                                </a>
                                <a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
                                    <span><i class="ion-ios-cart"></i></span>
                                </a>
                                <a href="#" class="heart d-flex justify-content-center align-items-center ">
                                    <span><i class="ion-ios-heart"></i></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%--footer--%>
<%@ include file="footer.jsp" %>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery-migrate-3.0.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.easing.1.3.js"></script>
<script src="assets/js/jquery.waypoints.min.js"></script>
<script src="assets/js/jquery.stellar.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script src="assets/js/aos.js"></script>
<script src="assets/js/jquery.animateNumber.min.js"></script>
<script src="assets/js/bootstrap-datepicker.js"></script>
<script src="assets/js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="assets/js/google-map.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>
