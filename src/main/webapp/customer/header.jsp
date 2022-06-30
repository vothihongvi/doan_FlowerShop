
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="taglib.jsp" %>


<div class="py-1 bg-primary">
    <div class="container">
        <div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
            <div class="col-lg-12 d-block">
                <div class="row d-flex">
                    <div class="col-md pr-4 d-flex topper align-items-center">
                        <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
                        <span class="text">+032 451 215 </span>
                    </div>
                    <div class="col-md pr-4 d-flex topper align-items-center">
                        <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
                        <span class="text">contact@flower.vn</span>
                    </div>
                    <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right ">
                        <div style="width: 100%;" >
                            <form >
                                <input style="width: 70%;" type="text" placeholder="Tìm kiếm..." name="search">
                                <input type="submit" value="Tìm kiếm" class="submit">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--END first-->

<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="home.jsp">FLOWER SHOP</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a href="home.jsp" class="nav-link">Trang Chủ</a></li>
                <li class="nav-item dropdown"><a href="shop.jsp" class="nav-link">Cửa Hàng</a></li>
                <li class="nav-item"><a href="contact.jsp" class="nav-link">Liên Lạc</a></li>
                <li class="nav-item" id="show-login"><a href="#" class="nav-link">Đăng Nhập</a></li>
                <li class="nav-item cta cta-colored"><a href="cart.jsp" class="nav-link"><span
                        class="icon-shopping_cart"></span>[0]</a></li>

            </ul>
        </div>
    </div>
</nav>
<!-- END nav -->

<%--Modal Login--%>
<%@ include file="login.jsp" %>

<%--Modal SignUp--%>
<%@ include file="signup.jsp" %>

<%--Modal ForgetPassword--%>
<%@ include file="forgetpass.jsp" %>

