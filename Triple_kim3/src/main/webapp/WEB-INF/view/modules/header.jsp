<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/1c9b8c0219.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
</head>
<body>
    <header class="header">
        <div class="account_menu">
            <div class="button_group">
                <a href="${pageContext.request.contextPath}/view/login">로그인</a>
                <a href="${pageContext.request.contextPath}/view/membership">회원가입</a>
                <!-- 장바구니(0)으로 교체 -->
                <a href="${pageContext.request.contextPath}/view/basket">장바구니</a>
                <a href="${pageContext.request.contextPath}/view/mypage/profile">마이페이지</a>
            </div>
        </div>
        <div class="search_logo">
            <div class="logo_group">
                <div class="search_box">
                    <input type="text">
                    <i class="fa-solid fa-magnifying-glass search_button"></i>
                </div>
                <h1 class="logo">삼김</h1>
                <div class="profile-btn">
                    <p class="profile-text">profile</p>
                    <div class="profile_menu">
                        <a href="">로그인</a>
                        <a href="">회원가입</a>
                        <!-- 장바구니(0)으로 교체 -->
                        <a href="">장바구니</a>
                        <a href="">마이페이지</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="menu">
            <div class="hamburger-btn">
                <span class="stick s1"></span>
                <span class="stick s2"></span>
                <span class="stick s3"></span>
            </div>
            <div class="inner_menu">
                <a href="#" class="menu_item">about</a>
                <a href="#" class="menu_item">headwear</a>
                <a href="#" class="menu_item">ready to wear</a>
                <a href="#" class="menu_item">bag</a>
                <a href="#" class="menu_item">contact us</a>
            </div>
        </div>
        <div class="ham-nav">
            <a href="#" class="menu_item">about</a>
            <a href="#" class="menu_item">headwear</a>
            <a href="#" class="menu_item">ready to wear</a>
            <a href="#" class="menu_item">bag</a>
            <a href="#" class="menu_item">contact us</a>
        </div>
    </header>
</body>
<script>
    let body = document.querySelector("body");
    let nav = document.getElementsByClassName("ham-nav")[0]
    let profile = document.getElementsByClassName("profile_menu")[0];
    document.addEventListener("click", (e) => {
        if(e.target.className === "hamburger-btn" || e.target.className === "stick s1"
            || e.target.className === "stick s2"  || e.target.className === "stick s3"){
            profile.style.display = "none"
            onOff(nav);
        }else if(e.target.className === "profile-btn" || e.target.className === "profile-text"){
            nav.style.display = "none"
            onOff(profile);
        }else{
            nav.style.display = "none"
            profile.style.display = "none"
        }
    })

    function onOff(ele) {
	    var x = document.getElementsByClassName("hamburger-btn")[0]
	    if (ele.style.display === "block") {
	      ele.style.display = "none";
	      //nav.className = nav.className.substr(0, nav.className.indexOf(" active"));
	    } else {
	      ele.style.display = "block";
	      //nav.className = nav.className + " active"
	    }
    }
</script>
</html>