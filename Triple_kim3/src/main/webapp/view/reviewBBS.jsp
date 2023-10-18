<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/reviewBBS.css">
<title>리뷰게시판</title>
</head>
<body>
	<jsp:include page="./header.jsp" />
	<main>
        <h3>리뷰게시판</h3>
        <div class="rows">
            <!-- 얘는 캡션    -->
            <a href="" class="caption" style="cursor: pointer;">
                <span class="date">일자</span>
                <span class="title">제목</span>
                <span class="writer">작성자</span>
                <span class="good">추천수</span>
            </a>
            <!-- row는 20개제한 그 이상은 다음페이지로 넘김 -->
            <a href="https://www.naver.com" class="row">
                <span class="date">2023</span>
                <span class="title">옷좋다</span>
                <span class="writer">김택현</span>
                <span class="good">2358</span>
            </a>
            <a href="https://www.naver.com" class="row">
                <span class="date">2023</span>
                <span class="title">옷좋다</span>
                <span class="writer">김택현</span>
                <span class="good">2358</span>
            </a>
            <a href="https://www.naver.com" class="row">
                <span class="date">2023</span>
                <span class="title">옷좋다</span>
                <span class="writer">김택현</span>
                <span class="good">2358</span>
            </a>
            <a href="https://www.naver.com" class="row">
                <span class="date">2023</span>
                <span class="title">옷좋다</span>
                <span class="writer">김택현</span>
                <span class="good">2358</span>
            </a>
            <a href="https://www.naver.com" class="row">
                <span class="date">2023</span>
                <span class="title">옷좋다</span>
                <span class="writer">김택현</span>
                <span class="good">2358</span>
            </a>
        </div>
        <div class="page_number">
            <div class="page_number_inner_container">
                <a href="">
                    <div class="left"><</div>
                </a>
                <span class="number_group">
                    <a href="#">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                </span>
                <a href="">
                    <div class="right">></div>
                </a>
            </div>
        </div>
        <div class="search_container">
            <form class="search_inner_container">
                <select name="type" id="">
                    <option value="title">제목</option>
                    <option value="writer">작성자</option>
                    <option value="date">일자</option>
                </select>
                <div class="input_container">
                    <input type="text" name="text">
                </div>
                <input type="submit" value="검색">
            </form>
        </div>
    </main>
    <jsp:include page="./footer.jsp" />
</body>
</html>