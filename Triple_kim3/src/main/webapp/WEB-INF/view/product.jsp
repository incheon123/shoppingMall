<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
	<!-- ajax를 이용해서 장바구니에 추가해야한다 Fu**-->

    <div class="container text-center d-flex flex-row justify-content-center align-items-center h-75 w-100 py-5">

        <div class="row row-cols-1 row-cols-sm-1 row-cols-md-2 row-cols-lg-2 row-cols-xl-2 row-cols-xxl-2 py-5 w-100">

            <div class="col text-center ratio ratio-4x3 h-50 w-50">
                <img src="../imgResource/gazelle.jpg" class="object-fit-cover" alt="">
            </div>

            <div class="col my-auto">

                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary border">
                        <div class="container-fluid">
                          <span class="navbar-text">
                            	아디다스 가젤 오리지날
                          </span>
                          
                        </div>
                      </nav>
                </div>

                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary py-0 px-3">
                        <div class="container-fluid">
                          <span class="navbar-text">
                            가격
                          </span>
                          <span class="navbar-text">
                            총가격
                          </span>
                        </div>
                      </nav>
                </div>
                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary py-0 px-3">
                        <div class="container-fluid">
                          <span class="navbar-text">
                            할인률
                          </span>
                        </div>
                      </nav>
                </div>
                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary py-0 px-3">
                        <div class="container-fluid">
                          <span class="navbar-text">
                            수량
                          </span>
                          <span class="navbar-text">
                            1
                          </span>
                        </div>
                      </nav>
                </div>
                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary py-0 px-3">
                        <div class="container-fluid">
                          <span class="navbar-text">
                            옵션
                          </span>
                          <span class="navbar-text">
                            
                          </span>
                        </div>
                      </nav>
                </div>
                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary py-0 px-3">
                        <div class="container-fluid">
                          <span class="navbar-text">
                            배송비
                          </span>
                          <span class="navbar-text">
                            3000
                          </span>
                        </div>
                      </nav>
                </div>
                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary py-0 px-3">
                        <div class="container-fluid">
                          <span class="navbar-text">
                            총가격
                          </span>
                          <span class="navbar-text">
                            132,000$
                          </span>
                        </div>
                      </nav>
                </div>
                <div class="col text-end my-1">
                    <button type="button" class="btn btn-primary btn-lg">구매하기</button>
                    <button type="button" class="btn btn-secondary btn-lg">장바구니</button>
                </div>
            </div>

        </div>

    </div>
    <jsp:include page="./modules/footer.jsp" />
</body>
</html>