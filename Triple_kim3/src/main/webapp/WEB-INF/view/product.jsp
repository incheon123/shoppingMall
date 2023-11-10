<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.beans.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<title>${product.getProduct_name() }</title>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
	<!-- ajax를 이용해서 장바구니에 추가해야한다 Fu**-->

    <div class="container text-center d-flex flex-row justify-content-center align-items-center h-75 w-100 py-5">

        <div class="row row-cols-1 row-cols-sm-1 row-cols-md-2 row-cols-lg-2 row-cols-xl-2 row-cols-xxl-2 py-5 w-100">

            <div class="col text-center ratio ratio-4x3 h-50 w-50">
                <img src="/${product.getImg_url() }" class="object-fit-cover" alt="">
            </div>

            <div class="col my-auto">

                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary border">
                        <div class="container-fluid">
                          <span class="navbar-text">
                            	${product.getProduct_name() }
                          </span>
                          
                        </div>
                      </nav>
                </div>

                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary py-0 px-3">
                        <div class="container-fluid">
                          <span class="navbar-text">
                         	가격
                          </span>
                          <span class="navbar-text">
                          	${product.getPrice() }
                          </span>
                        </div>
                      </nav>
                </div>
                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary py-0 px-3">
                        <div class="container-fluid">
                          <span class="navbar-text">
                            할인률
                          </span>
                          <span class="navbar-text">
                        	<c:choose>
                        		<c:when test="${product.getSail() == '1' }">
                        			nothing
                       			</c:when>
                       			<c:otherwise>
                       				${ product.getSail() }
                     			</c:otherwise>
                        	</c:choose>
                          </span>
                        </div>
                      </nav>
                </div>
                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary py-0 px-3">
                        <div class="container-fluid">
                        <!-- no size table -->
                          <span class="navbar-text">
                            수량
                          </span>
                          <span class="navbar-text">
                            1
                          </span>
                        </div>
                      </nav>
                </div>
                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary py-0 px-3">
                        <div class="container-fluid">
                        <!-- there is no shoes option -->
                          <span class="navbar-text">
                            옵션
                          </span>
                          <span class="navbar-text">
                            
                          </span>
                        </div>
                      </nav>
                </div>
                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary py-0 px-3">
                        <div class="container-fluid">
                        
                          <span class="navbar-text">
                            배송비
                          </span>
                          <span class="navbar-text">
                            <fmt:formatNumber value='${product.getPrice() }' type="number" var="price" pattern="######"/>
							<c:choose>
								<c:when test='${price > 100000}'>
									0
									<c:set value="0" var="deliveryPrice" />
								</c:when>
								<c:otherwise>
									3000
									<c:set value="3000" var="deliveryPrice" />
								</c:otherwise>
							</c:choose>
                          </span>
                        </div>
                      </nav>
                </div>
                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary py-0 px-3">
                        <div class="container-fluid">
                          <span class="navbar-text">
                            총가격
                          </span>
                          <span class="navbar-text">
                        	${ price + deliveryPrice }
                          </span>
                        </div>
                      </nav>
                </div>
                <div class="col text-end my-1">
                    <button type="button" class="btn btn-primary btn-lg">구매하기</button>
                    <button type="button" class="btn btn-secondary btn-lg">장바구니</button>
                </div>
            </div>

        </div>

    </div>
    <jsp:include page="./modules/footer.jsp" />
</body>
<script>
	//ajax를 이용해서 장바구니에 넣기
</script>
</html>