<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../css/membership.css">
<title>회원가입</title>
</head>
<body>
    <form action="" method="POST" class="joinForm" onsubmit="DoJoinForm__submit(this); return false;">
        <h2>회원가입</h2>
        <div class="textForm">
            <input name="loginId" type="text" class="id" placeholder="아이디"></input>
        </div>
        <div class="textForm">
            <input name="loginPw" type="password" class="pw" placeholder="비밀번호">
        </div>
        <div class="textForm">
            <input name="loginPwConfirm" type="password" class="pw" placeholder="비밀번호 확인">
        </div>
        <div class="textForm">
            <input name="name" type="password" class="name" placeholder="이름">
        </div>
        <div class="textForm">
            <input name="email" type="text" class="email" placeholder="이메일">
        </div>
        <div class="textForm">
            <input name="nickname" type="text" class="nickname" placeholder="닉네임">
        </div>
        <div class="textForm">
            <input name="cellphoneNo" type="number" class="cellphoneNo" placeholder="전화번호">
        </div>
        <input type="submit" class="btn" value="회원가입"/>
    </form>
</body>
</html>