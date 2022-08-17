<%@ page import="com.example.flowershop_doan.bean.Cart" %>
<%@ page import="com.example.flowershop_doan.bean.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="taglib.jsp" %>


<html>
<head>
    <title>Đặt hàng</title>
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
<% Cart cart = (Cart) session.getAttribute("cart");%>
<% User user = (User) session.getAttribute("auth");%>
<%--header--%>
<%@ include file="header.jsp" %>

<%--breakcumb--%>
<%@ include file="breakcumb.jsp" %>

<!-- begin container main checkout -->
<section class="ftco-section">
    <div class="container">
        <form action="<%=request.getContextPath()%>/add-checkout" method="POST" class="billing-form">

            <div class="row justify-content-center">
                <div class="col-xl-7 ftco-animate">

                    <!--					begin form-->
                    <h3 class="mb-4 billing-heading">Thông tin đặt hàng</h3>

                    <!--                  get  thông tin người nhận-->
                    <%if (user != null) {%>
                    <div class="row align-items-end" style="border: 1px solid rgba(0,0,0, 0.05);margin-top: 16px;">
                        <div class="col-md-6">
                            <div class="col-md-12"
                                 style="padding: 12px 0px; color: #82ae46; text-decoration: underline ">
                                *Thông tin người nhận hoa
                            </div>
                            <div class="form-group">
                                <label for="name-customer">Họ tên<span class="text-danger">*</span></label>
                                <input type="text" id="name-customer" name="name" value="<%=user.getName()%>"
                                       class="form-control"
                                       placeholder="Họ tên khách mua">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="email-customer">Email<span class="text-danger"></span></label>
                                <input type="email" id="email-customer" name="email" value="" class="form-control"
                                       placeholder="Email khách mua">
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="phone-customer">Số điện thoại<span class="text-danger">*</span></label>
                                <input type="text" name="phone" value="<%=user.getPhone()%>" id="phone-customer"
                                       class="form-control"
                                       placeholder="Số điện thoại khách mua">
                            </div>
                        </div>
                    </div>
                    <%}%>
                    <%if (user == null) {%>
                    <div class="row align-items-end" style="border: 1px solid rgba(0,0,0, 0.05);margin-top: 16px;">
                        <div class="col-md-6">
                            <div class="col-md-12"
                                 style="padding: 12px 0px; color: #82ae46; text-decoration: underline ">
                                *Thông tin người nhận hoa
                            </div>
                            <div class="form-group">
                                <label for="name-customer">Họ tên<span class="text-danger">*</span></label>
                                <input type="text" id="name-customer" name="name"
                                       class="form-control"
                                       placeholder="Họ tên khách mua">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="email-customer">Email<span class="text-danger">*</span></label>
                                <input type="email" id="email-customer" name="email" class="form-control"
                                       placeholder="Email khách mua">
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="phone-customer">Số điện thoại<span class="text-danger">*</span></label>
                                <input type="text" name="phone" id="phone-customer" class="form-control"
                                       placeholder="Số điện thoại khách mua">
                            </div>
                        </div>
                    </div>
                    <%}%>

                    <!--                  get  thông tin thêm-->
                    <div class="row align-items-end" style="border: 1px solid rgba(0,0,0, 0.05); margin-top: 16px">
                        <div class="col-md-12">
                            <div class="col-md-12"
                                 style="padding: 12px 0px; color: #82ae46; text-decoration: underline ">
                                *Thông tin thêm
                            </div>

                            <div class="w-100"></div>
                            <div class="form-group">
                                <label for="note-staff">Ghi chú thêm cho nhân viên shop</label>
                                <textarea rows="3" name="note-staff" id="note-staff" class="form-control text-left px-3"
                                          placeholder="Ghi chú những yêu cầu đặc biệt về sản phẩm"></textarea>
                            </div>
                            <div class="w-100"></div>

                            <div class="w-100"></div>
                            <div class="form-group">
                                <label for="note-shipper">Ghi chú thêm cho người giao hàng</label>
                                <textarea rows="3" id="note-shipper" name="note-deliver"
                                          class="form-control text-left px-3"
                                          placeholder="Ghi chú những hướng dẫn đặc biệt cho shipper"></textarea>
                            </div>
                            <div class="w-100"></div>

                        </div>

                    </div>
                </div>

                <!--				begin payment-->
                <div class="col-xl-5">
                    <div class="row mt-5 pt-3">
                        <div class="col-md-12 d-flex mb-5">
                            <div class="cart-detail cart-total p-3 p-md-4">
                                <h3 class="billing-heading mb-4">Tóm tắt đơn hàng</h3>
                                <p class="d-flex">
                                    <span>Tổng tiền hàng</span>
                                    <span> ${cart.totalPriceSell}đ</span>
                                    <%--                               --%>
                                </p>
                                <p class="d-flex">
                                    <span>Phí vận chuyển</span>
                                    <span>30.000đ</span>
                                </p>
                                <p class="d-flex">
                                    <span>Đã tiết kiệm</span>
                                    <%--                                --%>
                                    <span><%=cart.getTotalPriceOld() - cart.getTotalPriceSell()%>đ</span>
                                </p>
                                <hr>
                                <p class="d-flex total-price">
                                    <%--                                --%>
                                    <span>Tổng thanh toán</span>
                                    <span><%=cart.getTotalPriceSell() - 30000%>đ</span>
                                </p>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="cart-detail p-3 p-md-4">
                                <h3 class="billing-heading mb-4">Hình thức thanh toán</h3>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="radio">
                                            <label><input type="radio" checked name="optradio" class="mr-2">Thanh toán
                                                khi nhận hàng</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="radio">
                                            <label><input type="radio" name="optradio" class="mr-2">Chuyển khoản ngân
                                                hàng</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="radio">
                                            <label><input type="radio" name="optradio" class="mr-2">Ví điện tử</label>
                                        </div>
                                    </div>
                                </div>

                                <p>
                                    <button style="color: white !important;" type="submit"
                                            class="btn btn-primary py-3 px-4">Đặt hàng
                                    </button>
                                </p>
                            </div>
                        </div>
                    </div>
                </div> <!-- .col-md-8 -->
                <!--				end payment-->

            </div>
        </form><!-- END -->

    </div>
</section> <!-- .section -->

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
