<%@ page import="com.example.flowershop_doan.bean.Product" %>
<%@ page import="com.example.flowershop_doan.dao.ProductDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../customer/taglib.jsp" %>
<jsp:useBean id="a" class="com.example.flowershop_doan.dao.ProductDao" scope="request"></jsp:useBean>
<% String pid = (String) request.getParameter("pid");%>

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
    <% Product p = ProductDao.getInstance().getAllProductByProductID(Integer.parseInt(pid));%>

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
                        <h1>Chỉnh sửa sản phẩm <%=pid%>
                        </h1>
                        <form action="../update-product?pid=<%=pid%>" method="POST" class="info">
                            <div class="form-group">
                                <label style="color: #0b0b0b; float: left">Edit hình ảnh</label>
                                <input type="text" name="image-edit" id="img-add"
                                       class="form-control text-left px-3" value="<%=p.getImage()%>"
                                >
                            </div>
                            <div class="form-group">
                                <label style="color: #0b0b0b">Edit tên sản phẩm</label>
                                <input type="text" name="name-edit" id="name-add" style="font-size: 0.8rem"
                                       class="form-control text-left px-3"
                                       value="<%=p.getName()%>">
                            </div>
                            <div class="form-group">
                                <label style="color: #0b0b0b">Edit giá gốc</label>
                                <input type="text" name="price-old-edit" id="price-org-add" style="font-size: 0.8rem"
                                       class="form-control text-left px-3"
                                       value="<%=p.getPriceOld()%>">
                            </div>
                            <div class="form-group">
                                <label style="color: #0b0b0b">Edit giá bán</label>
                                <input type="text" name="price-sell-edit" id="price-sell-add" style="font-size: 0.8rem"
                                       class="form-control text-left px-3"
                                       value="<%=p.getPriceSell()%>"">
                            </div>
                            <div class="form-group">
                                <label> Chọn danh mục </label>
                                <select name="danhmuc-edit" id="dm">
                                    <c:forEach items="${a.allCategory}" var="ca">
                                        <option value="${ca.id}">${ca.name}</option>
                                    </c:forEach>

                                </select>

                            </div>
                            <div class="form-group">
                                <label style="color: #0b0b0b">Edit mô tả</label>
                                <textarea type="text" name="mo-ta-edit" id="mota-add"
                                          style="font-size: 0.8rem;text-align: left "
                                          class="form-control text-left px-3" value="<%=p.getDescription()%>"
                                          rows="4">
                            </textarea>

                            </div>

                            <div style="text-align: center">
                                <div style="margin-top: 32px">
                                    <button type="submit" class="btn btn-primary py-3 px-4">Cập nhật</button>
                                </div>

                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </section>

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