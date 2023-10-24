<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../css/deleteaccount.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/1c9b8c0219.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
<title>회원탈퇴</title>
</head>
<body>
	<jsp:include page="../modules/header.jsp" />
	<div class="h1">
        <div class="line1"></div>
        <div class="delete">회원탈퇴</div>
    </div>
    
    <div class="big_menu">
        <div class="rect1"></div>              
        <div class="rect2"></div>
        <div class="rect3"></div>
        <div class="rect4"></div>
        <div class="rect5"></div>
        <div class="logout">로그아웃</div>
        <div class="orderconf">주문확인하기</div>
        <div class="myreview">내 리뷰 조회하기</div>
        <div class="deleteaccount">회원 탈퇴 하기</div>
        <div class="line2"></div>
    </div>
    <div id="menu">
        <div class="conf">주문확인</div>
        <div class="myrev">내 리뷰</div>
        <div class="myinquire">내 문의</div>
        <div class="deleteac">회원탈퇴</div>
    </div>

    <div class="myinquirecheck">내 문의 조회하기</div>
    <div class="rect6"></div>
    <div class="deleteaccount_menu">
        <div class="txt1">탈퇴를 원하시면 비밀번호를 입력해주세요.</div>
        <div class="rect7"></div>
        <div class="rect8"></div>
        <div class="pw">비밀번호</div>
        <div class="out">탈퇴</div>
    </div>
    <jsp:include page="../modules/footer.jsp" />
</body>
</html>