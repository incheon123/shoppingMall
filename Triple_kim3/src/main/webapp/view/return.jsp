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
    <title>���</title>
</head>
<body>
	<div class="text13">���/��ǰ/��ȯ ���� �� 0��</div>
    <div class="rec37">
    </div>

<div class="line21"></div>
<div class="line22"></div>
    <div class="text14">��¥/�ֹ���ȣ</div>
    <div class="text15">�����</div>
    <div class="text16">��ǰ��/�ɼ�</div>
    <div class="text17">��ǰ�ݾ�/����</div>
    <div class="text18">�ֹ�����</div>
    <div class="text19">Ȯ��/����</div>
    <div class="line27"></div>
    
    <div class="text20">��ȸ������ �����ϴ�.</div>

    <div class="text1">�ֹ����/��ǰ/��ȯ</div>
    <!-- form���� -->
    <form action="#" class="rec41">
        <div class="text3">��ȸ�Ⱓ</div>
        <div class="rec42">
            <input type="radio" name="period" value="today" id="today" style="display: none;">
            <label for="today">����</label>
        </div>
        <div class="rec44">
            <input type="radio" name="period" value="7days" id="7days" style="display: none;">
            <label for="7days">7��</label>
        </div>
        <div class="rec45">
            <input type="radio" name="period" value="15days" id="15days" style="display: none;">
            <label for="15days">15��</label>
        </div>
        <div class="rec46">
            <input type="radio" name="period" value="1month" id="1month" style="display: none;">
            <label for="1month">1����</label>
        </div>
        <div class="rec47">
            <input type="radio" name="period" value="3months" id="3months" style="display: none;">
            <label for="3months">3����</label>
        </div>
        <div class="rec48">
            <input type="radio" name="period" value="1year" id="1year" style="display: none;">
            <label for="1year">1��</label>
        </div>
        <div class="rec49">
            <input type = "date" min = "1945-08-15" max = "2026-04-18" name="date">
        </div>
        <div class="text10">~</div>
        <div class="rec50">
            <input type = "date" min = "1945-08-15" max = "2026-04-18" name="date">
        </div>
        <div class="rec51">
            <input type="submit" value="��ȸ" id="submit" style="border: none; background-color: black; color: white;">
        </div>
    </form>
    

    <div class="rec52">
        <div class="text11">���/��ǰ/��ȯ ��û ����</div>
    </div>

    <div class="line23"></div>
    <div class="line24"></div>
    
    <div class="line25"></div>
    <div class="line26"></div>
    <div class="text12">���/��ǰ/��ȯ ó�� ��Ȳ</div>
    <jsp:include page="./footer.jsp" />
</body>
</html>