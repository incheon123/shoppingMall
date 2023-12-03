<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/order.css">
<title>주문확인페이지</title>
</head>
<body>
	<jsp:include page="../modules/header.jsp" />
	<div class="container d-flex flex-direction-row">       
	    <jsp:include page="../modules/sideDropdown.jsp" />
	    <div class="container w-25 ">
	        <div>
	            <div class="input-group flex-nowrap">
	                <span class="input-group-text" id="addon-wrapping1">일자</span>
	                <input type="date" name="schedule" min="2023-04-18" max="2024-06-13" />
	                ~
	                <input type="date" name="schedule" min="2023-04-18" max="2024-06-13" />
	              </div>
	              <div class="input-group flex-nowrap">
	                <span class="input-group-text" id="addon-wrapping2">주문번호</span>
	                <input type="text" class="form-control"  aria-label="Username" aria-describedby="addon-wrapping">
	              </div>
	              <div class="input-group flex-nowrap">
	                <span class="input-group-text" id="addon-wrapping3">배송지</span>
	                <input type="text" class="form-control"  aria-label="Username" aria-describedby="addon-wrapping">
	              </div>
	              <button type="button" class="btn btn-primary">검색</button>
	        <div class="container d-flex flex-direction-row w-50">
	            <div class="form-text" id="basic-addon1">주문번호</div>
	            <div class="form-text" id="basic-addon2">주문일자</div>
	            <div class="form-text" id="basic-addon3">배송지</div>
	            <div class="form-text" id="basic-addon4">주문자</div>
	        </div>
	            <ul class="container d-flex flex-direction-row w-25">
	                
	                <li class="list-group-item">An item</li>
	                
	                <li class="list-group-item">A second item</li>
	                
	                <li class="list-group-item">A third item</li>
	                
	                <li class="list-group-item">A fourth item</li>
	            </ul>
	        </div>
	    </div>
	</div>
    <jsp:include page="../modules/footer.jsp" />
</body>
</html>