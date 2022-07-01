<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="taglib.jsp" %>


<% String errorMessage = (String) request.getAttribute("error");
%>

<div>
    <!--begin modal sign up-->
    <div class="modal fade modal-form sign-up-form">
        <%--    <%System.out.println(showClass + style);%>--%>
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
                    <form action="../signup" method="post" class="info">
                        <div class="form-group">
                            <label for="name-user" class="text-body">Họ tên</label>
                            <input type="text" name="name" id="name-user" class="form-control text-left px-3"
                                   style="font-size: 0.8rem"
                                   placeholder="Nhập họ tên">
                        </div>
                        <div class="form-group">
                            <label for="tel" class="text-body">Số điện thoại</label>
                            <input type="text" name="phone" id="tel" style="font-size: 0.8rem"
                                   class="form-control text-left px-3"
                                   placeholder="Nhập số điện thoại">
                        </div>
                        <div class="form-group">
                            <label for="passwordSignup" class="text-body">Mật khẩu</label>
                            <input type="password" name="pass" id="passwordSignup" style="font-size: 0.8rem"
                                   class="form-control text-left px-3"
                                   placeholder="Nhập mật khẩu">
                        </div>
                        <div class="form-group">
                            <label for="verifyPass" class="text-body">Nhập lại mật khẩu</label>
                            <input type="password" name="verify" id="verifyPass" style="font-size: 0.8rem"
                                   class="form-control text-left px-3"
                                   placeholder="Nhập lại mật khẩu">
                        </div>

                        <div style="text-align: center" id="signup">
                            <button  type="submit" class="btn btn-primary py-3 px-4"
                                    style="margin-top: 32px">Đăng
                                ký
                            </button>
                            <div style="margin: 16px 0px"> Bạn đã có tài khoản? <a style="cursor: pointer"
                                                                                   class="text-center text-primary"
                                                                                   id="login-now">Đăng nhập
                                ngay!</a></div>
                        </div>

                    </form>

                </div>

                <!--        end body modal-->
            </div>
        </div>
    </div>
    <!--end modal sign up-->
</div>





