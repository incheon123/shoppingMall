<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
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
	            <input type="text" name="user_id" class="form-control" aria-label="Username"
	            	aria-describedby="basic-addon1" value="${user.getId() }">
	        </div>
			<!--아이디를 제외한 계정 정보를 변경할 수 있다-->
	        <form method="POST" action="${pageContext.request.contextPath}/update/account" >
	        	<div class="input-group mb-1">
		            <span class="input-group-text" id="basic-addon1">pw</span>
		            <input type="text" name="user_pw" class="form-control" aria-label="Username"
		            	aria-describedby="basic-addon1" value="${user.getPw() }">
	        	</div>
		        <div class="input-group mb-2">
		            <span class="input-group-text" id="basic-addon2">이 름</span>
		            <input type="text" name="user_name" class="form-control" aria-label="Username" 
		            	aria-describedby="basic-addon1" value="${user.getName()}">
		        </div>
		        
		        <div class="input-group mb-2">
		            <span class="input-group-text">휴대전화번호</span>
		            <input type="text" aria-label="user_ptel" name="user_ptel" class="form-control" value="${user.getPhnTelNum()}">
		        </div>
		        <div class="input-group mb-2">
		            <span class="input-group-text">집전화번호</span>
		            <input type="text" aria-label="user_htel" name="user_htel" class="form-control" value="${user.getHmTelNum()}">
		        </div>
		        <div class="input-group mb-2">
		            <span class="input-group-text" id="basic-addon3">이메일</span>
		            <input type="text" name="user_email" class="form-control" 
		            	aria-label="Text input with dropdown button" value="${user.getEmail() }">
		        </div>
		        <div class="input-group mb-2">
		            <span class="input-group-text" id="basic-addon3">성별</span>
		            <input type="text" name="user_gender" class="form-control" 
		            	aria-label="Text input with dropdown button" value="${user.getGender() }">
		        </div>
		        <div class="input-group mb-2">
		            <span class="input-group-text" id="basic-addon3">생년월일</span>
		            <input type="text" name="user_birth" class="form-control" 
		            	aria-label="Text input with dropdown button" value="${user.getBirth() }">
		        </div>
		        <div class="mb-2">
		            <div class="input-group">
		              <span class="input-group-text" id="basic-addon3">주소</span>
		              <input type="text" name="user_addr" class="form-control" id="basic-url"
		              	aria-describedby="basic-addon3 basic-addon4" value="${user.getAddr()}">
		            </div>
		        </div>
		        <div class="input-group mb-4">
		            <span class="input-group-text" id="basic-addon3">포인트</span>
		            <input type="text" name="user_email" class="form-control" 
		            	aria-label="Text input with dropdown button" value="${user.getPoint()}p" disabled>
		        </div>
		        <div class="container text-end">
	        		<button type="submit" class="btn bg-warning">수정하기</button>
	        	</div>
			</form>
			
        </div>
    </div>
    <jsp:include page="../modules/footer.jsp" />
</body>
</html>