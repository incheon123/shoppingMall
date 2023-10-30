<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/membership.css">
<title>회원가입</title>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
    <form action="" method="POST" class="form">
        <div class="container">
            <label for="">아이디</label>
            <div class="id box">
                <input type="text" name="id" class="user_id" required>
                <a href="#" id="check_duplicate">중복확인</a>
            </div>
        </div>
        <div class="container">
            <label for="">비밀번호</label>
            <div class="pw box">
                <input type="password" name="pw" class="user_pw" required>
            </div>
        </div>
        <div class="container">
            <label for="">이름</label>
            <div class="name box">
                <input type="text" name="name" class="user_name" required>
            </div>
        </div>
        <div class="container">
            <label for="">이메일</label>
            <div class="email box">
                <input type="text" name="email" class="user_email" required>
                <select name="domain" id="rwd-domain" required>
                    <option value="null"></option>
                    <option value="naver">@naver.com</option>
                    <option value="google">@google.com</option>
                    <option value="daum">@daum.com</option>
                </select>
            </div>
        </div>
        <div class="rwd-container">
            <div class="domain box">
                <select name="domain" id="domain" required>
                    <option value="null"></option>
                    <option value="naver">@naver.com</option>
                    <option value="google">@google.com</option>
                    <option value="daum">@daum.com</option>
                </select>
            </div>
        </div>
        <div class="container">
            <label for="">휴대전화번호</label>
            <div class="tel">
                <input type="text" name="ptel1" class="user_tel" value="010" maxlength="3" readonly>
                <span style="background-color: rgb(151, 151, 151); width: 10px; height: 2.5px;"></span>
                <input type="text" name="ptel2" class="user_tel" maxlength="4" required>
                <span style="background-color: rgb(151, 151, 151); width: 10px; height: 2.5px;"></span>
                <input type="text" name="ptel3" class="user_tel" maxlength="4" required>
            </div>
        </div>
        <div class="container">
            <label for="">집전화번호</label>
            <div class="tel">
                <select name="htel1" id="domain" style="height:100%; text-align:center; margin: 0px 14px 0px 14px;width:25%;" required>
                    <option value="null"></option>
                    <option value="02">02</option>
                    <option value="032">032</option>
                    <option value="021">021</option>
                </select>
                <span style="background-color: rgb(151, 151, 151); width: 10px; height: 2.5px;"></span>
                <input type="text" name="htel2" class="user_tel" maxlength="4">
                <span style="background-color: rgb(151, 151, 151); width: 10px; height: 2.5px;"></span>
                <input type="text" name="htel3" class="user_tel" maxlength="4">
            </div>
        </div>
        <div class="container">
            <label for="">주소</label>
            <div class="addr1 box">
                <input type="text" name="addr1" class="user_addr" required>
            </div>
            <div class="addr2 box">
                <input type="text" name="addr2" class="user_addr" required>
            </div>
        </div>
        <div class="container">
            <div style="margin-top:20px;"></div>
            <input type="radio" name="gender" value="MEN" class="radio"><span style="color:rgb(91, 91, 91);">남성</span>
            <input type="radio" name="gender" value="WOMEN" class="radio"><span style="color:rgb(91, 91, 91);">여성</span>
        </div>
        <div class="container">
            <label for="">생년월일</label>
            <div class="birth box">
                <input type="date" name="brith" class="user_birth">
            </div>
        </div>
    </form>
    <jsp:include page="./modules/footer.jsp" />
</body>
</html>