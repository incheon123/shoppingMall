<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/login.css">
    <title>Document</title>
</head>
<body>
    	<jsp:include page="./component/header.jsp" />
       <div class="login-wrapper">
          	<h2>Login</h2>
            <form method="post" action="������url" id="login-form">
                <input type="text" name="userName" placeholder="Email">
                <input type="password" name="userPassword" placeholder="Password">
                <label for="remember-check">
                    <input type="checkbox" id="remember-check">���̵� �����ϱ�
                </label>
                <input type="submit" value="Login">
            </form>
            <form action="id.jsp" id ="id_search">
                <input type="submit" value="���̵� ã��">
            </form>
            <form action="password.jsp" id = "password_search">
                <input type="submit" value="��й�ȣ ã��">
            </form>
        </div>
        <jsp:include page="./component/footer.jsp" />
</body>
</html>