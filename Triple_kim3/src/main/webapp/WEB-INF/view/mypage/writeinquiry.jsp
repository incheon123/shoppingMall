<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/writeinquiry.css">
<title>문의작성</title>
</head>
<body>
	<jsp:include page="../modules/header.jsp" />
	<main>
        <div class="review_container">
            <h2>문의 작성</h2>
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
                    <div class="second_inner_container"> <!-- second(회색박스) 안에서 위치의 기준이 된다 -->
                        <div class="second_ele_container">
                            <h3>유형</h3>
                            <select name="inquiryType" class="select_container">
                                <option value="배송">계정</option>
                                <option value="배송">배송</option>
                                <option value="배송">결제</option>
                                <option value="배송">주문</option>
                                <option value="배송">기타</option>
                            </select>
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
    <jsp:include page="../modules/footer.jsp" />
</body>
</html>