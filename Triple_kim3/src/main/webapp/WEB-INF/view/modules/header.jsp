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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
	<header class="container">
        <ul class="nav nav-pills d-none d-lg-flex justify-content-end">
        		<% if(session.getAttribute("id") != null){%>
        			<li class="nav-item">
						<a class="nav-link text-secondary" aria-current="page" href="${pageContext.request.contextPath}/view/mypage/profile"><%= session.getAttribute("id") %></a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-secondary" aria-current="page" href="${pageContext.request.contextPath}/logout.do">로그아웃</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-secondary" aria-current="page" href="${pageContext.request.contextPath}/view/basket">장바구니</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-secondary" aria-current="page" href="${pageContext.request.contextPath}/view/inquirys?pageNo=1">문의</a>
					</li>
                <%} else{%>
					<li class="nav-item">
						<a class="nav-link text-secondary" aria-current="page" href="${pageContext.request.contextPath}/view/login">로그인</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-secondary" href="${pageContext.request.contextPath}/view/membership">회원가입</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-secondary" href="${pageContext.request.contextPath}/view/basket">장바구니</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-secondary" aria-current="page" href="${pageContext.request.contextPath}/view/inquirys?pageNo=1"">문의</a>
					</li>
                <%} %>
          </ul>
        <div class="container d-flex justify-content-center align-items-center flex-wrap my-4">
            <h1><a href="${pageContext.request.contextPath }">Triple Kim</a></h1>
            <ul class="nav d-lg-none">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-secondary" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">
                        <i class="fa-regular fa-user"></i>
                    </a>
                    <ul class="dropdown-menu">
                    <% if(session.getAttribute("id") != null){%>
	                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/mypage/profile"><%= session.getAttribute("id") %></a></li>
	                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/logout.do">로그아웃</a></li>
	                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/basket">장바구니</a></li>
	                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/inquirys?pageNo=1">문의</a></li>
	                    <li><hr class="dropdown-divider"></li>
                    <% }else{ %>
                    	<li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/login">로그인</a></li>
	                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/membership">회원가입</a></li>
	                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/login">장바구니</a></li>
	                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/inquirys?pageNo=1">문의</a></li>
	                    <li><hr class="dropdown-divider"></li>
                    <% } %>
                    </ul>
                </li>
            </ul>
        </div>
        <nav class="navbar navbar-expand-lg my-4 bg-secondary">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">목록</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        남성
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/product?gender=man&age=adult&spcg=none&sbcg=1">상의</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/product?gender=man&age=adult&spcg=none&sbcg=2">하의</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/product?gender=man&age=adult&spcg=none&sbcg=3">신발</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/product?gender=man&age=adult&spcg=none&sbcg=4">모자</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        여성
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/product?gender=woman&age=adult&spcg=none&sbcg=1">상의</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/product?gender=woman&age=adult&spcg=none&sbcg=2">하의</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/product?gender=woman&age=adult&spcg=none&sbcg=3">신발</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/product?gender=woman&age=adult&spcg=none&sbcg=4">모자</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        키즈
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/product?gender=kids&age=child&spcg=none&sbcg=1">상의</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/product?gender=kids&age=child&spcg=none&sbcg=2">하의</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/product?gender=kids&age=child&spcg=none&sbcg=3">신발</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/product?gender=kids&age=child&spcg=none&sbcg=4">모자</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        세일
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/sail_product&spcg=none&sbcg=1">상의</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/sail_product&spcg=none&sbcg=2">하의</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/sail_product&spcg=none&sbcg=3">신발</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/view/sail_product&spcg=none&sbcg=4">모자</a></li>
                        </ul>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="btn btn-outline-success border-secondary text-secondary" type="submit">Search</button>
                </form>
              </div>
            </div>
          </nav>
    </header>
</body>
</html>