<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.beans.*" %>
<%@ page import="com.svc.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
<title>Triple</title>
</head>
<body>
<!-- 메인페이지에서는 인기 있는 상품들로 보여줌 30개정도 나머지는 product.jsp페이지에서  -->
	<jsp:include page="./modules/header.jsp" />
	<!-- 추후에 스크립트 태그를 추가하세요 -->
    <% 
   		ProductService ps = new ProductService();
		Products products = ps.getHighPurchaseRatingProducts();
		ArrayList<Product> product = products.getMainPageProducts(); 
		
		int idx;
   	%>
	<div class="container text-center d-block">
		<!-- two -->
        <div class="row row-cols-1 row-cols-sm-1 row-cols-md-1 row-cols-xl-2">
        	<!-- script tag -->

        	<% for(idx = 0; idx < 4; idx++){ %>
            <div class="col">
                <a href="${pageContext.request.contextPath }/view/product" class="kth kth-hover px-0 py-0 my-0 text-decoration-none">
                    <div class="col px-1 my-1">
                        <div class="card">
                        	<span class="cart-shopping">
                                <i class="fa-solid fa-cart-shopping fs-2"></i>
                            </span>
                            <img src="/<%= product.get(idx).getImg_url() %>" class="card-img-top object-fit-cover" alt="...">
                            <div class="card-body">
                                <h5 class="card-title"><%= product.get(idx).getProduct_name() %></h5>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item"><%= product.get(idx).getPrice() %>원</li>
                                <li class="list-group-item"><%= product.get(idx).getGender() %></li>
                                <li class="list-group-item">별점</li> <!-- 옵션 사항-->
                            </ul>
                            <div class="card-body kth-product-desc">
                                <p class="card-text"><%=product.get(idx).getShort_desc() %></p>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <% } %> 
        </div>
        <!-- two -->
        
        <!-- three -->
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-3 row-cols-xl-3">
        	<!-- script tag -->
            <div class="col">
                <a href="" class="kth kth-hover px-0 py-0 my-0 text-decoration-none">
                    <div class="col px-1 my-1">
                        <div class="card">
                        	<span class="cart-shopping">
                                <i class="fa-solid fa-cart-shopping fs-2"></i>
                            </span>
                            <img src="/gazelleBlack.jpg" class="card-img-top object-fit-cover" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">포럼 로우</h5>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">129,000 원</li>
                                <li class="list-group-item">남성 Original</li>
                                <li class="list-group-item">별점</li> <!-- 옵션 사항-->
                            </ul>
                            <div class="card-body kth-product-desc">
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to
                                    additional content. This content is a little bit longer.</p>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <jsp:include page="./modules/footer.jsp" />
</body>
</html>