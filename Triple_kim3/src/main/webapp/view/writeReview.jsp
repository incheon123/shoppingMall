<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/writeReview.css">
<jsp:include page="./header.jsp" flush="false" />
<title>리뷰작성</title>
</head>
<body>
	<main>
        <div class="review_container">
            <h2>리뷰 작성</h2>
            <form action="#" method="post">
                <div class="first"> <!-- flex -->
                    <div class="title_container"> <!-- flex -->
                        <div class="title_inner_container">
                            <h3>제목</h3>
                            <input type="text" name="title" class="title">
                        </div>
                    </div>
                    <div class="name_container">
                        <span class="name" name="user_name">opportunity13</span>
                    </div>
                </div>
                <div class="second"> <!-- flex -->
                    <div class="second_inner_container">
                        <div class="second_ele_container">
                            <h3>별점</h3>
                            <div class="star_container">
                                <span class="one" name="star">☆</span>
                                <span class="two" name="star">☆</span>
                                <span class="three" name="star">☆</span>
                                <span class="four" name="star">☆</span>
                                <span class="five" name="star">☆</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="third"> 
                    <textarea name="description" cols="50" rows="25" placeholder="내용"></textarea>
                </div>
                <input type="file" name="file_upload" class="file_upload">
                <div class="button_container">
                    <input type="submit" name="write">
                    <input type="button" name="cancel" value="취소">
                </div>
            </form>
        </div>
    </main>
</body>
</html>