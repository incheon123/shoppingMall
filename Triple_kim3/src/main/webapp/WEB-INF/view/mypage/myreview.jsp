<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF_8">
<link rel="stylesheet" href="../../css/myreview.css">
<title>리뷰조회페이지</title>
</head>
<body>
	<jsp:include page="../modules/header.jsp" />
	<jsp:include page="../modules/sideDropdown.jsp" />
	<div class="table-responsive w-75 container py-4" style="margin-top: 5%; margin-bottom: 5%;">
        <!-- 조회 옵션 -->
        <div class="container bg-info w-50 py-2" style="border-radius: 10px;">
            <div class="input-group my-1">
                <span class="input-group-text" id="basic-addon1">조회날짜</span>
                <input type="date" class="form-control" placeholder="date" aria-label="Username" aria-describedby="basic-addon1">
            </div>
            <div class="input-group my-2">
                <span class="input-group-text" id="basic-addon1">작성자</span>
                <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
              </div>
        </div>
        <table class="table my-2">
            <thead>
                <tr>
                    <th scope="col" style="width: 4%;">#</th>
                    <th scope="col" style="width: 55%;">제목</th>
                    <th scope="col" style="width: 11%;">작성자</th>
                    <th scope="col" style="width: 11%;">리뷰 여부</th>
                    <th scope="col" style="width: 11%;">작성일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th class="order">1</th>
                    <td class="title">
                        <a href="" style="display: block; width: 100%; height:100%;">Mark</a>
                    </td>
                    <td class="writer">Otto</td>
                    <td class="status">@mdo</td>
                </tr>
            </tbody>
        </table>
    </div>
    <jsp:include page="../modules/footer.jsp" />
</body>
</html>