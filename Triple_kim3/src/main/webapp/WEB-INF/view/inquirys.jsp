<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 게시판</title>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
	<div class="table-responsive-sm w-75 container py-4">
        <!-- 조회 옵션 -->
        <div class="container bg-info w-50 py-2" style="border-radius: 10px;">
            <div class="input-group my-1">
                <span class="input-group-text" id="basic-addon1">조회날짜</span>
                <input type="date" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
              </div>
            <div class="input-group my-2 h-100">
                <span class="input-group-text" id="basic-addon1">문의유형</span>
                <select class="form-select h-100" aria-label="Default select example">
                    <option value="-1" selected>선택안함</option>
                    <option value="order">주문</option>
                    <option value="payment">결제</option>
                    <option value="delivery">배송</option>
                    <option value="account">계정</option>
                    <option value="etc">기타</option>
                </select>
            </div>
        </div>
        <table class="table my-2">
            <thead>
                <tr>
                    <th scope="col" style="width: 4%;">#</th>
                    <th scope="col" style="width: 55%;">제목</th>
                    <th scope="col" style="width: 11%;">작성자</th>
                    <th scope="col" style="width: 11%;">답변 상태</th>
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
                    <td class="write-date">@mdo</td>
                </tr>
            </tbody>
        </table>
        <div class="container text-end">
        	<% if(session.getAttribute("id") != null){ %>
            	<a href="${pageContext.request.contextPath}/view/inquiry" class="btn bg-info">문의하기</a>
            <% }else{ %>
            	<a href="${pageContext.request.contextPath}/view/login" class="btn bg-info">문의하기</a>
            <%} %>
        </div>
    </div>
	<jsp:include page="./modules/footer.jsp" />
</body>
</html>