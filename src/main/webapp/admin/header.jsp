<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../customer/taglib.jsp" %>
<!-- HEADER DESKTOP-->
<header class="header-desktop">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="header-wrap">
                <form class="form-header" action="" method="POST">
                    <input class="au-input au-input--xl" type="text" name="search"
                           placeholder="Tìm kiếm dữ liệu..."/>
                    <button class="au-btn--submit" type="submit">
                        <i class="zmdi zmdi-search"></i>
                    </button>
                </form>
                <div class="header-button">
                    <div class="account-wrap">
                        <div class="account-item clearfix js-item-menu">
                            <div class="image">
                                <img src="https://ae01.alicdn.com/kf/HTB13YQePVXXXXbWapXXq6xXFXXXu/Nh-n-t-o-Daisy-Hoa-B-Hoa-M-Ph-ng-C-y-hoa-Gi-Marguerites.jpg_Q90.jpg_.webp"
                                     alt="Avatar admin"/>
                            </div>
                            <div class="content">
                                <a class="js-acc-btn" href="#">${authAdmin.name}</a>
                            </div>
                            <div class="account-dropdown js-dropdown">
                                <div class="info clearfix">
                                    <div class="image justify-content-center">
                                        <div class="image">
                                            <a href="#">
                                                <img src="https://ae01.alicdn.com/kf/HTB13YQePVXXXXbWapXXq6xXFXXXu/Nh-n-t-o-Daisy-Hoa-B-Hoa-M-Ph-ng-C-y-hoa-Gi-Marguerites.jpg_Q90.jpg_.webp"
                                                     alt="Avatar admin"/>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <h5 class="name">
                                            <a href="#">${authAdmin.name}</a>
                                        </h5>
                                        <span class="email">${authAdmin.phone}</span>
                                    </div>
                                </div>
                                <div class="account-dropdown__body">
                                    <div class="account-dropdown__item">
                                        <a href="#">
                                            <i class="zmdi zmdi-account"></i>Tài khoản</a>
                                    </div>
                                    <div class="account-dropdown__item">
                                        <a href="#">
                                            <i class="zmdi zmdi-settings"></i>Cài đặt</a>
                                    </div>
                                    <div class="account-dropdown__item">
                                        <a href="#">
                                            <i class="zmdi zmdi-money-box"></i>Hóa đơn</a>
                                    </div>
                                </div>
                                <div class="account-dropdown__footer">
                                    <a href="../admin-logout">
                                        <i class="zmdi zmdi-power"></i>Đăng xuất</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- HEADER DESKTOP-->
