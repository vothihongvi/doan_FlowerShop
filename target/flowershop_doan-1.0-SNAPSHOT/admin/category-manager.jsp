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
                            <div  class="table-data__tool-right">
                                <button id="show-add" type="button" class="au-btn au-btn-icon au-btn--green au-btn--small"
                                        data-toggle="modal" data-target="#add-form" data-whatever="@getbootstrap">
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
                                            <button id="show-edit" type="button" class="item" data-toggle="modal" data-placement="top"
                                                    data-target="#edit-form"
                                                    title="Chỉnh sửa thông tin danh mục">
                                                <i class="zmdi zmdi-edit"></i>
                                            </button>
                                            <button type="button" class="item" data-placement="top"
                                                    data-toggle="modal" data-target="#exampleModalCenter"
                                                    title="Xóa danh mục">
                                                <i class="zmdi zmdi-delete"></i>
                                            </button>
                                            <button id="show-detail" type="button" class="item" data-toggle="modal" data-placement="top"
                                                    data-target="#form-detail"
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

<!-- BEGIN MODAL THÊM DANH MỤC-->
<div class="modal fade modal-form"  id="add-form" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Thêm danh mục</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label">Tên danh mục:</label>
                        <input type="text" class="form-control" id="recipient-name" value="nhập tên danh mục">
                    </div>
                    <div class="form-group">
                        <label for="message-text" class="col-form-label">Thêm hình ảnh:</label>
                        <!--                        <textarea class="form-control" id="message-text"></textarea>-->
                        <!--                       nút thêm hình ảnh-->
                        <input type="file" class="form-control-file" id="message-text" accept="image/*">
                        <!--                        <img src="#" alt="" id="image-from-input">-->
                        <hr>
                        <label for="add-product" class="col-form-label">Thêm sản phẩm:</label>
                        <button class="form-control" id="add-product"
                                style="border-radius: 5%; background-color: #00ad5f "><a
                                href="quan-ly-san-pham.html" style="color: whitesmoke"> Thêm sản phẩm</a>
                        </button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">OK</button>
            </div>
        </div>
    </div>
</div>
<!--END MODAL THÊM DANH MỤC///////-->

<!--Begin modal cho phần chỉnh sửa -->
<!-- The Modal -->
<div class="modal fade modal-form" id="form-edit">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title" style="font-family: 'Font Awesome\ 5 Brands'">Chỉnh sửa </h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">

                <form>
                    <div class="form-group">
                        <label for="tenDanhMuc" class="col-form-label">Thay tên :</label>
                        <input type="text" class="form-control" id="tenDanhMuc" value="Hoa sinh nhật">
                    </div>
                    <div class="form-group">
                        <label for="hinhAnh" class="col-form-label">Thay hình ảnh:</label>
                        <!--                        <textarea class="form-control" id="message-text"></textarea>-->
                        <input type="file" class="form-control-file" id="hinhAnh" accept="image/*">
                        <!--                        <hr>-->
                        <!--                        <label for="tenDanhMuc" class="col-form-label">Thay tên :</label>-->


                    </div>
                </form>
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal"
                        style="background-color: grey; border-color: grey">Close
                </button>
                <button type="button" class="btn btn-primary">OK</button>
            </div>

        </div>
    </div>
</div>
<!--End modal cho phần chỉnh sử///////-->a

<!--Begin modal xem chi tiết-->
<!-- Modal: modalCart -->
<div class="modal fade modal-form" id="form-detail" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <!-- Modal Header-->
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel" style="font-family: 'Font Awesome\ 5 Brands'">Xem chi
                    tiết</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <!-- Modal Body-->
            <div class="modal-body">

                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Tên sản phầm</th>
                        <th>Giá bán</th>
                        <!--                        <th>Remove</th>-->
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Hoa Violet châu Phi</td>
                        <td>126.000đ</td>
                        <!--                        <td><a><i class="fas fa-times"></i></a></td>-->
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Hoa sinh nhật đỏ</td>
                        <td>220.000đ</td>
                        <!--                        <td><a><i class="fas fa-times"></i></a></td>-->
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Hoa sinh nhật vàng</td>
                        <td>135.000đ</td>
                        <!--                        <td><a><i class="fas fa-times"></i></a></td>-->
                    </tr>
                    <tr>
                        <th scope="row">4</th>
                        <td> Combo hoa sinh nhật</td>
                        <td>200.000đ</td>
                        <!--                        <td><a><i class="fas fa-times"></i></a></td>-->
                    </tr>

                    </tbody>
                </table>

            </div>
            <!-- Modal Footer-->
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Close</button>
                <!--                <button class="btn btn-primary">Checkout</button>-->
            </div>
        </div>
    </div>
</div>

<!--End Modal xem chi tiết///////-->

<!--Begin modal xóa danh mục-->
<div class="modal fade modal-form" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalCenterTitle">Xóa Danh Mục</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <span> Bạn có chắc muốn xóa danh mục này!</span>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Delete</button>
            </div>
        </div>
    </div>
</div>
<!--End modal xóa danh mục///////-->
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
<!--scrip cho phần thêm danh mục-->
<script>
    $(document).ready(function () {
        /* begin modals operation*/
        var addForm = $('#add-form');
        var editForm = $('#form-edit');
        var detailForm = $('#form-detail');

        //modal-scrollable
        $('body').on('shown.bs.modal', function () {
            if ($('.modal-form')) {
                $('body').addClass('modal-open');
            }
        });
        // show form addForm
        $('#show-add').click(function () {
            addForm.modal('show');
        })
        // show form editForm
        $('#show-edit').click(function () {
            editForm.modal('show');
        })
        // show form detailForm
        $('#show-detail').click(function () {
            detailForm.modal('show');
        })
        /* end modals operation*/
    });
    $('#exampleModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) // Button that triggered the modal
        var recipient = button.data('whatever') // Extract info from data-* attributes
        // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
        // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
        var modal = $(this)
        modal.find('.modal-title').text('New message to ' + recipient)
        modal.find('.modal-body input').val(recipient)
    })
</script>
<!--kết thúc scrip cho phần thêm danh mục-->

</body>
</html>
