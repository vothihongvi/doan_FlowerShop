<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../customer/taglib.jsp" %>

<html>
<head>
    <title>Dashboard</title>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title Page-->
    <title>Thống Kê</title>

    <!-- Fontfaces CSS-->
    <link href="assets/css/font-face.css" rel="stylesheet" media="all">
    <link href="assets/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="assets/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="assets/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="assets/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- assets/vendor CSS-->
    <link href="assets/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="assets/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="assets/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="assets/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="assets/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="assets/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="assets/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="assets/css/theme.css" rel="stylesheet" media="all">
</head>
<body class="animsition">
<div class="page-wrapper">

    <%@ include file="menu.jsp" %>


    <!-- PAGE CONTAINER-->
    <div class="page-container">
    <%@ include file="header.jsp" %>

    <!-- MAIN CONTENT-->
        <div class="main-content">
            <div class="section__content section__content--p30">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="overview-wrap">
                                <h2 class="title-1">Tổng quan</h2>
                                <button class="au-btn au-btn-icon au-btn--blue">
                                    <i class="zmdi zmdi-plus"></i>Thêm đơn hàng
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="row m-t-25">
                        <div class="col-sm-6 col-lg-3">
                            <div class="overview-item overview-item--c1">
                                <div class="overview__inner">
                                    <div class="overview-box clearfix">
                                        <div class="icon">
                                            <i class="zmdi zmdi-account-o"></i>
                                        </div>
                                        <div class="text">
                                            <h2>10368</h2>
                                            <span>Số lượng truy cập</span>
                                        </div>
                                    </div>
                                    <div class="overview-chart">
                                        <canvas id="widgetChart1"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-3">
                            <div class="overview-item overview-item--c2">
                                <div class="overview__inner">
                                    <div class="overview-box clearfix">
                                        <div class="icon">
                                            <i class="zmdi zmdi-shopping-cart"></i>
                                        </div>
                                        <div class="text">
                                            <h2>388,688</h2>
                                            <span>Sản phẩm đã bán</span>
                                        </div>
                                    </div>
                                    <div class="overview-chart">
                                        <canvas id="widgetChart2"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-3">
                            <div class="overview-item overview-item--c3">
                                <div class="overview__inner">
                                    <div class="overview-box clearfix">
                                        <div class="icon">
                                            <i class="zmdi zmdi-calendar-note"></i>
                                        </div>
                                        <div class="text">
                                            <h2>1,086</h2>
                                            <span>Số lượng đơn hàng</span>
                                        </div>
                                    </div>
                                    <div class="overview-chart">
                                        <canvas id="widgetChart3"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-3">
                            <div class="overview-item overview-item--c4">
                                <div class="overview__inner">
                                    <div class="overview-box clearfix">
                                        <div class="icon">
                                            <i class="zmdi zmdi-money"></i>
                                        </div>
                                        <div class="text">
                                            <h2>$1,060,386</h2>
                                            <span>Tổng doanh thu</span>
                                        </div>
                                    </div>
                                    <div class="overview-chart">
                                        <canvas id="widgetChart4"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="au-card recent-report">
                                <div class="au-card-inner">
                                    <h3 class="title-2">recent reports</h3>
                                    <div class="chart-info">
                                        <div class="chart-info__left">
                                            <div class="chart-note">
                                                <span class="dot dot--blue"></span>
                                                <span>products</span>
                                            </div>
                                            <div class="chart-note mr-0">
                                                <span class="dot dot--green"></span>
                                                <span>services</span>
                                            </div>
                                        </div>
                                        <div class="chart-info__right">
                                            <div class="chart-statis">
                                                    <span class="index incre">
                                                        <i class="zmdi zmdi-long-arrow-up"></i>25%</span>
                                                <span class="label">products</span>
                                            </div>
                                            <div class="chart-statis mr-0">
                                                    <span class="index decre">
                                                        <i class="zmdi zmdi-long-arrow-down"></i>10%</span>
                                                <span class="label">services</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="recent-report__chart">
                                        <canvas id="recent-rep-chart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="au-card chart-percent-card">
                                <div class="au-card-inner">
                                    <h3 class="title-2 tm-b-5">char by %</h3>
                                    <div class="row no-gutters">
                                        <div class="col-xl-6">
                                            <div class="chart-note-wrap">
                                                <div class="chart-note mr-0 d-block">
                                                    <span class="dot dot--blue"></span>
                                                    <span>products</span>
                                                </div>
                                                <div class="chart-note mr-0 d-block">
                                                    <span class="dot dot--red"></span>
                                                    <span>services</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-6">
                                            <div class="percent-chart">
                                                <canvas id="percent-chart"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <h2 class="title-1 m-b-25">Thu nhập theo mặt hàng</h2>

                        <div class="table-responsive m-b-40">
                            <table class="table table-borderless table-data3">
                                <thead >
                                <tr>
                                    <th class="text-center text-white">STT</th>
                                    <th class="text-center text-white">Tên sản phẩm</th>
                                    <th class="text-center text-white">Ảnh sản phẩm</th>
                                    <th class="text-center text-white">Số lượng</th>
                                    <th class="text-center text-white">Doanh thu</th>
                                    <th class="text-center text-white">Giảm giá</th>
                                    <th class="text-center text-white">Doanh thu thực</th>

                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="text-center align-middle">1</td>
                                    <td class="text-center align-middle">HOA VIOLET CHÂU PHI</td>
                                    <td class="text-center align-middle">
                                        <img class="img-120"
                                             src="https://tools.dalathasfarm.com/public/products/1638/1638325734/p4u-(10)wm_800x800.jpg"
                                             alt="Colorlib Template">
                                    </td>
                                    <td class="align-middle text-center">3</td>
                                    <td class="align-middle text-center">600.000đ</td>
                                    <td class="align-middle text-center">100.000đ</td>
                                    <td class="align-middle text-center">500.000đ</td>
                                </tr>
                                <tr>
                                    <td class="text-center align-middle">2</td>
                                    <td class="text-center align-middle">HOA GIÁNG SINH ĐỎ</td>
                                    <td class="text-center align-middle">
                                        <img class="img-120"
                                             src="https://tools.dalathasfarm.com/public/products/1638/1638325734/p4u-(10)wm_800x800.jpg"
                                             alt="Colorlib Template">
                                    </td>
                                    <td class="align-middle text-center">3</td>
                                    <td class="align-middle text-center">600.000đ</td>
                                    <td class="align-middle text-center">100.000đ</td>
                                    <td class="align-middle text-center">500.000đ</td>
                                </tr>
                                <tr>
                                    <td class="text-center align-middle">1</td>
                                    <td class="text-center align-middle">HOA VIOLET CHÂU PHI</td>
                                    <td class="text-center align-middle">
                                        <img class="img-120"
                                             src="https://tools.dalathasfarm.com/public/products/1638/1638325734/p4u-(10)wm_800x800.jpg"
                                             alt="Colorlib Template">
                                    </td>
                                    <td class="align-middle text-center">3</td>
                                    <td class="align-middle text-center">600.000đ</td>
                                    <td class="align-middle text-center">100.000đ</td>
                                    <td class="align-middle text-center">500.000đ</td>
                                </tr>
                                <tr>
                                    <td class="text-center align-middle">1</td>
                                    <td class="text-center align-middle">HOA VIOLET CHÂU PHI</td>
                                    <td class="text-center align-middle">
                                        <img class="img-120"
                                             src="https://tools.dalathasfarm.com/public/products/1638/1638325734/p4u-(10)wm_800x800.jpg"
                                             alt="Colorlib Template">
                                    </td>
                                    <td class="align-middle text-center">3</td>
                                    <td class="align-middle text-center">600.000đ</td>
                                    <td class="align-middle text-center">100.000đ</td>
                                    <td class="align-middle text-center">500.000đ</td>
                                </tr>
                                <tr>
                                    <td class="text-center align-middle">1</td>
                                    <td class="text-center align-middle">HOA VIOLET CHÂU PHI</td>
                                    <td class="text-center align-middle">
                                        <img class="img-120"
                                             src="https://tools.dalathasfarm.com/public/products/1638/1638325734/p4u-(10)wm_800x800.jpg"
                                             alt="Colorlib Template">
                                    </td>
                                    <td class="align-middle text-center">3</td>
                                    <td class="align-middle text-center">600.000đ</td>
                                    <td class="align-middle text-center">100.000đ</td>
                                    <td class="align-middle text-center">500.000đ</td>
                                </tr>
                                <tr>
                                    <td class="text-center align-middle">1</td>
                                    <td class="text-center align-middle">HOA VIOLET CHÂU PHI</td>
                                    <td class="text-center align-middle">
                                        <img class="img-120"
                                             src="https://tools.dalathasfarm.com/public/products/1638/1638325734/p4u-(10)wm_800x800.jpg"
                                             alt="Colorlib Template">
                                    </td>
                                    <td class="align-middle text-center">3</td>
                                    <td class="align-middle text-center">600.000đ</td>
                                    <td class="align-middle text-center">100.000đ</td>
                                    <td class="align-middle text-center">500.000đ</td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END MAIN CONTENT-->
        <!-- END PAGE CONTAINER-->
        <%@ include file="copy-right.jsp" %>

    </div>


</div>

<!-- Jquery JS-->
<script src="assets/vendor/jquery-3.2.1.min.js"></script>
<!-- Bootstrap JS-->
<script src="assets/vendor/bootstrap-4.1/popper.min.js"></script>
<script src="assets/vendor/bootstrap-4.1/bootstrap.min.js"></script>
<!-- assets/vendor JS       -->
<script src="assets/vendor/slick/slick.min.js">
</script>
<script src="assets/vendor/wow/wow.min.js"></script>
<script src="assets/vendor/animsition/animsition.min.js"></script>
<script src="assets/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
</script>
<script src="assets/vendor/counter-up/jquery.waypoints.min.js"></script>
<script src="assets/vendor/counter-up/jquery.counterup.min.js">
</script>
<script src="assets/vendor/circle-progress/circle-progress.min.js"></script>
<script src="assets/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="assets/vendor/chartjs/Chart.bundle.min.js"></script>
<script src="assets/vendor/select2/select2.min.js">
</script>

<!-- Main JS-->
<script src="assets/js/main.js"></script>

</body>
</html>
