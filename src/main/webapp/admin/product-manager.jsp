<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../customer/taglib.jsp" %>

<html>
<head>
    <title>Quản lý sản phẩm</title>
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
                                <span class=" title-2">Danh sách sản phẩm</span>

                            </div>
                            <div class="table-data__tool-right">
                                <a href="#">
                                    <button style="padding: 12px" id="show-add" class="au-btn au-btn-icon au-btn--green au-btn--small">
                                        <li class="zmdi zmdi-plus">Thêm sản phẩm</li>
                                    </button>
                                </a>
                            </div>
                        </div>
                        <div class="table-responsive m-b-40">
                            <table class="table table-borderless table-data3">
                                <thead>
                                <tr>
                                    <th>ID sản phẩm</th>
                                    <th>Ảnh sản phẩm</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Giá gốc</th>
                                    <th>Giá bán</th>
                                    <th>Thuộc danh mục</th>
                                    <th>Trạng thái</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="tr-shadow">
                                    <td class="align-middle">SP001</td>
                                    <td>
                                        <div class="img-40"><img
                                                src="https://tools.dalathasfarm.com/public/products/1638/1638325734/p4u-(10)wm_800x800.jpg"
                                                alt="Colorlib Template"></div>
                                    </td>
                                    <td class="desc">Hoa Violet châu Phi</td>
                                    <td>600.00đ</td>
                                    <td>500.000đ</td>
                                    <td>Hoa Sinh nhật</td>
                                    <td><span class="status--process">Còn hàng</span></td>
                                    <td>
                                        <div class="table-data-feature">

                                            <button id="show-edit" class="item" data-toggle="tooltip"
                                                    data-placement="top"
                                                    title="Chỉnh sửa sản phẩm">
                                                <i class="zmdi zmdi-edit"></i>
                                            </button>
                                            <button type="button" class="item" data-placement="top"
                                                    data-toggle="modal" data-target="#exampleModalCenter"
                                                    title="Xóa sản phẩm">
                                                <i class="zmdi zmdi-delete"></i>
                                            </button>
                                            <button id="show-detail" class="item" data-toggle="tooltip"
                                                    data-placement="top"
                                                    title="Xem mô tả sản phẩm">
                                                <i class="zmdi zmdi-more"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="spacer"></tr>
                                <tr class="tr-shadow">
                                    <td class="align-middle">SP002</td>
                                    <td>
                                        <div class="img-40"><img
                                                src="https://tools.dalathasfarm.com/public/products/DRP6/DRP64AK112/AA0_6481wm_800x800.jpg"
                                                alt="Colorlib Template"></div>
                                    </td>
                                    <td class="desc">Hoa Giáng sinh đỏ</td>
                                    <td>600.00đ</td>
                                    <td>500.000đ</td>
                                    <td>Hoa Sinh nhật</td>
                                    <td>
                                        <span class="status--denied">Hết hàng</span>
                                    </td>
                                    <td>
                                        <div class="table-data-feature">

                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Chỉnh sửa sản phẩm">
                                                <i class="zmdi zmdi-edit"></i>
                                            </button>
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Xóa sản phẩm">
                                                <i class="zmdi zmdi-delete"></i>
                                            </button>
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Xem mô tả sản phẩm">
                                                <i class="zmdi zmdi-more"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="spacer"></tr>
                                <tr class="tr-shadow">
                                    <td class="align-middle">SP001</td>
                                    <td>
                                        <div class="img-40"><img
                                                src="https://tools.dalathasfarm.com/public/products/1638/1638325734/p4u-(10)wm_800x800.jpg"
                                                alt="Colorlib Template"></div>
                                    </td>
                                    <td class="desc">Hoa Violet châu Phi</td>
                                    <td>600.00đ</td>
                                    <td>500.000đ</td>
                                    <td>Hoa Sinh nhật</td>
                                    <td>
                                        <span class="status--process">Còn hàng</span>
                                    </td>
                                    <td>
                                        <div class="table-data-feature">

                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Chỉnh sửa sản phẩm">
                                                <i class="zmdi zmdi-edit"></i>
                                            </button>
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Xóa sản phẩm">
                                                <i class="zmdi zmdi-delete"></i>
                                            </button>
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Xem mô tả sản phẩm">
                                                <i class="zmdi zmdi-more"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="spacer"></tr>
                                <tr class="tr-shadow">
                                    <td class="align-middle">SP001</td>
                                    <td>
                                        <div class="img-40"><img
                                                src="https://tools.dalathasfarm.com/public/products/1638/1638325734/p4u-(10)wm_800x800.jpg"
                                                alt="Colorlib Template"></div>
                                    </td>
                                    <td class="desc">Hoa Violet châu Phi</td>
                                    <td>600.00đ</td>
                                    <td>500.000đ</td>
                                    <td>Hoa Sinh nhật</td>
                                    <td>
                                        <span class="status--process">Còn hàng</span>
                                    </td>
                                    <td>
                                        <div class="table-data-feature">

                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Chỉnh sửa sản phẩm">
                                                <i class="zmdi zmdi-edit"></i>
                                            </button>
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Xóa sản phẩm">
                                                <i class="zmdi zmdi-delete"></i>
                                            </button>
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Xem mô tả sản phẩm">
                                                <i class="zmdi zmdi-more"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="spacer"></tr>
                                <tr class="tr-shadow">
                                    <td class="align-middle">SP001</td>
                                    <td>
                                        <div class="img-40"><img
                                                src="https://tools.dalathasfarm.com/public/products/1638/1638325734/p4u-(10)wm_800x800.jpg"
                                                alt="Colorlib Template"></div>
                                    </td>
                                    <td class="desc">Hoa Violet châu Phi</td>
                                    <td>600.00đ</td>
                                    <td>500.000đ</td>
                                    <td>Hoa Sinh nhật</td>
                                    <td>
                                        <span class="status--process">Còn hàng</span>
                                    </td>
                                    <td>
                                        <div class="table-data-feature">

                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Chỉnh sửa sản phẩm">
                                                <i class="zmdi zmdi-edit"></i>
                                            </button>
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Xóa sản phẩm">
                                                <i class="zmdi zmdi-delete"></i>
                                            </button>
                                            <button class="item" data-toggle="tooltip" data-placement="top"
                                                    title="Xem mô tả sản phẩm">
                                                <i class="zmdi zmdi-more"></i>
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
            <div class="container">
                <ul class="pagination">
                    <li>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                    <li>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                    <li>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">...</a></li>
                    <li>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                    <li>
                    </li>
                </ul>
            </div>
        </section>
        <!-- END DATA TABLE-->
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
