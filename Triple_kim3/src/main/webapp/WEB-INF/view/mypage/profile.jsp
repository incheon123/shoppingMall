<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../css/profile.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>프로필페이지</title>
</head>
<body>
	<jsp:include page="../modules/header.jsp" />
    <div class="container d-flex flex-direction-row">
	    <jsp:include page="../modules/sideDropdown.jsp" />
        <div class="container w-50">
	        <div class="input-group mb-1">
	            <span class="input-group-text" id="basic-addon1">아이디</span>
	            <input type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
	        </div>
	        
	        <div class="input-group mb-2">
	            <span class="input-group-text" id="basic-addon2">이름</span>
	            <input type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
	        </div>
	        
	        <div class="input-group mb-3">
	            <span class="input-group-text">전화번호</span>
	            <input type="text" aria-label="First name" class="form-control">
	            <span class="input-group-text">-</span>
	            <input type="text" aria-label="Last name" class="form-control">
	            <span class="input-group-text">-</span>
	            <input type="text" aria-label="Last name" class="form-control">
	        </div>
	        
	        <div class="input-group mb-4">
	            <span class="input-group-text" id="basic-addon3">이메일</span>
	            <input type="text" class="form-control" aria-label="Text input with dropdown button">
	            <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">Dropdown</button>
	            <ul class="dropdown-menu dropdown-menu-end">
	                <li><a class="dropdown-item" href="#">Action</a></li>
	                <li><a class="dropdown-item" href="#">Another action</a></li>
	                <li><a class="dropdown-item" href="#">Something else here</a></li>
	                <li><hr class="dropdown-divider"></li>
	                <li><a class="dropdown-item" href="#">Separated link</a></li>
	            </ul>
	        </div>
	        <div class="mb-5">
	            <div class="input-group">
	              <span class="input-group-text" id="basic-addon3">주소</span>
	              <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3 basic-addon4">
	              <button class="btn btn-outline-secondary" type="button" id="button-addon4">우편번호 검색</button>
	            </div>
	            <div><input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3 basic-addon4"></div>
	            <div><input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3 basic-addon4"></div>
	        </div>
        </div>
    </div>
    <jsp:include page="../modules/footer.jsp" />
</body>
</html>