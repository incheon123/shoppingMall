<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="../../css/footer.css" >
	<link rel="stylesheet" type="text/css" href="../css/footer.css" >
	<script src="https://kit.fontawesome.com/1c9b8c0219.js" crossorigin="anonymous"></script>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gabarito&display=swap" rel="stylesheet">
<title></title>
</head>
<body>
	<footer>
        <div class="up">
            <div class="container">
                <div class="inner-container">
                    <h1>TRIPLEKIM</h1>
                    <div class="search-container">
                        <input type="text" placeholder="search">
                        <i class="fa-solid fa-magnifying-glass search_button"></i>
                    </div>
                </div>
            </div>
            <div class="footer-nav">
                <ul>
                    <li>
                        <a href="https://www.naver.com">회사소개</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/view/Agreement/use.jsp">이용안내</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/view/Agreement/policy.jsp">약관안내</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="bottom">
            <div class="left">
                <div class="info">
                    <span style="font-size: 26px;">CALL CENTER</span>
                    <span style="font-size: 20px;">032-123-4567</span>
                    <span style="font-size: 20px;">AM 10 : 10 ~ PM 17 : 00</span>
                </div>
            </div>
            <div class="right">
                <div class="info inforight">
                    <span style="font-size: 26px;">BANK</span>
                    <span style="font-size: 20px;">3486593486</span>
                    <span style="font-size: 14px;">국민은행<br>예금주(주)삼김</span>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>