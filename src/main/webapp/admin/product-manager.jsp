<%@ page import="com.example.flowershop_doan.bean.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
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

                                <%--                                 sản phẩm cụ thể--%>
                                <c:forEach items="${listP}" var="p">
                                    <tr class="tr-shadow">
                                        <td class="align-middle">${p.id}</td>
                                        <td>
                                            <div class="img-40"><img
                                                    src="${p.image}"
                                                    alt="Colorlib Template"></div>
                                        </td>
                                        <td class="desc">${p.name}</td>
                                        <td>${p.priceOld}</td>
                                        <td>${p.priceSell}</td>
                                        <td></td>
                                        <td><span class="status--process">${p.status}</span></td>
                                        <td>
                                            <div class="table-data-feature">

                                                <button id="show-edit" class="item" data-toggle="tooltip"
                                                        data-placement="top"
                                                        title="Chỉnh sửa sản phẩm">
                                                    <i class="zmdi zmdi-edit"></i>
                                                </button>

                                                    <%--                                                XÓA SẢN PHẨM--%>

                                                <a href="delete?pid=${p.id}">
                                                    <button type="button" class="item" data-placement="top"
                                                            data-toggle="modal" data-target="#exampleModalCenter"
                                                            title="Xóa sản phẩm">
                                                        <i class="zmdi zmdi-delete"></i>

                                                    </button>
                                                </a>

                                                <button id="show-detail" class="item" data-toggle="tooltip"
                                                        data-placement="top"
                                                        title="Xem mô tả sản phẩm">
                                                    <i class="zmdi zmdi-more"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="spacer"></tr>
                                </c:forEach>
                                <%--                                kết thúc 1 sp--%>


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

<!--begin modal add item THÊM SẢN PHẨM-->
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
                <%--                <div class="form-group">--%>
                <%--                    <label style="color: #0b0b0b">Thêm ID</label>--%>
                <%--                    <input type="text" id="id-add" style="font-size: 0.8rem"--%>
                <%--                           class="form-control text-left px-3"--%>
                <%--                           placeholder="Nhập ID">--%>
                <%--                </div>--%>
                <form action="../add-product" method="post" class="info">

                    <%--                    <div class="form-group">--%>
                    <%--                        <label style="color: #0b0b0b; float: left">Thêm hình ảnh</label>--%>
                    <%--                        <!--                        <textarea class="form-control" id="message-text"></textarea>-->--%>
                    <%--                        <input type="image" id="img-add" src="img/add.jpg"--%>
                    <%--                               style=" width: 100px;height: 100px; float: left"--%>
                    <%--                        >--%>
                    <%--                        <input type="file" class="form-control-file" id="hinhAnh" value="Image" accept="image/*">--%>
                    <%--                        <!--                        <hr>-->--%>
                    <%--                        <!--                        <label for="tenDanhMuc" class="col-form-label">Thay tên :</label>-->--%>


                    <%--                    </div>--%>

                    <div class="form-group">
                        <label style="color: #0b0b0b">Thêm tên</label>
                        <input type="text" id="name" name="name" style="font-size: 0.8rem"
                               class="form-control text-left px-3"
                               placeholder="Nhập tên sản phẩm" required/>
                    </div>

                    <div class="form-group">
                        <label style="color: #0b0b0b">Thêm ảnh</label>
                        <input type="text" id="image" name="image" style="font-size: 0.8rem"
                               class="form-control text-left px-3"
                               placeholder="Nhập ảnh sản phẩm" required/>
                    </div>
                    <div class="form-group">
                        <label style="color: #0b0b0b">Thêm giá gốc</label>
                        <input type="text" id="priceOld" name="priceOld" style="font-size: 0.8rem"
                               class="form-control text-left px-3"
                               placeholder="Nhập giá gốc" required/>
                    </div>
                    <div class="form-group">
                        <label style="color: #0b0b0b">Thêm giá bán</label>
                        <%--                        price-sell-add--%>
                        <input type="text" id="priceSell" name="priceSell" style="font-size: 0.8rem"
                               class="form-control text-left px-3"
                               placeholder="Nhập giá bán" required/>
                    </div>
                    <div class="form-group">
                        <form action="product-manager">
                            <%--                            /action_page.php--%>
                            <label> Chọn danh mục </label>
                            <select name="category" id="category">
                                <%--                                <option value="dm">Chọn danh mục</option>--%>
                                <c:forEach items="${listCC}" var="cat">
                                    <option value="${cat.id}">${cat.name}</option>

                                </c:forEach>

                            </select>
                        </form>

                    </div>
                    <%--                    <div class="form-group">--%>
                    <%--                        <form action="/action_page.php">--%>
                    <%--                            <label> Thêm Trạng thái </label>--%>
                    <%--                            <select name="stt" id="stt-add">--%>
                    <%--                                <option value="ctt">Chọn trạng thái</option>--%>
                    <%--                                <option value="ch">Còn hàng</option>--%>
                    <%--                                <option value="hh">Hết hàng</option>--%>

                    <%--                            </select>--%>
                    <%--                        </form>--%>

                    <%--                    </div>--%>

                    <div class="form-group">
                        <label style="color: #0b0b0b">Thêm mô tả</label>
                        <%--                        mota-add--%>
                        <textarea type="text" id="description" name="description"
                                  style="font-size: 0.8rem;text-align: left "
                                  class="form-control text-left px-3"
                                  rows="4" required>
                            </textarea>

                    </div>
                        <% out.println(request.getParameter("name"));%>
                    <div style="text-align: center">
                        <div style="margin-top: 32px">
                            <a href="" class="btn btn-primary py-3 px-4" type="submit">Thêm</a>
                        </div>

                    </div>
                </form>


                <!--        end body modal-->
            </div>
        </div>
    </div>
</div>
<!--end modal add item-->

<!--begin modal edit item-->
<div class="modal fade modal-form" id="form-edit">
    <div class="modal-dialog ">
        <div class="modal-content" style="border: none">
            <!--        begin modal-header-->
            <div style="background-color: #82ae46;">
                <div class="modal-header" style="border: none">
                    <a type="button" class="close btn-outline-warning text-white" data-dismiss="modal"
                       style="font-weight: 100;">&times;</a>
                </div>
                <div class="text-center" style="padding-bottom: 16px">
                    <h4 style="text-transform: uppercase;color: white">Chỉnh sửa sản phẩm</h4>
                </div>
            </div>
            <!--        end modal-header-->

            <!--        begin body modal-->
            <div class="cart-total modal-body" style="margin: auto; border: none">

                <form action="#" class="info">
                    <div class="form-group">
                        <label style="color: #0b0b0b">Hình ảnh</label>
                        <br>
                        <input type="image" id="img-edit"
                               src="https://tools.dalathasfarm.com/public/products/1638/1638325734/p4u-(10)wm_800x800.jpg"
                               style=" width: 100px;height: 100px;"
                        >
                        <input type="file" class="form-control-file" id="hinhAnh-edit" value="Image" accept="image/*">
                    </div>
                    <div class="form-group">
                        <label style="color: #0b0b0b">Tên sản phẩm</label>
                        <input type="text" id="name-edit" style="font-size: 0.8rem"
                               class="form-control text-left px-3"
                               value="Hoa Violet châu Phi">
                    </div>
                    <div class="form-group">
                        <label style="color: #0b0b0b">Giá gốc</label>
                        <input type="text" id="price-org-edit" style="font-size: 0.8rem"
                               class="form-control text-left px-3"
                               value="600.00đ">
                    </div>
                    <div class="form-group">
                        <label style="color: #0b0b0b">Giá bán</label>
                        <input type="text" id="price-sell-edit" style="font-size: 0.8rem"
                               class="form-control text-left px-3"
                               value="500.00đ">
                    </div>
                    <div class="form-group">
                        <form action="/action_page.php">
                            <label> Chọn danh mục </label>
                            <select name="danhmuc" id="dm-edit">
                                <option value="hsn">Hoa sinh nhật</option>
                                <option value="hcb">Hoa chia buồn</option>
                                <option value="hc">Hoa cưới</option>
                                <option value="hcm">Hoa chúc mừng</option>
                                <option value="hkt">Hoa khai trương</option>
                                <option value="hty">Hoa tình yêu</option>
                            </select>
                        </form>

                    </div>
                    <div class="form-group">
                        <form action="/action_page.php">
                            <label> Trạng thái </label>
                            <select name="stt" id="stt-edit">
                                <option value="ctt">Chọn trạng thái</option>
                                <option value="ch">Còn hàng</option>
                                <option value="hh">Hết hàng</option>

                            </select>
                        </form>

                    </div>
                    <div class="form-group">
                        <label style="color: #0b0b0b">Mô tả</label>

                        <textarea type="text" id="mota-edit" style="font-size: 0.8rem;text-align: left "
                                  class="form-control text-left px-3"
                                  rows="4">Sản phẩm bao gồm:
    + Hoa Violet Châu Phi: 1 chậu (màu ngẫu nhiên)
   + Chậu thông điệp + trang trí: 1 bộ
   Lưu ý: Chậu sứ thông điệp sẽ được giao ngẫu nhiên theo mẫu trong hình
                            </textarea>

                    </div>
                </form>

                <div style="text-align: center">
                    <div style="margin-top: 32px"><a href="index.html" class="btn btn-primary py-3 px-4">Lưu</a></div>

                </div>
                <!--        end body modal-->
            </div>
        </div>
    </div>
</div>

<!--begin modal edit item -->
<div class="modal fade modal-form" id="form-detail">
    <div class="modal-dialog ">
        <div class="modal-content" style="border: none">
            <!--        begin modal-header-->
            <div style="background-color: #82ae46;">
                <div class="modal-header" style="border: none">
                    <a type="button" class="close btn-outline-warning text-white" data-dismiss="modal"
                       style="font-weight: 100;">&times;</a>
                </div>
                <div class="text-center" style="padding-bottom: 16px">
                    <h4 style="text-transform: uppercase;color: white">Mô tả sản phẩm</h4>
                </div>
            </div>
            <!--        end modal-header-->

            <!--        begin body modal-->
            <div class="cart-total modal-body" style="margin: auto; border: none">
                <div class="form-group">
                    <label style="color: #0b0b0b"> Chi tiết sản phẩm</label>
                    <div type="text" id="detail" style="font-size: 0.8rem;"
                         class="form-control text-left px-3">
                        <br>Sản phẩm bao gồm:
                        <br>+ Hoa Violet Châu Phi: 1 chậu (màu ngẫu nhiên)
                        <br>+ Chậu thông điệp + trang trí: 1 bộ
                        <br>Lưu ý: Chậu sứ thông điệp sẽ được giao ngẫu nhiên theo mẫu trong hình

                    </div>

                    <!--        end body modal-->
                </div>
            </div>
        </div>
    </div>
</div>
<!--Begin modal xóa sản phẩm-->
<%--<div class="modal fade modal-form" id="exampleModalCenter" tabindex="-1" role="dialog"--%>
<%--     aria-labelledby="exampleModalCenterTitle"--%>
<%--     aria-hidden="true">--%>
<%--    <div class="modal-dialog modal-dialog-centered" role="document">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h5 class="modal-title" id="exampleModalCenterTitle">Xóa Sản Phẩm</h5>--%>
<%--                <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--                    <span aria-hidden="true">&times;</span>--%>
<%--                </button>--%>
<%--            </div>--%>
<%--            <div class="modal-body">--%>
<%--                <span> Bạn có chắc muốn xóa sản phẩm này!</span>--%>
<%--            </div>--%>
<%--            <div class="modal-footer">--%>
<%--                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>--%>

<%--&lt;%&ndash;                &lt;%&ndash;%>--%>
<%--&lt;%&ndash;                    List<Product> list= (ArrayList<Product>) request.getAttribute("listP");&ndash;%&gt;--%>
<%--&lt;%&ndash;                    for(Product product: list){&ndash;%&gt;--%>
<%--&lt;%&ndash;                        if(product!=null)&ndash;%&gt;--%>
<%--&lt;%&ndash;                    }&ndash;%&gt;--%>
<%--&lt;%&ndash;                %>&ndash;%&gt;--%>

<%--&lt;%&ndash;                <a href="delete?pid=${}"></a>&ndash;%&gt;--%>
<%--                <button type="button" class="btn btn-primary">Delete</button>--%>

<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<!--End modal xóa sản phẩm///////-->


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
</body>
</html>
