<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../customer/taglib.jsp" %>
<jsp:useBean id="a" class="com.example.flowershop_doan.dao.ProductDao" scope="request"></jsp:useBean>

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
                                    <button style="padding: 12px" id="show-add"
                                            class="au-btn au-btn-icon au-btn--green au-btn--small">
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
                                <c:forEach items="${a.allProduct}" var="ca">

                                    <tr class="tr-shadow">
                                        <td class="align-middle">${ca.id}</td>
                                        <td>
                                            <div class="img-40"><img
                                                    src="${ca.image}"
                                                    alt="Colorlib Template"></div>
                                        </td>
                                        <td class="desc">${ca.name}</td>
                                        <td>${ca.priceOld}đ</td>
                                        <td>${ca.priceSell}đ</td>
                                        <td>${ca.categoryId}</td>
                                        <td><span class="status--process">${ca.status!=0?"Còn hàng": "Hết hàng"}</span>
                                        </td>
                                        <td>
                                            <div class="table-data-feature">
                                                <a href="<%=request.getContextPath()%>/admin/update-product.jsp?pid=${ca.id}">
                                                    <button id="show-edit" class="item" data-toggle="tooltip"
                                                            data-placement="top"
                                                            title="Chỉnh sửa sản phẩm">
                                                        <i class="zmdi zmdi-edit"></i>
                                                    </button>
                                                </a>

                                                <a href="../delete-product?pid=${ca.id}" style="margin-left: 4px">
                                                    <button type="button" class="item" data-placement="top"
                                                            data-toggle="modal" data-target="#exampleModalCenter"
                                                            title="Xóa sản phẩm">
                                                        <i class="zmdi zmdi-delete"></i>

                                                    </button>
                                                </a>

                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="spacer"></tr>
                                </c:forEach>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END DATA TABLE-->
        <!-- END DATA TABLE-->
        <!-- END MAIN CONTENT-->
        <%@ include file="copy-right.jsp" %>

    </div>
    <!-- END PAGE CONTAINER-->


</div>

<!--begin modal add item-->
<div class="modal fade modal-form" id="add-form">
    <div class="modal-dialog ">
        <div class="modal-content" style="border: none">
            <!--        begin modal-header-->
            <div style="background-color: #82ae46;">
                <div class="modal-header" style="border: none">
                    <a type="button" class="close btn-outline-warning text-white" data-dismiss="modal"
                       style="font-weight: 100;">&times;</a>
                </div>
                <div class="text-center" style="padding-bottom: 16px">
                    <h4 style="text-transform: uppercase;color: white">Thêm sản phẩm</h4>
                </div>
            </div>
            <!--        end modal-header-->

            <!--        begin body modal-->
            <div class="cart-total modal-body" style="margin: auto; border: none">

                <form action="../add-product" method="POST" class="info">
                    <div class="form-group">
                        <label style="color: #0b0b0b; float: left">Thêm hình ảnh</label>
                        <input type="text" name="image" id="img-add"
                               class="form-control text-left px-3"
                        >
                    </div>
                    <div class="form-group">
                        <label style="color: #0b0b0b">Thêm tên sản phẩm</label>
                        <input type="text" name="name" id="name-add" style="font-size: 0.8rem"
                               class="form-control text-left px-3"
                               placeholder="Nhập tên sản phẩm">
                    </div>
                    <div class="form-group">
                        <label style="color: #0b0b0b">Thêm giá gốc</label>
                        <input type="text" name="price-old" id="price-org-add" style="font-size: 0.8rem"
                               class="form-control text-left px-3"
                               placeholder="Nhập giá gốc">
                    </div>
                    <div class="form-group">
                        <label style="color: #0b0b0b">Thêm giá bán</label>
                        <input type="text" name="price-sell" id="price-sell-add" style="font-size: 0.8rem"
                               class="form-control text-left px-3"
                               placeholder="Nhập giá bán">
                    </div>
                    <div class="form-group">
                        <label> Chọn danh mục </label>
                        <select name="danhmuc" id="dm">
                            <c:forEach items="${a.allCategory}" var="ca">
                                <option value="${ca.id}">${ca.name}</option>
                            </c:forEach>

                        </select>

                    </div>
                    <div class="form-group">
                        <label style="color: #0b0b0b">Thêm mô tả</label>
                        <textarea type="text" name="mo-ta" id="mota-add" style="font-size: 0.8rem;text-align: left "
                                  class="form-control text-left px-3"
                                  rows="4">
                            </textarea>

                    </div>

                    <div style="text-align: center">
                        <div style="margin-top: 32px">
                            <button type="submit" class="btn btn-primary py-3 px-4">Thêm</button>
                        </div>

                    </div>
                    <!--        end body modal-->
                </form>

            </div>
        </div>
    </div>
</div>
<!--end modal add item-->



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
        $('.show-detail').click(function () {
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
</body>
</html>



