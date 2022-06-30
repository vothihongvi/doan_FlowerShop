<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="taglib.jsp" %>

<html>
<head>
    <title>Cửa hàng</title>
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

<!--  Begin cart-->
<section class="ftco-section ftco-cart">
    <div class="container">
        <div class="row">
            <div class="col-md-12 ftco-animate">
                <div class="cart-list">
                    <table class="table">
                        <thead class="thead-primary">
                        <tr class="text-center">
                            <th>&nbsp;</th>
                            <th>&nbsp;</th>
                            <th>Tên sản phẩm</th>
                            <th>Đơn giá</th>
                            <th>Số lượng</th>
                            <th>Tổng cộng</th>
                        </tr>
                        </thead>
                        <!--							Product-->
                        <tbody>
                        <tr class="text-center">
                            <td class="product-remove"><a href="#"><span class="ion-ios-close"></span></a></td>

                            <td class="image-prod">
                                <div class="img"
                                     style="background-image:url('https://tools.dalathasfarm.com/public/products/1638/1638325734/p4u-(10)wm_800x800.jpg');"></div>
                            </td>

                            <td class="product-name">
                                <h3>HOA VIOLET CHÂU PHI</h3>
                                <p>1 chậu Hoa Violet Châu Phi (màu ngẫu nhiên)
                                    + 1 bộ trang trí
                                </p>
                            </td>

                            <td class="price">500.000đ</td>

                            <td class="quantity">
                                <div class="input-group mb-3">
                                    <input type="text" name="quantity"
                                           class="quantity form-control input-number" value="1" min="1" max="100">
                                </div>
                            </td>

                            <td class="total">500.000đ</td>
                        </tr><!-- END TR-->

                        <tr class="text-center">
                            <td class="product-remove"><a href="#"><span class="ion-ios-close"></span></a></td>

                            <td class="image-prod">
                                <div class="img" style="background-image:url('https://tools.dalathasfarm.com/public/products/DRP6/DRP64AK112/AA0_6481wm_800x800.jpg');"></div>
                            </td>

                            <td class="product-name">
                                <h3>HOA GIÁNG SINH ĐỎ</h3>
                                <p>1 chậu Hoa Trạng Nguyên
                                    + 1 bộ trang trí</p>
                            </td>

                            <td class="price">400.000đ</td>

                            <td class="quantity">
                                <div class="input-group mb-3">
                                    <input type="text" name="quantity"
                                           class="quantity form-control input-number" value="1" min="1" max="100">
                                </div>
                            </td>

                            <td class="total">400.000đ</td>
                        </tr><!-- END TR-->
                        </tbody>
                        <!--							End Product-->
                    </table>
                </div>
            </div>
        </div>

        <div class="row justify-content-end">
            <!-- Begin Input nội dung thiệp            -->
            <div class="col-lg-4 mt-5 cart-wrap ftco-animate">
                <div class="cart-total mb-3">
                    <h3>Nội dung thiệp</h3>
                    <p>Hãy gửi một lời nhắn đến người nhận</p>
                    <form action="#" class="info">
                        <div class="form-group">
                            <label for="message">Lời nhắn</label>
                            <textarea rows="5" id="message" class="form-control text-left px-3"
                                      placeholder="Ví dụ: Chúc An sinh nhật vui vẻ!"></textarea>
                        </div>
                    </form>
                </div>
            </div>
            <!-- End Input nội dung thiệp            -->
            <!-- Begin thông tin giao hàng           -->
            <div class="col-lg-4 mt-5 cart-wrap ftco-animate">
                <div class="cart-total mb-3">
                    <h3>Thông tin giao hàng</h3>
                    <p>Vui lòng cung cấp <span style=" text-decoration: underline;display: inline">địa điểm</span>
                        và <span style=" text-decoration: underline;display: inline">thời
                                gian</span> nhận hàng </p>
                    <form action="#" class="info">
                        <div class="form-group">
                            <label for="date-delivery">Ngày giao<span class="text-danger">*</span></label>
                            <input type="date" id="date-delivery" class="form-control text-left px-3"
                                   placeholder="">
                        </div>
                        <div class="form-group">
                            <label for="time-receive">Thời gian nhận hàng<span class="text-danger">*</span></label>
                            <div class="select-wrap">
                                <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                <select name="" id="time-receive" class="form-control text-left px-3">
                                    <option value="">Bất cứ khi nào</option>
                                    <option value="">9h - 11h</option>
                                    <option value="">11h - 14h</option>
                                    <option value="">14h - 17h</option>
                                    <option value="">17h - 20h</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="address-receive">Địa chỉ (Nội thành Tp.HCM)<span class="text-danger">*</span></label>
                            <textarea id="address-receive" class="form-control text-left px-3"
                                      placeholder="Cung cấp cụ thể số nhà, tên đường, khu phố, phường..."></textarea>

                        </div>
                        <div class="form-group">
                            <label for="district-receive">Chọn quận<span class="text-danger">*</span></label>
                            <div class="select-wrap">
                                <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                <select name="" id="district-receive" class="form-control text-left px-3">
                                    <option value="">Quận 1</option>
                                    <option value="">Quận 2</option>
                                    <option value="">Quận 3</option>
                                    <option value="">Quận 4</option>
                                    <option value="">Quận 5</option>
                                    <option value="">Quận 6</option>
                                    <option value="">Quận 7</option>
                                    <option value="">Quận 8</option>
                                    <option value="">Quận 9</option>
                                    <option value="">Quận 10</option>
                                    <option value="">Quận 11</option>
                                    <option value="">Quận 12</option>
                                    <option value="">Quận Thủ Đức</option>
                                    <option value="">Quận Bình Thạnh</option>
                                    <option value="">Quận Gò Vấp</option>
                                    <option value="">Quận Phú Nhuận</option>
                                    <option value="">Quận Tân Phú</option>
                                    <option value="">Quận Bình Tân</option>
                                    <option value="">Quận Tân Bình</option>
                                </select>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!--       End thông tin giao hàng        -->

            <!--        Begin tính tiền-->
            <div class="col-lg-4 mt-5 cart-wrap ftco-animate">
                <div class="cart-total mb-3">
                    <h3>Tính tiền</h3>
                    <p class="d-flex">
                        <span>Tổng tiền hàng</span>
                        <span>900.000đ</span>
                    </p>
                    <p class="d-flex">
                        <span>Phí vận chuyển</span>
                        <span>30.000đ</span>
                    </p>
                    <p class="d-flex">
                        <span>Đã tiết kiệm</span>
                        <span>25.000đ</span>
                    </p>
                    <hr>
                    <p class="d-flex total-price">
                        <span>Tổng thanh toán</span>
                        <span>900.000đ</span>
                    </p>
                </div>
                <p><a href="checkout.jsp" class="btn btn-primary py-3 px-4">Thanh toán</a></p>
            </div>
            <!--        End tính tiền-->

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
