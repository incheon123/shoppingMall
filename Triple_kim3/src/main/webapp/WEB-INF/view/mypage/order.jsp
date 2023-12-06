<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문확인페이지</title>
</head>
<body>
	<jsp:include page="../modules/header.jsp" />
	<div class="container d-flex flex-direction-row">       
	    <jsp:include page="../modules/sideDropdown.jsp" />
	    <div class="container">
	        <table class="table my-2">
	            <thead>
	                <tr>
	                    <th scope="col" style="width: 10%;">주문번호</th>
	                    <th scope="col" style="width: 60%;">배송지</th>
	                    <th scope="col" style="width: 11%;">주문일</th>
	                </tr>
	            </thead>
	            <tbody>
	            	<c:forEach var="order" items="${orders.getOrders()}" varStatus="status">
	                <tr>
	                    <td class="title">
	                        <a href="${pageContext.request.contextPath}/view/order_detail?oid=${order.getOrder_id()}" style="display: block; width: 100%; height:100%;">${order.getOrder_id() }</a>
	                    </td>
	                    <td class="writer">${order.getAddr1() }</td>
	                    <td class="writer">${order.getOrder_date() }</td>
	                </tr>
	                </c:forEach>
	            </tbody>
	        </table>
	    </div>
	</div>
    <jsp:include page="../modules/footer.jsp" />
</body>
</html>