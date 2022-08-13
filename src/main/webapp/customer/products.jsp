<%--<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="taglib.jsp" %>
<jsp:useBean id="a" class="com.example.flowershop_doan.dao.ProductDao" scope="request"></jsp:useBean>
<c:import url="/product"/>
<c:set var="myProducts" value="${requestScope.listP}"/>



<%--dòng này chưa sài vì đang sài java beans--%>
<%--<c:import url="/category"/>--%>
<%--<c:set var="myCategory" value="${requestScope.listP}"/>--%>


<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 mb-5 text-center">
                <ul class="product-category">
                    <li><a href="shop.jsp" class="active">All</a></li>
                    <%--BẮT ĐẦU JAVA BEANS--%>
                    <c:forEach items="${a.allCategory}" var="ca">
                        <li><a href="category?cid=${ca.id}">${ca.name}</a></li>
                    </c:forEach>

                    <%--KẾT THÚC JAVA BEANS--%>

                    <%--                    <li><a href="#">Hoa Sinh Nhật</a></li>--%>
                    <%--                    <li><a href="#">Hoa Chúc Mừng</a></li>--%>
                    <%--                    <li><a href="#">Hoa Chia Buồn</a></li>--%>
                    <%--                    <li><a href="#">Hoa Cưới</a></li>--%>
                    <%--                    <li><a href="#">Hoa Khai Trương</a></li>--%>
                    <%--                    <li><a href="#">Hoa Giáng Sinh</a></li>--%>


                </ul>
            </div>
        </div>

        <div class="row">
            <%--            BẮT ĐẦU USEBEAN--%>

            <%--            <c:forEach items="${a.allProduct}" var="o">--%>
            <%--                                <div class="col-md-6 col-lg-3 ftco-animate">--%>
            <%--                                    <div class="product">--%>
            <%--                                        <a href="detailproduct.jsp" class="img-prod"><img class="img-fluid"--%>
            <%--                                            &lt;%&ndash;    hình ảnh sp&ndash;%&gt;--%>
            <%--                                                                                          src="${o.image}"--%>
            <%--                                                                                          alt="Colorlib Template">--%>
            <%--                                            <span class="status">${o.status}%</span>--%>
            <%--                                            <div class="overlay"></div>--%>
            <%--                                        </a>--%>
            <%--                                        <div class="text py-3 pb-4 px-3 text-center">--%>
            <%--                                                &lt;%&ndash;                            TÊN SP&ndash;%&gt;--%>
            <%--                                            <h3><a href="#">${o.name}</a></h3>--%>
            <%--                                            <div class="d-flex">--%>
            <%--                                                <div class="pricing">--%>
            <%--                                                    <p class="price"><span class="mr-2 price-dc">${o.priceOld}</span><span--%>
            <%--                                                            class="price-sale">${o.priceSell}</span>--%>
            <%--                                                    </p>--%>
            <%--                                                </div>--%>
            <%--                                            </div>--%>

            <%--                                            <!--                        phần 3 icon nổi lên khi hoover vào sản phẩm-->--%>
            <%--                                            <div class="bottom-area d-flex px-3">--%>
            <%--                                                <div class="m-auto d-flex">--%>
            <%--                                                    <a href="detailproduct.jsp"--%>
            <%--                                                       class="add-to-cart d-flex justify-content-center align-items-center text-center">--%>
            <%--                                                        <span><i class="ion-ios-menu"></i></span>--%>
            <%--                                                    </a>--%>
            <%--                                                    <a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">--%>
            <%--                                                        <span><i class="ion-ios-cart"></i></span>--%>
            <%--                                                    </a>--%>
            <%--                                                    <a href="#" class="heart d-flex justify-content-center align-items-center ">--%>
            <%--                                                        <span><i class="ion-ios-heart"></i></span>--%>
            <%--                                                    </a>--%>
            <%--                                                </div>--%>
            <%--                                            </div>--%>
            <%--                                        </div>--%>
            <%--                                    </div>--%>
            <%--                                </div>--%>


            <%--            </c:forEach>--%>


            <%--             KẾT THÚC USEBEAN--%>

            <%--            BẮT ĐẦU JSP SẢN PHẨM--%>
            <c:forEach items="${myProducts}" var="o">
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="product">
                        <a href="detail?pid=${o.id}" class="img-prod"><img class="img-fluid"
                            <%--                                                                          hình ảnh sp--%>
                                                                          src="${o.image}"
                                                                          alt="Colorlib Template">
                            <span class="status">${o.status}%</span>
                            <div class="overlay"></div>
                        </a>
                        <div class="text py-3 pb-4 px-3 text-center">
                                <%--                            TÊN SP--%>
                            <h3><a href="#">${o.name}</a></h3>
                            <div class="d-flex">
                                <div class="pricing">
                                    <p class="price"><span class="mr-2 price-dc">${o.priceOld}</span><span
                                            class="price-sale">${o.priceSell}</span>
                                    </p>
                                </div>
                            </div>

                            <!--                        phần 3 icon nổi lên khi hoover vào sản phẩm-->
                            <div class="bottom-area d-flex px-3">
                                <div class="m-auto d-flex">
                                    <a href="detailproduct.jsp"
                                       class="add-to-cart d-flex justify-content-center align-items-center text-center">
                                        <span><i class="ion-ios-menu"></i></span>
                                    </a>
                                    <a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
                                        <span><i class="ion-ios-cart"></i></span>
                                    </a>
                                    <a href="#" class="heart d-flex justify-content-center align-items-center ">
                                        <span><i class="ion-ios-heart"></i></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </c:forEach>

            <%--            KẾT THÚC JSP SẢN PHẨM--%>


        </div>


        <div class="row mt-5">
            <div class="col text-center">
                <div class="block-27">
                    <ul>
                        <li><a href="#">&lt;</a></li>
                        <li class="active"><span>1</span></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">&gt;</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
