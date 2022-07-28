<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../customer/taglib.jsp" %>

<html>
<head>
    <title>Quản lý danh mục</title>
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
        <!-- DATA TABLE-->
        <section class="p-t-20">
            <div class="container main-content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-data__tool">
                            <div class="table-data__tool-left">
                                <span class=" title-2">Danh sách danh mục</span>

                            </div>

                            <!--  nút thêm danh mục hiện ra modal-->
                            <div class="table-data__tool-right">
                                <button type="button" class="au-btn au-btn-icon au-btn--green au-btn--small"
                                        data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">
                                    <i class="zmdi zmdi-plus"></i>Thêm danh mục
                                </button>

                            </div>
                        </div>
                        <div class="table-responsive m-b-40">
                            <table class="table table-borderless table-data3">
                                <thead>
                                <tr>
                                    <th class="text-center text-white">STT</th>
                                    <th class="text-center text-white">Tên danh mục</th>
                                    <th class="text-center text-white">Ảnh minh họa</th>
                                    <th class="text-center text-white">Số lượng mặt hàng</th>
                                    <th></th>

                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="text-center align-middle">1</td>
                                    <td class="text-center align-middle">Hoa sinh nhật</td>
                                    <td class="text-center align-middle">
                                        <img class="img-120"
                                             src="https://tools.dalathasfarm.com/public/products/1638/1638325734/p4u-(10)wm_800x800.jpg"
                                             alt="Colorlib Template">
                                    </td>
                                    <td class="align-middle text-center">100</td>
                                    <td class="align-middle">
                                        <div class="table-data-feature">
                                            <button type="button" class="item" data-toggle="modal" data-placement="top"
                                                    data-target="#Modal-chinhsua"
                                                    title="Chỉnh sửa thông tin danh mục">
                                                <i class="zmdi zmdi-edit"></i>
                                            </button>
                                            <button type="button" class="item" data-placement="top"
                                                    data-toggle="modal" data-target="#exampleModalCenter"
                                                    title="Xóa danh mục">
                                                <i class="zmdi zmdi-delete"></i>
                                            </button>
                                            <button type="button" class="item" data-toggle="modal" data-placement="top"
                                                    data-target="#modalCart"
                                                    title="Xem chi tiết danh mục">
                                                <i class="zmdi zmdi-more"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center align-middle">1</td>
                                    <td class="text-center align-middle">Hoa sinh nhật</td>
                                    <td class="text-center align-middle">
                                        <img class="img-120"
                                             src="https://tools.dalathasfarm.com/public/products/1638/1638325734/p4u-(10)wm_800x800.jpg"
                                             alt="Colorlib Template">
                                    </td>
                                    <td class="align-middle text-center">100</td>
                                    <td class="align-middle">
                                        <div class="table-data-feature">
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Chỉnh sửa thông tin danh mục">
                                                <i class="zmdi zmdi-edit"></i>
                                            </button>
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Xóa danh mục">
                                                <i class="zmdi zmdi-delete"></i>
                                            </button>
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Xem chi tiết danh mục">
                                                <i class="zmdi zmdi-more"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center align-middle">1</td>
                                    <td class="text-center align-middle">Hoa sinh nhật</td>
                                    <td class="text-center align-middle">
                                        <img class="img-120"
                                             src="https://tools.dalathasfarm.com/public/products/1638/1638325734/p4u-(10)wm_800x800.jpg"
                                             alt="Colorlib Template">
                                    </td>
                                    <td class="align-middle text-center">100</td>
                                    <td class="align-middle">
                                        <div class="table-data-feature">
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Chỉnh sửa thông tin danh mục">
                                                <i class="zmdi zmdi-edit"></i>
                                            </button>
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Xóa danh mục">
                                                <i class="zmdi zmdi-delete"></i>
                                            </button>
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Xem chi tiết danh mục">
                                                <i class="zmdi zmdi-more"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center align-middle">1</td>
                                    <td class="text-center align-middle">Hoa sinh nhật</td>
                                    <td class="text-center align-middle">
                                        <img class="img-120"
                                             src="https://tools.dalathasfarm.com/public/products/1638/1638325734/p4u-(10)wm_800x800.jpg"
                                             alt="Colorlib Template">
                                    </td>
                                    <td class="align-middle text-center">100</td>
                                    <td class="align-middle">
                                        <div class="table-data-feature">
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Chỉnh sửa thông tin danh mục">
                                                <i class="zmdi zmdi-edit"></i>
                                            </button>
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Xóa danh mục">
                                                <i class="zmdi zmdi-delete"></i>
                                            </button>
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Xem chi tiết danh mục">
                                                <i class="zmdi zmdi-more"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center align-middle">1</td>
                                    <td class="text-center align-middle">Hoa sinh nhật</td>
                                    <td class="text-center align-middle">
                                        <img class="img-120"
                                             src="https://tools.dalathasfarm.com/public/products/1638/1638325734/p4u-(10)wm_800x800.jpg"
                                             alt="Colorlib Template">
                                    </td>
                                    <td class="align-middle text-center">100</td>
                                    <td class="align-middle">
                                        <div class="table-data-feature">
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Chỉnh sửa thông tin danh mục">
                                                <i class="zmdi zmdi-edit"></i>
                                            </button>
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Xóa danh mục">
                                                <i class="zmdi zmdi-delete"></i>
                                            </button>
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Xem chi tiết danh mục">
                                                <i class="zmdi zmdi-more"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center align-middle">1</td>
                                    <td class="text-center align-middle">Hoa sinh nhật</td>
                                    <td class="text-center align-middle">
                                        <img class="img-120"
                                             src="https://tools.dalathasfarm.com/public/products/1638/1638325734/p4u-(10)wm_800x800.jpg"
                                             alt="Colorlib Template">
                                    </td>
                                    <td class="align-middle text-center">100</td>
                                    <td class="align-middle">
                                        <div class="table-data-feature">
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Chỉnh sửa thông tin danh mục">
                                                <i class="zmdi zmdi-edit"></i>
                                            </button>
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Xóa danh mục">
                                                <i class="zmdi zmdi-delete"></i>
                                            </button>
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Xem chi tiết danh mục">
                                                <i class="zmdi zmdi-more"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>


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
