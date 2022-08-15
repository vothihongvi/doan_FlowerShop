<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="taglib.jsp" %>
<jsp:useBean id="b" class="com.example.flowershop_doan.dao.ProductDao" scope="request"></jsp:useBean>

<section class="ftco-section ftco-category ftco-no-pt">
    <div class="container">
        <div class="row">
            <c:forEach items="${b.allCategory}" var="ca">

                <div class="col-md-4">
                    <a href="<%=request.getContextPath()%>/shop?cid=${ca.id}">

                        <div class="category-wrap ftco-animate img mb-4 d-flex align-items-end"
                             style="background-image: url(${ca.image});">
                            <div class="text px-3 py-1">
                                <h2 class="mb-0 text-white">
                                        ${ca.name}</h2>
                            </div>
                        </div>
                    </a>

                </div>

            </c:forEach>

        </div>
    </div>
</section>
