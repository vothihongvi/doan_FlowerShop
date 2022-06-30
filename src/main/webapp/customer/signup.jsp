<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="taglib.jsp" %>

<!--begin modal sign up-->
<div class="modal fade modal-form sign-up-form">
    <div class="modal-dialog modal-open ">
        <div class="modal-content" style="border: none">
            <!--        begin modal-header-->
            <div style="background-color: #82ae46;">
                <div class="modal-header" style="border: none">
                    <a type="button" class="close btn-outline-warning text-white" data-dismiss="modal"
                       style="font-weight: 100;">&times;</a>
                </div>
                <div class="text-center" style="padding-bottom: 16px">
                    <h4 style="text-transform: uppercase;color: white">Tạo tài khoản mới</h4>
                </div>
            </div>
            <!--        end modal-header-->

            <!--        begin body modal-->
            <div class="cart-total modal-body" style="margin: auto; border: none">
                <form action="#" class="info">
                    <div class="form-group">
                        <label for="name-user" class="text-body">Họ tên</label>
                        <input type="email" id="name-user" class="form-control text-left px-3"
                               style="font-size: 0.8rem"
                               placeholder="Nhập họ tên">
                    </div>
                    <div class="form-group">
                        <label for="emailSignip" class="text-body">Email</label>
                        <input type="email" id="emailSignip" class="form-control text-left px-3"
                               style="font-size: 0.8rem"
                               placeholder="Nhập email">
                    </div>
                    <div class="form-group">
                        <label for="passwordSignup" class="text-body">Mật khẩu</label>
                        <input type="password" id="passwordSignup" style="font-size: 0.8rem"
                               class="form-control text-left px-3"
                               placeholder="Nhập mật khẩu">
                    </div>
                    <div class="form-group">
                        <label for="verifyPass" class="text-body">Nhập lại mật khẩu</label>
                        <input type="password" id="verifyPass" style="font-size: 0.8rem"
                               class="form-control text-left px-3"
                               placeholder="Nhập lại mật khẩu">
                    </div>
                    <div class="form-group">
                        <label for="tel" class="text-body">Số điện thoại</label>
                        <input type="text" id="tel" style="font-size: 0.8rem"
                               class="form-control text-left px-3"
                               placeholder="Nhập số điện thoại">
                    </div>
                </form>
                <div style="text-align: center">
                    <div style="margin-top: 32px"><a href="checkout.html" class="btn btn-primary py-3 px-4">Đăng ký</a>
                    </div>
                    <div style="margin: 16px 0px"> Bạn đã có tài khoản? <a style="cursor: pointer"
                                                                           class="text-center text-primary"
                                                                           id="login-now">Đăng nhập
                        ngay!</a></div>
                </div>
            </div>

            <!--        end body modal-->
        </div>
    </div>
</div>
<!--end modal sign up-->
