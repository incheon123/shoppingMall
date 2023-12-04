<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/products.css">
<title>상품</title>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
	<!-- 추후에 스크립트 태그를 추가하세요 -->
	<div class="container text-center d-block">
<!-- 	    <h3 class="flex-sm-fill text-sm-center nav-link text-secondary py-5 text-center">상의</h3> -->
	    <nav class="nav nav-pills flex-column flex-sm-row my-5">
	    	<c:forEach var="product_category" items="${cate}" >
				<a class="flex-sm-fill text-sm-center nav-link text-secondary text-center" 
					href="${pageContext.request.contextPath}${servletPath}?gender=${gender}&age=${age}&age=&spcg=${product_category.getSuper_category()}&sbcg=${product_category.getSub_category()}">${product_category.getCategory_name()}</a>
	    	</c:forEach>
	    </nav>
	    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-3 row-cols-xl-3">
	    	<c:forEach var="product" items="${products.getProducts()}" varStatus="status">
	      		<div class="col position-relative">
                	<a href="${pageContext.request.contextPath }/product?id=${product.getPid()}" class="kth kth-hover px-0 py-0 my-0 text-decoration-none">
                    	<div class="col px-1 my-1">
                        	<div class="card">
                            	<img src="/${product.getImg_url()}" class="card-img-top object-fit-cover" alt="...">
	                            <div class="card-body">
	                                <h5 class="card-title">${product.getPname()}</h5>
	                            </div>
	                            <ul class="list-group list-group-flush">
	                                <li class="list-group-item">${product.getPrice()}원</li>
	                                <li class="list-group-item">${product.getGender()}</li>
	                                <li class="list-group-item">${product.getTotal_score()}</li> <!-- 옵션 사항-->
	                            </ul>
	                            <div class="card-body kth-product-desc">
	                                <p class="card-text">${product.getShort_desc()}</p>
	                            </div>
	                        </div>
                    	</div>
	           	   	</a>
	                <span class="cart-shopping">
<%-- 	                    <% if(list != null && list.contains(product.get(i).getPid())){ %> --%>
<!-- 	                    	<i class="fa-solid fa-cart-shopping fs-2" style="color: aqua;"></i> -->
<%-- 	                    <% }else{ %> --%>
<!-- 	                    	<i class="fa-solid fa-cart-shopping fs-2"></i> -->
<%-- 	                    <% } %> --%>
	                </span>
	                <p>${product.isProduct_of_cart()}</p>
	            </div>
            </c:forEach>
	    </div>
	    
  	</div>
    <jsp:include page="./modules/footer.jsp" />
</body>
</html>