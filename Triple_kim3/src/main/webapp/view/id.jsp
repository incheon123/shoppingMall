<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../css/id.css">
<title>아이디 찾기</title>
</head>
<body>
	<div class="box">
    <form action="doJoin" method="POST" class="joinForm" onsubmit="DoJoinForm__submit(this); return false;">
        <h2>아이디 찾기</h2>
        
        <div class="textForm">
            <input name="name" type="password" class="name" placeholder="이름">
        </div>
        <div class="textForm">
            <input name="email" type="text" class="email" placeholder="이메일">
        </div>
    
        <input type="submit" class="btn" value="아이디 찾기"/>
    </form>
    </div>
</body>
</html>