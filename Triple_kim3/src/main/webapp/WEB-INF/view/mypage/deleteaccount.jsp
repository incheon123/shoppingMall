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
	<div class="container w-25 ">
        <label for="basic-url" class="form-label">Ż�� ���Ͻø� ��й�ȣ�� �Է����ּ���</label>
        <div class="input-group mb-3">
            <input type="text" class="form-control" placeholder="��й�ȣ" aria-label="Recipient's username" aria-describedby="button-addon2">
            <button class="btn btn-outline-secondary" type="button" id="button-addon2">Ż��</button>
    	</div>
    </div>
    <jsp:include page="../modules/footer.jsp" />
</body>
</html>