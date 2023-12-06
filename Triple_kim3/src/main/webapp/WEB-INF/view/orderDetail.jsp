<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<title>주문상세</title>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
	<div class="container d-block w-75 my-5">
        <div class="container mx-0 my-0 px-0 py-0">
            <div class="flex-nowrap">
                <span class="input-group-text justify-content-center my-2 bg-info" id="addon-wrapping" disabled>주문정보</span>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text" id="addon-wrapping">주문번호</span>
                <span type="text" class="form-control order_id" placeholder="order_id" aria-label="order_id"
                    aria-describedby="addon-wrapping" disabled>${order.getOrder().getOrder_id()}</span>
            </div>
            <div class="mb-3">
                <div class="input-group">
                    <span class="input-group-text" id="basic-addon3">주문일시</span>
                    <span type="text" class="form-control order_date" placeholder="order_date" aria-label="order_date"
                        aria-describedby="addon-wrapping" disabled>${order.getOrder().getOrder_date() }</span>
                </div>
            </div>
            <div class="row g-3">
                <div class="input-group">
                    <span class="input-group-text" id="basic-addon3">배송지</span>
                    <span type="text" class="form-control addr" placeholder="배송지" aria-label="order_date"
                        aria-describedby="addon-wrapping" disabled>${order.getOrder().getAddr1() }</span>
                </div>
            </div>
        </div>
        <div class="container mx-0 my-5 px-0 py-0">
            <div class="flex-nowrap">
                <span class="input-group-text justify-content-center bg-info" id="addon-wrapping">주문 상품 정보</span>
            </div>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">상품명</th>
                        <th scope="col">수량</th>
                        <th scope="col">사이즈</th>
                        <th scope="col">가격</th>
                    </tr>
                </thead>
                <tbody class="table-group-divider">
                
                <c:forEach var="product" items="${order.getProducts()}">
                    <tr>    
                        <th scope="row" style="width: 30%;">
                            <a href="${pageContext.request.contextPath }" class="d-block">${product.getPname()}</a>
                        </th>
                        <td class="quantity" style="width: 10%;">${product.getQuantity() }</td>
                        <td class="size" style="width: 10%;">${product.getPsize()}</td>
                        <td class="price" style="width: 10%;">${product.getPrice()}</td>
                        <td class="some_btn" style="width: 15%;">
                        	<a href="${pageContext.request.contextPath}/view/write/review?oid=${order.getOrder().getOrder_id()}&pid=${product.getPid()}" class="btn bg-info text-light">리뷰 작성하기</a>
                        </td>
                    </tr>
                   </c:forEach>
                    
                </tbody>
            </table>
        </div>
        <h3>
            <a href="/Triple_kim3" class="btn btn-primary">목록으로</a>
        </h3>
    </div>
    <jsp:include page="./modules/footer.jsp" />
</body>
</html>