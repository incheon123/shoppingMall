<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="../css/login.css">
    <title>Document</title>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
		<form class="container w-100 my-3 py-3 border border-info d-flex flex-column align-items-center" action="${pageContext.request.contextPath }/login.do" method="POST">
	        <h4 class="my-4 fs-1">Login</h4>
	        <div class="input-group flex-nowrap w-75">
	            <span class="input-group-text w-25" id="addon-wrapping">아이디</span>
	            <input type="text" class="form-control" placeholder="id" aria-label="Username" name="userId">
	        </div>
	        <div class="input-group flex-nowrap w-75 py-2">
	            <span class="input-group-text w-25" id="addon-wrapping">비밀번호</span>
	            <input type="text" class="form-control" placeholder="password" aria-label="Username" name="userPassword">
	        </div>
	        <c:if test="${result eq 'false'}">
  				<p>계정 불일치</p>
  				<% session.removeAttribute("result"); %>
			</c:if>
	        <div class="input-group flex-nowrap w-75 py-2">
	            <input type="submit" class="form-control py-3 fs-4" value="Login">
	        </div>
	        <div class="container d-flex justify-content-around my-3">
	            <a href="/find/id" class="text-decoration-none text-info">아이디찾기</a>
	            <a href="/find/pw" class="text-decoration-none text-info">비밀번호찾기</a>
	        </div>
    	</form>
	<jsp:include page="./modules/footer.jsp" />
</body>
</html>
<script>
</script>