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
	<div class="container w-25 ">
        <label for="basic-url" class="form-label">탈퇴를 원하시면 비밀번호를 입력해주세요</label>
        <div class="input-group mb-3">
            <input type="text" class="form-control" placeholder="비밀번호" aria-label="Recipient's username" aria-describedby="button-addon2">
            <button class="btn btn-outline-secondary" type="button" id="button-addon2">탈퇴</button>
    	</div>
    </div>
    <jsp:include page="../modules/footer.jsp" />
</body>
</html>