<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/products.css">
<title>상품</title>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
	<!-- 추후에 스크립트 태그를 추가하세요 -->
	<div class="container w-100">
    <h3 class="flex-sm-fill text-sm-center nav-link text-secondary py-5">상의</h3>
    <nav class="nav nav-pills flex-column flex-sm-row">
      <a class="flex-sm-fill text-sm-center nav-link text-secondary" href="#">전체</a>
      <a class="flex-sm-fill text-sm-center nav-link text-secondary" href="#">후디</a>
      <a class="flex-sm-fill text-sm-center nav-link text-secondary" href="#">티셔츠</a>
      <a class="flex-sm-fill text-sm-center nav-link text-secondary" href="#">반팔</a>
      <a class="flex-sm-fill text-sm-center nav-link text-secondary" href="#">패딩</a>
      <a class="flex-sm-fill text-sm-center nav-link text-secondary" href="#">스웨트</a>
    </nav>
    <div class="container w-100 d-flex justify-content-center px-0 py-0">
      <div class="row row-cols-2 row-cols-md-4 g-4 my-5">
        <a href="" class="kth kth-hover px-0 py-0 my-0 text-decoration-none">
          <div class="col px-1 my-1">
            <div class="card">
              <img src="./resource/adidas_shoes_1.jpeg" class="card-img-top object-fit-cover" alt="...">
              <div class="card-body">
                <h5 class="card-title">포럼 로우</h5>
              </div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item">129,000 원</li>
                <li class="list-group-item">남성 Original</li>
                <li class="list-group-item">별점</li> <!-- 옵션 사항-->
              </ul>
              <div class="card-body">
                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              </div>
            </div>
          </div>
        </a>
        <a href="" class="kth kth-hover px-0 py-0 my-0 text-decoration-none">
          <div class="col px-1 my-1">
            <div class="card">
              <img src="./resource/adidas_shoes_2.jpeg" class="card-img-top object-fit-cover" alt="...">
              <div class="card-body">
                <h5 class="card-title">포럼 로우</h5>
              </div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item">129,000 원</li>
                <li class="list-group-item">남성 Original</li>
                <li class="list-group-item">단색</li> <!-- 옵션 사항-->
              </ul>
              <div class="card-body">
                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              </div>
            </div>
          </div>
        </a>
        <a href="" class="kth kth-hover px-0 py-0 my-0 text-decoration-none">
          <div class="col px-1 my-1">
            <div class="card">
              <img src="..." class="card-img-top object-fit-cover" alt="...">
              <div class="card-body">
                <h5 class="card-title">포럼 로우</h5>
              </div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item">129,000 원</li>
                <li class="list-group-item">남성 Original</li>
                <li class="list-group-item">단색</li> <!-- 옵션 사항-->
              </ul>
              <div class="card-body">
                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              </div>
            </div>
          </div>
        </a>
        <a href="" class="kth kth-hover px-0 py-0 my-0 text-decoration-none">
          <div class="col px-1 my-1">
            <div class="card">
              <img src="..." class="card-img-top object-fit-cover" alt="...">
              <div class="card-body">
                <h5 class="card-title">포럼 로우</h5>
              </div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item">129,000 원</li>
                <li class="list-group-item">남성 Original</li>
                <li class="list-group-item">단색</li> <!-- 옵션 사항-->
              </ul>
              <div class="card-body">
                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              </div>
            </div>
          </div>
        </a>
      </div>
    </div>
  </div>
    <jsp:include page="./modules/footer.jsp" />
</body>
</html>