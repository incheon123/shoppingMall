<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/login.css">
    <title>Document</title>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
    <div class="login-wrapper">
       	<h2>Login</h2>
         <form method="post" action="login.do" id="login-form">
             <input type="text" name="userName" placeholder="Email">
             <input type="password" name="userPassword" placeholder="Password">
             <label for="remember-check">
                 <input type="checkbox" id="remember-check">아이디 저장하기
             </label>
             <input type="submit" value="Login">
         </form>
         <form action="./id.jsp" id ="id_search">
             <input type="submit" value="아이디 찾기">
         </form>
         <form action="./password.jsp" id = "password_search">
             <input type="submit" value="비밀번호 찾기">
         </form>
     </div>
     <jsp:include page="./modules/footer.jsp" />
</body>
</html>