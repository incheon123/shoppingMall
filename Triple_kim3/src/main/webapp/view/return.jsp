<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <link rel="stylesheet" href="../css/return.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/1c9b8c0219.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
    <title>삼김</title>
</head>
<body>
	<div class="text13">취소/반품/교환 내역 총 0건</div>
    <div class="rec37">
    </div>

<div class="line21"></div>
<div class="line22"></div>
    <div class="text14">날짜/주문번호</div>
    <div class="text15">배송지</div>
    <div class="text16">상품명/옵션</div>
    <div class="text17">상품금액/수량</div>
    <div class="text18">주문상태</div>
    <div class="text19">확인/리뷰</div>
    <div class="line27"></div>
    
    <div class="text20">조회내역이 없습니다.</div>

    <div class="text1">주문취소/반품/교환</div>
    <!-- form으로 -->
    <form action="#" class="rec41">
        <div class="text3">조회기간</div>
        <div class="rec42">
            <input type="radio" name="period" value="today" id="today" style="display: none;">
            <label for="today">오늘</label>
        </div>
        <div class="rec44">
            <input type="radio" name="period" value="7days" id="7days" style="display: none;">
            <label for="7days">7일</label>
        </div>
        <div class="rec45">
            <input type="radio" name="period" value="15days" id="15days" style="display: none;">
            <label for="15days">15일</label>
        </div>
        <div class="rec46">
            <input type="radio" name="period" value="1month" id="1month" style="display: none;">
            <label for="1month">1개월</label>
        </div>
        <div class="rec47">
            <input type="radio" name="period" value="3months" id="3months" style="display: none;">
            <label for="3months">3개월</label>
        </div>
        <div class="rec48">
            <input type="radio" name="period" value="1year" id="1year" style="display: none;">
            <label for="1year">1년</label>
        </div>
        <div class="rec49">
            <input type = "date" min = "1945-08-15" max = "2026-04-18" name="date">
        </div>
        <div class="text10">~</div>
        <div class="rec50">
            <input type = "date" min = "1945-08-15" max = "2026-04-18" name="date">
        </div>
        <div class="rec51">
            <input type="submit" value="조회" id="submit" style="border: none; background-color: black; color: white;">
        </div>
    </form>
    

    <div class="rec52">
        <div class="text11">취소/반품/교환 신청 내역</div>
    </div>

    <div class="line23"></div>
    <div class="line24"></div>
    
    <div class="line25"></div>
    <div class="line26"></div>
    <div class="text12">취소/반품/교환 처리 현황</div>
    <jsp:include page="./footer.jsp" />
</body>
</html>