<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="taglib.jsp" %>

<!--begin modal forget pass-->
<div class="modal fade modal-form forget-pass-form" >
    <div class="modal-dialog">
        <div class="modal-content" style="border: none">
            <!--        begin modal-header-->
            <div style="background-color: #82ae46;">
                <div class="modal-header" style="border: none">
                    <a type="button" class="close btn-outline-warning text-white" data-dismiss="modal"
                       style="font-weight: 100;outline: none">&times;</a>
                </div>
                <div class="text-center" style="padding-bottom: 16px">
                    <h4 style="text-transform: uppercase;color: white">Quên mật khẩu</h4>
                </div>
            </div>
            <!--        end modal-header-->

            <!--        begin body modal-->
            <div class="cart-total modal-body" style="margin: auto; border: none">
                <p>Để lấy lại mật khẩu vui lòng nhập email đã đăng ký. Sau khi nhận mật khẩu tạm thời, bạn nên đổi lại
                    mật khẩu mới.</p>

                <form action="#" class="info">
                    <div class="form-group">
                        <label for="emailGetPass" style="color: #0b0b0b">Email</label>
                        <input type="email" id="emailGetPass" class="form-control text-left px-3"
                               style="font-size: 0.8rem"
                               placeholder="Nhập email">
                    </div>

                </form>

                <div style="text-align: center">
                    <div style="margin-top: 32px"><a href="checkout.html" class="btn btn-primary py-3 px-4">Nhận lại mật
                        khẩu</a></div>
                    <div style="margin: 16px 0px"> Đã nhớ mật khẩu? <a style="cursor: pointer"
                                                                       class="text-center text-primary"
                                                                       id="login-again">Đăng nhập lại.
                    </a></div>
                </div>
            </div>
            <!--        end body modal-->
        </div>
    </div>
</div>
<!--end modal forget pass-->