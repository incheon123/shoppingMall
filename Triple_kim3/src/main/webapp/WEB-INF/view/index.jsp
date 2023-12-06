<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.beans.*" %>
<%@ page import="com.svc.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<title>Triple</title>
</head>
<body>
<!-- 메인페이지에서는 인기 있는 상품들로 보여줌 30개정도 나머지는 product.jsp페이지에서  -->
	<jsp:include page="./modules/header.jsp" />
	<!-- 추후에 스크립트 태그를 추가하세요 -->
    <% 
   		ProductService ps = new ProductService();
    		//젤 높은게 없다면 같은 순위끼리
		Products products = ps.getHighPurchaseRatingProducts();
		ArrayList<Product> product = products.getMainPageProducts(); 
		
		BasketService bs = BasketService.getInstance();
		//장바구니 상품을 가져와서 리스트에 담고 리스트에 해당하는 상품아이디가 있으면 있는걸로 간주한다
		
		ArrayList<String> list = null;
		//로그인 되어있을 때
		if(session.getAttribute("id") != null){
			list = bs.getProductByUserId((String) session.getAttribute("id"));
			for(String pid : list){
			}
		}
		
		int idx;
   	%>
	<div class="container text-center d-block">
		<!-- two -->
        <div class="row row-cols-1 row-cols-sm-1 row-cols-md-1 row-cols-xl-2">
        	<!-- script tag -->

        	<% for(idx = 0; idx < 4; idx++){ %>
            <div class="col">
            	<!-- 상품을  누르면 상품상세페이지로 넘어감 -->
                <a href="${pageContext.request.contextPath }/product?id=<%= product.get(idx).getPid() %>" class="kth kth-hover px-0 py-0 my-0 text-decoration-none">
                    <div class="col px-1 my-1">
                        <div class="card">
                        	<span class="cart-shopping">
                        	<% if(session.getAttribute("id") != null){ %>
                        		<% if(list != null && list.contains(product.get(idx).getPid())){ %>
                                	<i class="fa-solid fa-cart-shopping fs-2" style="color: aqua;"></i>
                                <% }else{ %>
                                	<i class="fa-solid fa-cart-shopping fs-2"></i>
                                <% } %>
                             <% } %>
                            </span>
                            <img src="/<%= product.get(idx).getImg_url() %>" class="card-img-top object-fit-cover" alt="...">
                            <div class="card-body">
                                <h5 class="card-title"><%= product.get(idx).getPname() %></h5>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item"><%= product.get(idx).getPrice() %>원</li>
                                <li class="list-group-item"><%= product.get(idx).getGender() %></li>
                                <li class="list-group-item"><%= product.get(idx).getTotal_score() %></li> <!-- 옵션 사항-->
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
        	<% for(int i = idx; i < product.size(); i++) { %>
            <div class="col position-relative">
                <a href="${pageContext.request.contextPath }/product?id=<%= product.get(i).getPid() %>" class="kth kth-hover px-0 py-0 my-0 text-decoration-none">
                    <div class="col px-1 my-1">
                        <div class="card">
                            <img src="/<%= product.get(i).getImg_url() %>" class="card-img-top object-fit-cover" alt="...">
                            <div class="card-body">
                                <h5 class="card-title"><%= product.get(i).getPname() %></h5>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item"><%= product.get(i).getPrice() %>원</li>
                                <li class="list-group-item"><%= product.get(i).getGender() %></li>
                                <li class="list-group-item"><%= product.get(i).getTotal_score() %></li> <!-- 옵션 사항-->
                            </ul>
                            <div class="card-body kth-product-desc">
                                <p class="card-text"><%= product.get(i).getShort_desc() %></p>
                            </div>
                        </div>
                    </div>
                </a>
                <span class="cart-shopping">
                <% if(session.getAttribute("id") != null){ %>
                    <% if(list != null && list.contains(product.get(i).getPid())){ %>
                    	<i class="fa-solid fa-cart-shopping fs-2" style="color: aqua;"></i>
                    <% }else{ %>
                    	<i class="fa-solid fa-cart-shopping fs-2"></i>
                    <% } %>
                <% } %>
                </span>
                <p><%=product.get(idx).isProduct_of_cart() %></p>
            </div>
            <% } %>
        </div>
    </div>
    <jsp:include page="./modules/footer.jsp" />
</body>
<script>
$(".cart-shopping").on('click', () => {
	console.log(this)
})
</script>
</html>