<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../css/id.css">
<title>���̵� ã��</title>
</head>
<body>
	<div class="box">
    <form action="doJoin" method="POST" class="joinForm" onsubmit="DoJoinForm__submit(this); return false;">
        <h2>���̵� ã��</h2>
        
        <div class="textForm">
            <input name="name" type="password" class="name" placeholder="�̸�">
        </div>
        <div class="textForm">
            <input name="email" type="text" class="email" placeholder="�̸���">
        </div>
    
        <input type="submit" class="btn" value="���̵� ã��"/>
    </form>
    </div>
</body>
</html>