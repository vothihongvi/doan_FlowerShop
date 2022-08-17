<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.flowershop_doan.bean.Product" %>
<%@ page import="com.example.flowershop_doan.dao.ProductDao" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="taglib.jsp" %>
<jsp:useBean id="a" class="com.example.flowershop_doan.dao.ProductDao" scope="request"></jsp:useBean>

<%--<c:import url="/category"/>--%>
<%--<c:set var="my" value="${requestScope.listC}"/>--%>
<%--<c:set var="myProduct" value="${requestScope.listP}" />--%>

<section class="ftco-section">

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 mb-5 text-center">
                <ul class="product-category">
                    <li><a href="<%=request.getContextPath()%>/shop?cid=0">Tất cả</a></li>
                    <%--BẮT ĐẦU JAVA BEANS--%>
                    <c:forEach items="${a.allCategory}" var="ca">
                        <li><a href="<%=request.getContextPath()%>/shop?cid=${ca.id}">${ca.name}</a></li>
                    </c:forEach>

                </ul>
            </div>
        </div>

        <div class="row">
            <%
                String status = "";
                List<Product> list = (ArrayList<Product>) request.getAttribute("listByCategory");

                for (Product p : list) {
                    status = (p.getStatus() == 0) ? "Hết hàng" : "Còn hàng";
            %>
            <div class="col-md-6 col-lg-3 ftco-animate">
                <div class="product">
                    <a href="<%=request.getContextPath()%>/detail?pid=<%=p.getId()%>" class="img-prod"><img
                            class="img-fluid"
                    <%--                                                                          hình ảnh sp--%>
                            src="<%=p.getImage()%>"
                            alt="Colorlib Template">
                        <span class="status"><%=status%></span>
                        <div class="overlay"></div>
                    </a>
                    <div class="text py-3 pb-4 px-3 text-center">
                        <%--                            TÊN SP--%>
                        <h3><a href="#"><%=p.getName()%>
                        </a></h3>
                        <div class="d-flex">
                            <div class="pricing">
                                <p class="price"><span class="mr-2 price-dc"><%=p.getPriceOld()%></span><span
                                        class="price-sale"><%=p.getPriceSell()%></span>
                                </p>
                            </div>
                        </div>

                        <!--                        phần 3 icon nổi lên khi hoover vào sản phẩm-->
                        <div class="bottom-area d-flex px-3">
                            <div class="m-auto d-flex">
                                <a href="<%=request.getContextPath()%>/detail?pid=<%=p.getId()%>"
                                   class="add-to-cart d-flex justify-content-center align-items-center text-center">
                                    <span><i class="ion-ios-menu"></i></span>
                                </a>
                                <a href="<%=request.getContextPath()%>/add-to-cart?pid=<%=p.getId()%>&context=shop"
                                   class="buy-now d-flex justify-content-center align-items-center mx-1">
                                    <span><i class="ion-ios-cart"></i></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <% }
            %>
        </div>
    </div>
</section>
