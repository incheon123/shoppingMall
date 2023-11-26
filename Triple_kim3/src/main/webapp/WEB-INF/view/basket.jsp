<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="com.beans.*" %>
<%@ page import="com.svc.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/basket.css">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<title>장바구니</title>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
    <section class="cart">
        <table class="cart__list">
             <thead>
                 <tr>
                     <td><input type="checkbox"></td>
                     <td colspan="2">상품정보</td>
                     <td>옵션</td>
                     <td>배송비</td>
                     <td>상품금액</td>
                 </tr>
             </thead>
             <tbody>
             
             
             <c:forEach var="product" items="${product}" varStatus="status">
             	<fmt:formatNumber value="${product.getPrice() * product.getQuantity() }"
             						type="number" var="original_price" /> 
             	<fmt:formatNumber value="${product.getPrice() * product.getQuantity() * (product.getSail() * 0.01) }"
             						type="number" var="sailed_price" /> 
             	<c:set var="total_price"
             			value="${product.getPrice() * product.getQuantity() - sailed_price }"/>
                 <tr class="cart__list__detail">
                     <td><input type="checkbox"></td>
                     <!-- 이미지를 a 태그로 감싸서 누르면 상품페이지로 넘어가게끔 만들어라 -->
                     <td><img src="/${product.getImg_url() }" alt="${product.getPname() }"></td>
                     <!-- 회사 정보도 마찬가지로 참조해서 가져온다 -->
                     <td>
                     <!--  상품이름도 마찬가지로 누르면 상품페이지로 넘어가게끔 만들어라 -->
                         <p>${product.getPname() }</p>
                         <!-- 가격도 -->
                         <span class="price">${product.getPrice() }원</span>
                         <c:if test="${product.getSail() > 0}" >
                         	<span style="text-decoration: line-through; color: lightgray;">${original_price }</span>
                         </c:if>
                     </td>
                     <td class="cart__list__option">
                     <!-- 수량도 -->
                         <p>
                         	<span>${product.getPname() } / </span>
                         	<span>${product.getQuantity()}개</span>
                         </p>
                         <span>     
                         	<button class="cart__list__optionbtn">상품 개수 추가</button>
                         </span>
                         <span>     
                         	<button class="cart__list__optionbtn">상품 개수 제거</button>
                         </span>
                     </td>
                     <c:choose>
                     	<c:when test="${total_price >= 100000 }">
                     		<td>무료</td>
                     	</c:when>
                     	<c:otherwise>
                     		<td>3000</td>
                     	</c:otherwise>
                     </c:choose>
                     <td>
                     	<c:choose>
                      	<c:when test="${total_price >= 100000 }">
                      		<span class="price">${total_price}</span><br>
                      	</c:when>
                      	<c:otherwise>
                      		<span class="price">${total_price + 3000}</span><br>
                      	</c:otherwise>
                     	</c:choose>
                         <button class="cart__list__orderbtn" value="${status.index}">주문하기</button>
                     </td>
                 </tr>
              </c:forEach>
                 
                 
             </tbody>
             <tfoot>
                 <tr>
                     <td colspan="3"><input type="checkbox">
                     	<button class="cart__list__optionbtn">선택상품 삭제</button>
                     </td>
                     <td></td>
                     <td></td>
                     <td></td>
                 </tr>
             </tfoot>
        </table>
        <div class="cart__mainbtns">
            <button class="cart__bigorderbtn left">쇼핑 계속하기</button>
            <button class="cart__bigorderbtn right">주문하기</button>
        </div>
    </section>
    <jsp:include page="./modules/footer.jsp" />
</body>
<script>

$(document).on("click", ".cart__list__orderbtn", (e) => {
	let idx = Number($(e.target).val());
	$.ajax({
		url: "checkOrder",
		type: "POST",
		data: {
			idx: idx 
		}
	})
})

if(`${product.get(0)}` != ``){
	
}
</script>
</html>