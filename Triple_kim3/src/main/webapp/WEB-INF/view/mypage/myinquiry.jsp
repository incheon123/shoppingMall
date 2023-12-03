<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/myinquiry.css">
<title>문의조회페이지</title>
<style>
</style>
</head>
<body>
	<jsp:include page="../modules/header.jsp" />
	<div class="container w-75 d-flex flex-direction-row justify-content-around align-items-center">
		
		<jsp:include page="../modules/sideDropdown.jsp" />
		<!-- 문의 검색창 제목 날짜 -->
		<div class="container w-50 my-0 d-flex flex-direction-column ">
			<form action="" method="GET" class="container w-75 h-100 mx-0 bg-secondary">
				<p class="my-1 text-light">조회</p>
				<div class="input-group mb-1 my-1">
			  		<span class="input-group-text" id="basic-addon1">일자</span>
			  		<input type="date" class="form-control text-center">
				</div>
				<div class="input-group mb-1 my-1">
			  		<span class="input-group-text" id="basic-addon1">제목</span>
			  		<input type="text" class="form-control">
				</div>
				<input type="submit" class="btn bg-info " style="float:right !important;" value="검색"></input>
			</form>
		</div>
	</div>
	<div class="table-responsive-sm table-responsive-md table-responsive-lg table-responsive-xl">
		<table class="table container w-75 table-sm table-lg table-md table-xl">
	  		<thead>
	    		<tr>
	      			<th scope="col">#</th>
	      			<th scope="col">작성자</th>
			      	<th scope="col">제목</th>
			      	<th scope="col">작성일</th>
			      	<th scope="col">문의답변상태</th>
			    </tr>
		  	</thead>
		  	<tbody>
		    	<tr>
		      		<th scope="row">1</th>
			      	<td>
			      		<p class="para">sds</p>
		      		</td>
			      	<td>
			      		<a href="">Otto436346363443</a>
			      	</td>
			      	<td>@mdo</td>
			      	<td>답변완료</td>
			      	<td class="" style="width:fit-content !important;">
		      		</td>
			    </tr>
			    <tr>
		      		<th scope="row">1</th>
			      	<td>Mark</td>
			      	<td>
			      		<a href="">Otto436346363443</a>
			      	</td>
			      	<td>@mdo</td>
			      	<td>답변대기</td>
			      	<td class="" style="width:fit-content !important;">
		      		</td>
			    </tr>
		  	</tbody>
		</table>
	</div>
    <jsp:include page="../modules/footer.jsp" />
</body>
</html>