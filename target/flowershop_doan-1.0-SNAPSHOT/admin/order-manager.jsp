<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../customer/taglib.jsp" %>

<html>
<head>
    <title>Quản lý danh mục</title>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title Page-->
    <title>Quản lý đơn hàng</title>

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
        <!-- DATA TABLE-->
        <section class="p-t-20">
            <div class="container main-content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-data__tool">
                            <div class="table-data__tool-left">
                                <span class=" title-2">Danh sách đơn hàng</span>

                            </div>
                            <div class="table-data__tool-right">
                                <button class="au-btn au-btn-icon au-btn--green au-btn--small" data-toggle="modal"
                                        data-target="#checkOrder">
                                    <i class="zmdi zmdi-check"></i>Duyệt đơn
                                </button>
                                <div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
                                    <select class="js-select2" name="type">
                                        <option selected="selected">Xuất file</option>
                                        <option value="">Excel</option>
                                        <option value="">Pdf</option>
                                    </select>
                                    <div class="dropDownSelect2"></div>
                                </div>
                            </div>

                        </div>
                        <div class="table-responsive table-responsive-data2">
                            <table class="table table-data2">
                                <thead>
                                <tr>
                                    <th>
                                        <label class="au-checkbox">
                                            <input type="checkbox">
                                            <span class="au-checkmark"></span>
                                        </label>
                                    </th>
                                    <th>ID Đơn hàng</th>
                                    <th>Ngày tạo đơn</th>
                                    <th>Trạng thái</th>
                                    <th>Tổng thu</th>
                                    <th>Khách hàng</th>
                                    <th>Sản phẩm</th>
                                    <th>Thông tin giao hàng</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="tr-shadow">
                                    <td>
                                        <label class="au-checkbox">
                                            <input type="checkbox">
                                            <span class="au-checkmark"></span>
                                        </label>
                                    </td>
                                    <td class="align-middle">1</td>
                                    <td class="align-middle">2018-09-27 02:12</td>
                                    <td>
                                        <span class="status--denied">Chờ xử lý</span>
                                    </td>
                                    <td>625.00đ</td>
                                    <td>
                                        <button class="item" data-toggle="tooltip" data-placement="top"
                                                title="Xem Chi tiết khách hàng">
                                            <span data-toggle="modal" data-target="#detailCustomerModal"
                                                  style="text-decoration: underline">Chi tiết</span>
                                        </button>
                                    </td>
                                    <td>
                                        <button class="item" data-toggle="tooltip" data-placement="top"
                                                title="Xem chi tiết sản phẩm khách đặt">
                                            <span data-toggle="modal" data-target="#productOrderModal"
                                                  style="text-decoration: underline">Chi tiết</span>
                                        </button>
                                    </td>
                                    <td>
                                        <button class="item" data-toggle="tooltip" data-placement="top"
                                                title="Xem chi tiết thông tin giao hàng">
                                            <span data-toggle="modal" data-target="#deliveryInfoModal"
                                                  style="text-decoration: underline">Chi tiết</span>
                                        </button>
                                    </td>

                                    <td>
                                        <div class="table-data-feature">

                                            <button class="item" data-toggle="modal" data-target="#deleteOrderModal"
                                                    data-placement="top"
                                                    title="Xóa đơn hàng">
                                                <i class="zmdi zmdi-delete"></i>
                                            </button>

                                        </div>
                                    </td>
                                </tr>
                                <tr class="spacer"></tr>
                                <tr class="tr-shadow">
                                    <td>
                                        <label class="au-checkbox">
                                            <input type="checkbox">
                                            <span class="au-checkmark"></span>
                                        </label>
                                    </td>
                                    <td class="align-middle">1</td>
                                    <td class="align-middle">2018-09-27 02:12</td>
                                    <td>
                                        <span class="status--denied">Chờ xử lý</span>
                                    </td>
                                    <td>625.00đ</td>
                                    <td>
                                        <button class="item" data-toggle="tooltip" data-placement="top"
                                                title="Xem Chi tiết khách hàng">
                                            <span data-toggle="modal" data-target="#detailCustomerModal"
                                                  style="text-decoration: underline">Chi tiết</span>
                                        </button>
                                    </td>
                                    <td>
                                        <button class="item" data-toggle="tooltip" data-placement="top"
                                                title="Xem chi tiết sản phẩm khách đặt">
                                            <span data-toggle="modal" data-target="#productOrderModal"
                                                  style="text-decoration: underline">Chi tiết</span>
                                        </button>
                                    </td>
                                    <td>
                                        <button class="item" data-toggle="tooltip" data-placement="top"
                                                title="Xem chi tiết thông tin giao hàng">
                                            <span data-toggle="modal" data-target="#deliveryInfoModal"
                                                  style="text-decoration: underline">Chi tiết</span>
                                        </button>
                                    </td>

                                    <td>
                                        <div class="table-data-feature">

                                            <button class="item" data-toggle="modal" data-target="#deleteOrderModal"
                                                    data-placement="top"
                                                    title="Xóa đơn hàng">
                                                <i class="zmdi zmdi-delete"></i>
                                            </button>

                                        </div>
                                    </td>
                                </tr>
                                <tr class="spacer"></tr>
                                <tr class="tr-shadow">
                                    <td>
                                        <label class="au-checkbox">
                                            <input type="checkbox">
                                            <span class="au-checkmark"></span>
                                        </label>
                                    </td>
                                    <td class="align-middle">1</td>
                                    <td class="align-middle">2018-09-27 02:12</td>
                                    <td>
                                        <span class="status--denied">Chờ xử lý</span>
                                    </td>
                                    <td>625.00đ</td>
                                    <td>
                                        <button class="item" data-toggle="tooltip" data-placement="top"
                                                title="Xem Chi tiết khách hàng">
                                            <span data-toggle="modal" data-target="#detailCustomerModal"
                                                  style="text-decoration: underline">Chi tiết</span>
                                        </button>
                                    </td>
                                    <td>
                                        <button class="item" data-toggle="tooltip" data-placement="top"
                                                title="Xem chi tiết sản phẩm khách đặt">
                                            <span data-toggle="modal" data-target="#productOrderModal"
                                                  style="text-decoration: underline">Chi tiết</span>
                                        </button>
                                    </td>
                                    <td>
                                        <button class="item" data-toggle="tooltip" data-placement="top"
                                                title="Xem chi tiết thông tin giao hàng">
                                            <span data-toggle="modal" data-target="#deliveryInfoModal"
                                                  style="text-decoration: underline">Chi tiết</span>
                                        </button>
                                    </td>

                                    <td>
                                        <div class="table-data-feature">

                                            <button class="item" data-toggle="modal" data-target="#deleteOrderModal"
                                                    data-placement="top"
                                                    title="Xóa đơn hàng">
                                                <i class="zmdi zmdi-delete"></i>
                                            </button>

                                        </div>
                                    </td>
                                </tr>
                                <tr class="spacer"></tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END DATA TABLE-->
        <!-- END MAIN CONTENT-->
        <%@ include file="copy-right.jsp" %>

    </div>
    <!-- END PAGE CONTAINER-->


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
