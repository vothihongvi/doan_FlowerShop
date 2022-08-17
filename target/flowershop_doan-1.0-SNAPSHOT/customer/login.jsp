<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="taglib.jsp" %>

<!--begin modal login-->
<div class="modal fade modal-form login-form">
    <div class="modal-dialog ">
        <div class="modal-content" style="border: none">
            <!--        begin modal-header-->
            <div style="background-color: #82ae46;">
                <div class="modal-header" style="border: none">
                    <a type="button" class="close btn-outline-warning text-white" data-dismiss="modal"
                       style="font-weight: 100;">&times;</a>
                </div>
                <div class="text-center" style="padding-bottom: 16px">
                    <h4 style="text-transform: uppercase;color: white">Đăng nhập</h4>
                </div>
            </div>
            <!--        end modal-header-->

            <!--        begin body modal-->
            <div class="cart-total modal-body" style="margin: auto; border: none">
                <form action="<%=request.getContextPath()%>/login" method="post" class="info">
                    <div class="form-group">
                        <label for="phone" style="color: #0b0b0b">Số điện thoại</label>
                        <input type="phone" name="phone" id="phone" class="form-control text-left px-3"
                               style="font-size: 0.8rem"
                               placeholder="Nhập số điện thoại">
                    </div>
                    <div class="form-group">
                        <label for="passwordLogin" style="color: #0b0b0b">Mật khẩu</label>
                        <input type="password" name="pass" id="passwordLogin" style="font-size: 0.8rem"
                               class="form-control text-left px-3"
                               placeholder="Nhập mật khẩu">
                    </div>
                    <div style="text-align: right">
                        <a style="cursor: pointer;" class="text-center text-secondary" id="forget-pass">Quên mật khẩu?</a>
                    </div>
                    <div style="text-align: center">
                        <div style="margin-top: 32px" type="submit">
                            <button type="submit" class="btn btn-primary py-3 px-4"
                                    style="margin-top: 32px">Đăng nhập
                            </button>
                        </div>
                        <div style="margin: 16px 0px"> Bạn chưa có tài khoản? <a style="cursor: pointer"
                                                                                 class="text-center text-primary"
                                                                                 id="sign-up">Đăng ký
                            ngay!</a></div>
                    </div>
                </form>

            </div>
            <!--        end body modal-->
        </div>
    </div>
</div>
<!--end modal login-->
