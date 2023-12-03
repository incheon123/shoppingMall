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
<title>주문성공</title>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
	<div class="container d-block w-75 my-5">
        <h2 class="text-center my-5">주문성공!</h2>
        <div class="container mx-0 my-0 px-0 py-0">
            <div class="flex-nowrap">
                <span class="input-group-text justify-content-center my-2 bg-info" id="addon-wrapping" disabled>주문정보</span>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text" id="addon-wrapping">주문번호</span>
                <span type="text" class="form-control order_id" placeholder="order_id" aria-label="order_id"
                    aria-describedby="addon-wrapping" disabled>${result.getOrder().getOrder_id()}</span>
            </div>
            <div class="mb-3">
                <div class="input-group">
                    <span class="input-group-text" id="basic-addon3">주문일시</span>
                    <span type="text" class="form-control order_date" placeholder="order_date" aria-label="order_date"
                        aria-describedby="addon-wrapping" disabled>${result.getOrder().getOrder_date() }</span>
                </div>
            </div>
            <div class="row g-3">
                <div class="input-group">
                    <span class="input-group-text" id="basic-addon3">배송지</span>
                    <span type="text" class="form-control addr" placeholder="배송지" aria-label="order_date"
                        aria-describedby="addon-wrapping" disabled>${result.getOrder().getAddr1() }</span>
                </div>
            </div>
        </div>

        <div class="container my-5 mx-0 px-0 py-0">
            <div class="flex-nowrap">
                <span class="input-group-text justify-content-center my-2 bg-info" id="addon-wrapping">결제 정보</span>
            </div>
            <div class="mb-3">
                <div class="input-group">
                    <span class="input-group-text" id="basic-addon3">결제번호</span>
                    <span type="text" class="form-control payment_id" id="basic-url"
                    aria-describedby="basic-addon3 basic-addon4" required disabled>${result.getPayment().getPayment_id() }</span>
                </div>
            </div>
            <div class="mb-3">
                <div class="input-group">
                    <span class="input-group-text" id="basic-addon3">총결제금액</span>
                    <span type="text" class="form-control payment_price" id="basic-url"
                    aria-describedby="basic-addon3 basic-addon4" required disabled>${result.getPayment().getTotal() }</span>
                </div>
            </div>
            <div class="mb-3">
                <div class="input-group">
                    <span class="input-group-text" id="basic-addon3">결제자</span>
                    <span type="text" class="form-control payment_user" id="basic-url"
                    aria-describedby="basic-addon3 basic-addon4" required disabled>${result.getPayment().getPayment_username() }</span>
                    <span class="input-group-text" id="basic-addon3">결제 카드번호</span>
                    <span type="text" class="form-control payment_card_num" id="basic-url"
                    aria-describedby="basic-addon3 basic-addon4" required disabled>${result.getPayment().getPayment_card_number() }</span>
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
                        <th scope="col">할인</th>
                        <th scope="col">가격</th>
                    </tr>
                </thead>
                <tbody class="table-group-divider">
                
                <c:forEach var="product" items="${result.getProducts()}">
                    <tr>    
                        <th scope="row">
                            <a href="${pageContext.request.contextPath }" class="d-block">${product.getPname()}</a>
                        </th>
                        <td class="quantity">${product.getQuantity() }</td>
                        <td class="size">${product.getPsize()}</td>
                        <td class="sail">${product.getSail()}</td>
                        <td class="price">${product.getPrice()}</td>
                    </tr>
                   </c:forEach>
                    
                </tbody>
            </table>
        </div>
        <h3>
            <a href="/" class="btn btn-primary">목록으로</a>
        </h3>
    </div>
    <jsp:include page="./modules/footer.jsp" />
</body>
</html>