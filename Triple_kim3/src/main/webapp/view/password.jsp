<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../css/password.css">
<title>비밀번호 찾기</title>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
	<div class="box">
    <form action="doJoin" method="POST" class="joinForm" onsubmit="DoJoinForm__submit(this); return false;">
        <h2>아이디 찾기</h2>
        <div class="textForm">
            <input name="loginId" type="text" class="id" placeholder="아이디"></input>
        </div>
        <div class="textForm">
            <input name="name" type="password" class="name" placeholder="이름">
        </div>
        <div class="textForm">
            <input name="email" type="text" class="email" placeholder="이메일">
        </div>
    
        <input type="submit" class="btn" value="아이디 찾기"/>
    </form>
    </div>
	<jsp:include page="./modules/footer.jsp" />
</body>
</html>