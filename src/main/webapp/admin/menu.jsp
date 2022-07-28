<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../customer/taglib.jsp" %>
<!-- MENU SIDEBAR-->
<aside class="menu-sidebar2 d-none d-lg-block">
    <div class="logo title-6 ">
        <a href="./dashboard.jsp" style="color: black">
            <span style="font-weight: 700">FLOWER</span> SHOP
        </a>
    </div>
    <div class="menu-sidebar2__content js-scrollbar2">
        <nav class="navbar-sidebar2">
            <ul class="list-unstyled navbar__list">
                <li>
                    <a href="./dashboard.jsp">
                        <i class="fas fa-chart-bar"></i>Thống kê</a>
                </li>
                <li class="has-sub">
                    <a class="js-arrow" href="#">
                        <i class="fas fa-calculator"></i>Quản lý
                        <span style="display: flex;align-items:center" class="arrow">
                                        <i class="fas fa-angle-down"></i>
                                    </span>
                    </a>
                    <ul class="list-unstyled navbar__sub-list js-sub-list">
                        <li>
                            <a href="category-manager.jsp">
                                <i class="fas fa-object-group"></i>Quản lý danh mục</a>
                        </li>
                        <li>
                            <a href="product-manager.jsp">
                                <i class="fas fa-floppy-o"></i>Quản lý sản phẩm</a>
                        </li>
                        <li>
                            <a href="order-manager.jsp">
                                <i class="fas fa-sticky-note"></i>Quản lý đơn hàng</a>
                            <span class="inbox-num">3</span>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fas fa-send"></i>Quản lý tương tác</a>
                            <span class="inbox-num">1</span>
                        </li>
                    </ul>
                </li>


                <li class="has-sub">
                    <a class="js-arrow" href="#">
                        <i class="fas fa-group"></i>Khách hàng
                    </a>

                </li>
                <li class="has-sub">
                    <a class="js-arrow" href="#">
                        <i class="fas fa-check-square"></i>Hóa đơn
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</aside>
<!-- END MENU SIDEBAR-->
