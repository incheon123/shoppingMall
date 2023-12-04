<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의</title>
<style>
	.desc{
		width: 100%;
		height: 250px;
	}
</style>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
	<form action="${pageContext.request.contextPath}/process/inquiry" method="POST" class="container" style="margin-top: 5%; margin-bottom: 5%;">
		<div class="input-group mb-3">
		  <span class="input-group-text">아이디</span>
		  <input name="uid" type="text" class="form-control" placeholder="Userid" aria-label="Userid" aria-describedby="basic-addon1" 
		  	value="${inq.getUid() }" disabled>
		</div>
		<div class="input-group mb-3">
		  <span class="input-group-text">문의유형</span>
		  <input name="uid" type="text" class="form-control" placeholder="Userid" aria-label="Userid" aria-describedby="basic-addon1" 
		  	value="${inq.getType()}" disabled>
		</div>
		<div class="input-group mb-3">
		  <span class="input-group-text">작성일</span>
		  <input name="uid" type="text" class="form-control" placeholder="Userid" aria-label="Userid" aria-describedby="basic-addon1" 
		  	value="${inq.getDate()}" disabled>
		</div>
		<div class="mb-3">
		  <label for="exampleFormControlTextarea1" class="form-label">제목</label>
		  <textarea name="title" class="form-control w-100 title" id="exampleFormControlTextarea1" placeholder="문의 제목" style="resize: none;">${inq.getTitle() }</textarea>
		</div>
		<div class="mb-3">
		  <label for="exampleFormControlTextarea1" class="form-label">내용</label>
		  <textarea name="desc" class="form-control w-100 desc"  placeholder="문의 내용" style="resize: none;">${inq.getDesc()}</textarea>
		</div>
	</form>
	<jsp:include page="./modules/footer.jsp" />
</body>
</body>
</html>