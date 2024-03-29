<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.flowershop_doan.bean.Product" %>
<%@ page import="com.example.flowershop_doan.dao.ProductDao" %>
<%@ page import="com.example.flowershop_doan.bean.Cart" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="taglib.jsp" %>
<jsp:useBean id="a" class="com.example.flowershop_doan.dao.ProductDao" scope="request"></jsp:useBean>

<c:set var="cart" value="${sessionScope.cart}"></c:set>
<% String errorMessage = (String) request.getAttribute("error"); %>
<%--<% String classActive = (String) request.getAttribute("active"); %>--%>


<html>
<head>
    <title>Trang chủ</title>
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


    <style>
        .ftco-section {
            padding: 4em 0;
            position: relative;
        }

        #hoa-sale {
            float: left;
            width: 300px;
            height: 300px;
            margin: auto;

        }
    </style>
</head>
<%if (errorMessage != null) {%>

<body class="goto-here modal-open">

<div class="modal fade modal-form show" style="display: block;">
    <%--    <%System.out.println(showClass + style);%>--%>
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle">Thông báo</h5>
                </div>
                <div class="modal-body">
                    <span class="alert"><%=errorMessage%></span>
<%--                    <span>*Note: Về trang chủ và thao tác lại</span>--%>
                </div>
                <div class="modal-footer">
                    <a href="<%=request.getContextPath()%>/home" type="button" class="btn btn-secondary">➦ Về trang chủ</a>

                    <button  onclick="history.back()" type="button" class="btn  btn-primary" data-dismiss="modal">Ok, tiếp tục!</button>

                </div>
            </div>
        </div>
</div>
<%}%>

<%if (errorMessage ==null || errorMessage.equals("")) {%>
<body class="goto-here">

<c:set var="auth" value="${sessionScope.auth}"></c:set>
<%--<c:set var="cart" value="${sessionScope.cart}"></c:set>--%>


<%--header--%>
<%@ include file="header.jsp" %>

<%--banner--%>
<section id="home-section" class="hero">
    <div class="home-slider owl-carousel">
        <div class="slider-item" style="background-image: url(assets/Image/fl1.jpg);">
            <div class="overlay"></div>
            <div class="container">
                <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

                    <div class="col-md-12 ftco-animate text-center">
                        <div class="text1">

                            <h1 class="mb-0 bread">HOA TƯƠI CHO NGÀY ĐẸP</h1>
                        </div>
                        <p><a href="#" class="btn btn-primary">Xem Chi Tiết</a></p>
                    </div>

                </div>
            </div>
        </div>

        <div class="slider-item" style="background-image: url(assets/Image/fl2.jpg);">
            <div class="overlay"></div>
            <div class="container">
                <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

                    <div class="col-sm-12 ftco-animate text-center">
                        <div class="text1">

                            <h1 class="mb-0 bread">HOA TƯƠI CHO NGÀY ĐẸP</h1>
                        </div>
                        <p><a href="#" class="btn btn-primary">Xem Chi Tiết</a></p>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>

<%--introduce (giới thiệu dịch vụ)--%>
<section class="ftco-section">
    <div class="container">
        <div class="row no-gutters ftco-services">
            <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services mb-md-0 mb-4">
                    <div class="icon bg-color-1 active d-flex justify-content-center align-items-center mb-2">
                        <span class="flaticon-shipped"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">Miễn Phí Giao Hàng</h3>
                        <span>Khi mua hàng với hóa đơn trên 250.00đ</span>
                    </div>
                </div>
            </div>

            <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services mb-md-0 mb-4">
                    <div class="icon bg-color-3 d-flex justify-content-center align-items-center mb-2">
                        <span class="flaticon-award"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">Chất Lượng Tuyệt Vời</h3>
                        <span>Luôn đảm bảo chất lượng </span>
                    </div>
                </div>
            </div>
            <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services mb-md-0 mb-4">
                    <div class="icon bg-color-4 d-flex justify-content-center align-items-center mb-2">
                        <span class="flaticon-customer-service"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">Hỗ Trợ</h3>
                        <span>Sẵn sàng hỗ trợ bạn 24/7</span>
                    </div>
                </div>
            </div>
            <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services mb-md-0 mb-4">
                    <div class="icon bg-color-2 d-flex justify-content-center align-items-center mb-2">
                        <span class="flaticon-diet"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">Luôn Tươi</h3>
                        <span> Tươi như rau củ của bạn</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%--list categories--%>
<%@ include file="category.jsp" %>

<%--list products--%>
<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-3 pb-3">
            <div class="col-md-12 heading-section text-center ftco-animate">
                <span class="subheading">Sản Phẩm Nổi Bật</span>
                <h2 class="mb-4">Tất Cả Sản Phẩm Của Chúng Tôi</h2>
                <p>Hoa luôn làm cho mọi người tốt hơn, hạnh phúc hơn, và hữu ích hơn. Chúng là ánh nắng mặt trời, thức
                    ăn và thuốc cho tâm hồn</p>
            </div>
        </div>
    </div>
    <%--    <%@ include file="products.jsp" %>--%>
    <section class="ftco-section">
        <div class="container">

            <div class="row">
                <%--            BẮT ĐẦU USEBEAN--%>

                    <%
                        List<Product> list = (ArrayList<Product>) request.getAttribute("listPage");
                        String status = "";

                        for (Product p : list) {
                            status = (p.getStatus() == 0) ? "Hết hàng" : "Còn hàng";

                    %>
                    <div class="col-md-6 col-lg-3 ftco-animate">
                        <div class="product">
                            <a href="<%=request.getContextPath()%>/detail?pid=<%=p.getId()%>" class="img-prod"><img class="img-fluid"
                            <%--                                                                          hình ảnh sp--%>
                                                                                      src="<%=p.getImage()%>"
                                                                                      alt="Colorlib Template">
                                <span class="status"><%=status%></span>
                                <div class="overlay"></div>
                            </a>
                            <div class="text py-3 pb-4 px-3 text-center">
                                <%--                            TÊN SP--%>
                                <h3><a href="#"><%=p.getName()%>
                                </a></h3>
                                <div class="d-flex">
                                    <div class="pricing">
                                        <p class="price"><span class="mr-2 price-dc"><%=p.getPriceOld()%></span><span
                                                class="price-sale"><%=p.getPriceSell()%></span>
                                        </p>
                                    </div>
                                </div>

                                <!--                        phần 3 icon nổi lên khi hoover vào sản phẩm-->
                                <div class="bottom-area d-flex px-3">
                                    <div class="m-auto d-flex">
                                        <a href="<%=request.getContextPath()%>/detail?pid=<%=p.getId()%>"
                                           class="add-to-cart d-flex justify-content-center align-items-center text-center">
                                            <span><i class="ion-ios-menu"></i></span>
                                        </a>
                                        <a href="<%=request.getContextPath()%>/add-to-cart?pid=<%=p.getId()%>&context=home" class="buy-now d-flex justify-content-center align-items-center mx-1">
                                            <span><i class="ion-ios-cart"></i></span>
                                        </a>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% }
                    %>
            </div>
            <div class="row mt-5">
                <div class="col text-center">
                    <div  class="block-27">
                        <ul>
                            <c:forEach begin="1" end="${a.getNumberPage(8)}" var="i">
                                <li><a href="<%=request.getContextPath()%>/home?page=${i}">${i}</a></li>
                            </c:forEach>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
</section>

<%--advertise (quảng cáo khuyến mãi)--%>
<section class="ftco-section img" style="background-image: url(assets/Image/banner2.jpg);">
    <div class="container">
        <div class="row justify-content-end">
            <img id="hoa-sale" src="assets/Image/hoatuoi.jpg" style=" margin-left: 174px;margin-top: 20px;">
            <div class="col-md-6 heading-section ftco-animate deal-of-the-day ftco-animate">

                <span class="subheading">Giá Tốt Cho Bạn</span>
                <h2 class="mb-4">Chốt Deal ngay hôm nay</h2>
                <p>Hoa càng lẻ loi càng khoe sắc, giá trị của đóa hoa không nằm ở màu sắc mà ở hương thơm. Trong bất cứ
                    hoàn cảnh nào hãy mạnh mẽ như loài hoa dại. Sống được mọi nơi,nắng gió mưa cũng không là trở ngại.
                    Nơi này có nắng, có mưa, có gió và có đóa hoa hồng mà tôi nhất mực say mê</p>
                <h3><a href="#">Hoa Tươi</a></h3>
                <span class="price">200.00đ<a href="#">  chỉ 150.00đ hiện tại</a></span>
                <div id="timer" class="d-flex mt-5">
                    <div class="time" id="Ngày"></div>
                    <div class="time pl-3" id="Giò"></div>
                    <div class="time pl-3" id="Phút"></div>
                    <div class="time pl-3" id="Giây"></div>
                </div>
            </div>
        </div>
    </div>
</section>

<%--feedback (phản hồi)--%>
<section class="ftco-section testimony-section">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 heading-section ftco-animate text-center">
                <span class="subheading">Phản Hồi</span>
                <h2 class="mb-4">Những Khách Hàng Thân Thiết Của Chúng Tôi Đã Nói Rằng</h2>
                <p>Tưởng không ưng mà ưng không tưởng,dịch vụ tuyệt vời, sản phẩm đúng với giới thiệu của shop</p>
            </div>
        </div>
        <div class="row ftco-animate">
            <div class="col-md-12">
                <div class="carousel-testimony owl-carousel">
                    <div class="item">
                        <div class="testimony-wrap p-4 pb-5">
                            <div class="user-img mb-5" style="background-image: url(assets/Image/custome/cus1.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                            </div>
                            <div class="text text-center">
                                <p class="mb-5 pl-4 line">Chị mình rất vui khi nhận được hoa, cảm ơn shop rất nhiều</p>
                                <p class="name">Quyên</p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimony-wrap p-4 pb-5">
                            <div class="user-img mb-5" style="background-image: url(assets/Image/custome/cus3.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                            </div>
                            <div class="text text-center">
                                <p class="mb-5 pl-4 line">Người yêu của mình rất thích hoa của Shop, lần sau sẽ tiếp tục
                                    ủng hộ</p>
                                <p class="name">Tú</p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimony-wrap p-4 pb-5">
                            <div class="user-img mb-5" style="background-image: url(assets/Image/custome/cus5.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                            </div>
                            <div class="text text-center">
                                <p class="mb-5 pl-4 line">Hoa hồng của shop rất tươi,mẹ của mình đã khóc khi nhận được
                                    món quà này</p>
                                <p class="name">Nga</p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimony-wrap p-4 pb-5">
                            <div class="user-img mb-5" style="background-image: url(assets/Image/custome/cus6.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                            </div>
                            <div class="text text-center">
                                <p class="mb-5 pl-4 line">Nhân viên giao hàng của shop rất dễ thương và tinh tế</p>
                                <p class="name">Mỹ</p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimony-wrap p-4 pb-5">
                            <div class="user-img mb-5" style="background-image: url(assets/Image/custome/cus7.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                            </div>
                            <div class="text text-center">
                                <p class="mb-5 pl-4 line">Phụ nữ đôi khi cũng nên tự thưởng cho mình 1 bó hoa</p>
                                <p class="name">Trân</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%--Quick consultation (tư vấn nhanh)--%>
<%@ include file="footer.jsp" %>

<%}%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
<script>

</script>

</body>
</html>
