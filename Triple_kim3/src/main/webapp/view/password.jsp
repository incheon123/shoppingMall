<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../css/password.css">
<title>��й�ȣ ã��</title>
</head>
<body>
	<jsp:include page="./component/header.jsp" />
	<div class="box">
    <form action="doJoin" method="POST" class="joinForm" onsubmit="DoJoinForm__submit(this); return false;">
        <h2>���̵� ã��</h2>
        <div class="textForm">
            <input name="loginId" type="text" class="id" placeholder="���̵�"></input>
        </div>
        <div class="textForm">
            <input name="name" type="password" class="name" placeholder="�̸�">
        </div>
        <div class="textForm">
            <input name="email" type="text" class="email" placeholder="�̸���">
        </div>
    
        <input type="submit" class="btn" value="���̵� ã��"/>
    </form>
    </div>
	<jsp:include page="./component/footer.jsp" />
</body>
</html>