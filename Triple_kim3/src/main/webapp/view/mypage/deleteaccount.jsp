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
<title>ȸ��Ż��</title>
</head>
<body>
	<jsp:include page="../modules/header.jsp" />
	<div class="h1">
        <div class="line1"></div>
        <div class="delete">ȸ��Ż��</div>
    </div>
    
    <div class="big_menu">
        <div class="rect1"></div>              
        <div class="rect2"></div>
        <div class="rect3"></div>
        <div class="rect4"></div>
        <div class="rect5"></div>
        <div class="logout">�α׾ƿ�</div>
        <div class="orderconf">�ֹ�Ȯ���ϱ�</div>
        <div class="myreview">�� ���� ��ȸ�ϱ�</div>
        <div class="deleteaccount">ȸ�� Ż�� �ϱ�</div>
        <div class="line2"></div>
    </div>
    <div id="menu">
        <div class="conf">�ֹ�Ȯ��</div>
        <div class="myrev">�� ����</div>
        <div class="myinquire">�� ����</div>
        <div class="deleteac">ȸ��Ż��</div>
    </div>

    <div class="myinquirecheck">�� ���� ��ȸ�ϱ�</div>
    <div class="rect6"></div>
    <div class="deleteaccount_menu">
        <div class="txt1">Ż�� ���Ͻø� ��й�ȣ�� �Է����ּ���.</div>
        <div class="rect7"></div>
        <div class="rect8"></div>
        <div class="pw">��й�ȣ</div>
        <div class="out">Ż��</div>
    </div>
    <jsp:include page="../modules/footer.jsp" />
</body>
</html>