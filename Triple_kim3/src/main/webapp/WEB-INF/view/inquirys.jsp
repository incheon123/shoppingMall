<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                    <th scope="col" style="width: 55%;">제목</th>
                    <th scope="col" style="width: 11%;">작성자</th>
                    <th scope="col" style="width: 11%;">답변 상태</th>
                    <th scope="col" style="width: 14%;">작성일</th>
                </tr>
            </thead>
            <tbody>
            	<c:forEach var="item" items="${inquirys}">
                <tr>
                    <td class="title">
                        <a href="${pageContext.request.contextPath}/view/bbs_inquiry?iid=${item.getIid()}" style="display: block; width: 100%; height:100%;">${item.getTitle() }</a>
                    </td>
                    <td class="writer">${item.getUid() }</td>
                    <td class="status">${item.getStatus() }</td>
                    <td class="write-date">${item.getDate()}</td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="container text-end">
        	<% if(session.getAttribute("id") != null){ %>
            	<a href="${pageContext.request.contextPath}/view/inquiry" class="btn bg-info">문의하기</a>
            <% }else{ %>
            	<a href="${pageContext.request.contextPath}/view/login" class="btn bg-info">문의하기</a>
            <%} %>
        </div>
        <div class="container text-center">
        <c:choose>
	        <c:when test="${pageNo eq 1}">
	        	<a href="${pageContext.request.contextPath}/view/inquirys?pageNo=${pageNo}" class="btn bg-warning"> < </a>
	        </c:when>
	        <c:otherwise>
	        	<a href="${pageContext.request.contextPath}/view/inquirys?pageNo=${pageNo - 1}" class="btn bg-warning"> < </a>
	        </c:otherwise>
        </c:choose>
        <fmt:parseNumber var="totalPageNo" value="${Math.ceil(length/5) }" integerOnly="true" />
       	<c:if test="${ totalPageNo >= pageNo }">
        	<a href="${pageContext.request.contextPath}/view/inquirys?pageNo=${pageNo}" class="btn bg-info">${pageNo}</a>
        </c:if>
        <c:if test="${ totalPageNo >= pageNo+1 }">
        	<a href="${pageContext.request.contextPath}/view/inquirys?pageNo=${pageNo+1}" class="btn">${pageNo+1}</a>
        </c:if>
        <c:if test="${ totalPageNo >= pageNo+2 }">
        	<a href="${pageContext.request.contextPath}/view/inquirys?pageNo=${pageNo+2}" class="btn">${pageNo+2}</a>
        </c:if>
        <c:choose>
	        <c:when test="${pageNo eq totalPageNo}">
	        	<a href="${pageContext.request.contextPath}/view/inquirys?pageNo=${pageNo}" class="btn bg-warning"> > </a>
	        </c:when>
	        <c:otherwise>
	        	<a href="${pageContext.request.contextPath}/view/inquirys?pageNo=${pageNo + 1}" class="btn bg-warning"> > </a>
	        </c:otherwise>
        </c:choose>
    </div>
    </div>
	<jsp:include page="./modules/footer.jsp" />
</body>
</html>