<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/product.css">
<title>상품상세페이지</title>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
	<!-- 추후에 스크립트 태그를 추가하세요 -->
	<main>
        <form class="product" action="#" method="GET">
            <div class="img_container">
                <img src="" alt="" class="product_img">
            </div>
            <div class="info_container">
                <div class="content">
                    <p class="product_name">모자</p>
                    <div class="middle">
                        <p class="product_desc">짧은설명 descriptionDescription</p>
                        <p class="product_quantity">3</p>
                    </div>
                    <div class="btn_container">
                        <button class="add">↑</button><br>
                        <button class="minus">↓</button>
                    </div>
                    <p class="product_total">총합계 금액 63,000원</p>
                    <input type="submit" value="장바구니에 담기">
                </div>
            </div>
        </form>
    </main>
    <jsp:include page="./modules/footer.jsp" />
</body>
</html>