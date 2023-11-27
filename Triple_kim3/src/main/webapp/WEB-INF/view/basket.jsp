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
    <section class="container cart w-75">
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
             	<form method="POST" action="checkOrder">
                 <tr class="cart__list__detail">
                     <td><input type="checkbox"></td>
                     <!-- 이미지를 a 태그로 감싸서 누르면 상품페이지로 넘어가게끔 만들어라 -->
                     <td><img src="/${product.getImg_url() }" alt="${product.getPname() }"></td>
                     <!-- 회사 정보도 마찬가지로 참조해서 가져온다 -->
                     <td>
                     <!--  상품이름도 마찬가지로 누르면 상품페이지로 넘어가게끔 만들어라 -->
                         <p>
                         	<span id="pname${status.index}">${product.getPname()}</span>
                         	<span id="psize${status.index}">${product.getProduct_size()}</span>
                         </p>
                         <input type='text' name="pname${status.index}" value="${product.getPname()}" style='display:none;'/>
                         <input type='text' name="psize${status.index}" value="${product.getProduct_size()}" style='display:none;'/>
                         <p id="pid${status.index}" style="display: none;">${product.getPid() }</p>
                         <input type='text' name="pid${status.index}" value="${product.getPid()}" style='display:none;'/>
                         <!-- 가격도 -->
                         <span id="price${status.index}" >${product.getPrice() }</span>
                         <input type='text' name="price${status.index}" value="${product.getPrice()}" style='display:none;'/>
                         <span>원</span>
                         <c:if test="${product.getSail() > 0}" >
                         	<span style="text-decoration: line-through; color: lightgray;">${original_price }</span>
                         </c:if>
                         <input type='text' name="psail${status.index}" value="${product.getSail()}" style='display:none;'/>
                     </td>
                     <td class="cart__list__option">
                     <!-- 수량도 -->
                         <p>
                         	<span>${product.getPname() } / </span>
                         	<span id="quantity${status.index}">${product.getQuantity()}</span>
                         	<input type='text' name="quantity${status.index}" value="${product.getQuantity()}" style='display:none;'/>
                         	<span>개</span>
                         </p>
                         <span>     
                         	<button class="cart__list__optionbtnAdd">상품 개수 추가</button>
                         </span>
                         <span>     
                         	<button class="cart__list__optionbtnRemove">상품 개수 제거</button>
                         </span>
                     </td>
                     <c:choose>
                     	<c:when test="${total_price >= 100000 }">
                     		<td id="delivery${status.index}" data-value='0'>무료</td>
                     		<input type='text' name="delivery${status.index}" value="0" style='display:none;'/>
                     	</c:when>
                     	<c:otherwise>
                     		<td id="delivery${status.index}" data-value='3000'>3000</td>
                     		<input type='text' name="delivery${status.index}" value="3000" style='display:none;'/>
                     	</c:otherwise>
                     </c:choose>
                     <td>
                     	<c:choose>
                      	<c:when test="${total_price >= 100000 }">
                      		<span class="price" id="totalPrice${status.index}">${total_price}</span><br>
                      		<input type='text' name="totalPrice${status.index}" value="${total_price}" style='display:none;'/>
                      	</c:when>
                      	<c:otherwise>
                      		<span class="price" id="totalPrice${status.index}">${total_price + 3000}</span><br>
                      		<input type='text' name="totalPrice${status.index}" value="${total_price + 3000}" style='display:none;'/>
                      	</c:otherwise>
                     	</c:choose>
                         <button class="cart__list__orderbtn" value="${status.index}">주문하기</button>
                     </td>
                 </tr>
                 </form>
                 <c:set var="i" value="${status.index}" />
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
            <button type="submit" class="cart__bigorderbtn right">주문하기</button>
        </div>
    </section>
    <jsp:include page="./modules/footer.jsp" />
</body>
<script>

sessionStorage.removeItem("type");
sessionStorage.removeItem("product");
sessionStorage.removeItem("productList");
let list;
let obj;

$(document).on("click", ".cart__bigorderbtn", () => {
	list = [];
	for(let k = 0; k <= ${i}; k++){
		let pname = $($("input[name=pname"+ k +"]")[0]).attr('value');
		let psize = $("input[name=psize" + k + "]").eq(0).attr('value');
		let pid = $("input[name=pid" + k + "]").eq(0).attr('value')
		
		let price = $("input[name=price" + k + "]").eq(0).attr('value');
		
		let psail = $("input[name=psail" + k + "]").eq(0).attr('value');
		let quantity = $("input[name=quantity" + k + "]").eq(0).attr('value');
		let delivery = $($("input[name=delivery" + k + "]")[0]).attr('value');
		let totalPrice = $("input[name=totalPrice" + k + "]").eq(0).attr('value');
		
		obj = {};
		obj.uid = `<%= session.getAttribute("id") %>`
		obj.pname = pname;
		obj.psize = psize;
		obj.pid = pid;
		obj.price = price;
		obj.psail = psail
		obj.quantity = quantity
		obj.delivery = delivery;
		obj.totalPrice = totalPrice;
		console.log(obj);
		
		list.push(obj);
	}
	sessionStorage.setItem('type', 'many');
	sessionStorage.setItem('productList', JSON.stringify(list));	
	
	var url = "checkOrder";
	$(location).attr('href',url);
})


$(document).on("click", ".cart__list__orderbtn", (e) => {
	let idx = Number($(e.target).val());
	
	let pname = $($("input[name=pname"+ idx +"]")[0]).attr('value');
	let psize = $("input[name=psize" + idx + "]").eq(0).attr('value');
	let pid = $("input[name=pid" + idx + "]").eq(0).attr('value');
	
	let price = $("input[name=price" + idx + "]").eq(0).attr('value');
	
	let psail = $("input[name=psail" + idx + "]").eq(0).attr('value');
	let quantity = $("input[name=quantity" + idx + "]").eq(0).attr('value');
	let delivery = $($("input[name=delivery" + idx + "]")[0]).attr('value');
	let totalPrice = $("input[name=totalPrice" + idx + "]").eq(0).attr('value');
	
	obj = {};
	obj.uid = `<%= session.getAttribute("id") %>`
	obj.pname = pname;
	obj.psize = psize;
	obj.pid = pid;
	obj.price = price;
	obj.psail = psail
	obj.quantity = quantity
	obj.delivery = delivery;
	obj.totalPrice = totalPrice;
	
	list = [];
	list.push(obj);
	
	sessionStorage.setItem('type', 'one');
	sessionStorage.setItem('product', JSON.stringify(list));
	
	$("form").submit();
})

if(`${product.get(0)}` != ``){
	
}
</script>
</html>