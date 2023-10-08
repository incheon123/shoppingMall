<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/products.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
<title>상품</title>
</head>
<body>
	<jsp:include page="./header.jsp" flush="false" />
	<main>
        <div class="option_container">
            <div class="category_container">
                <div class="category"> <!-- border bottom -->
                    <h2>product_category</h2>
                </div>
                <div class="category_menu">
                    <a href="#" class="category_item">middle1</a>
                    <a href="#" class="category_item">middle2</a>
                </div>
            </div>
            <div class="sort_container">
                <div class="quantity_container"> <!-- border bottom -->
                    <p>64개</p>
                </div>
                <div class="sort_menu">
                    <a href="#" class="sort_item">추천인기순</a>
                    <a href="#" class="sort_item">판매인기순</a>
                    <a href="#" class="sort_item">낮은가격순</a>
                    <a href="#" class="sort_item">높은가격순</a>
                    <a href="#" class="sort_item">등록일순</a>
                </div>
            </div>
        </div>
    </main>
    <section>
        <div class="s3_product_container">
        </div>
    </section>
    <script src="../js/products.js"></script>
</body>
</html>