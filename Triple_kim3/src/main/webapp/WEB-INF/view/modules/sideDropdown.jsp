<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container" style="width:20% !important;">        
	    <div class="accordion" id="accordionExample">
	        <div class="accordion-item">
		        <h2 class="accordion-header">
		            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
		            		주문확인
		            </button>
		        </h2>
		        <div id="collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
		            <div class="accordion-body">
		                <ul class="list-group">
		                    <a href="${pageContext.request.contextPath }/view/mypage/order" class="list-group-item">주문확인하기</a>
		                    <li class="list-group-item">A second item</li>
		                </ul>
		            </div>
		        </div>
	        </div>
	        <div class="accordion-item">
		        <h2 class="accordion-header">
		            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
		            		내 리뷰
		            </button>
		        </h2>
		        <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
		            <div class="accordion-body">
		                <ul class="list-group">
		                    <a href="${pageContext.request.contextPath}/view/mypage/review" class="list-group-item">내 리뷰 조회하기</a>
		                    <li class="list-group-item">A second item</li>
		                </ul>
		            </div>
		        </div>
	        </div>
	        <div class="accordion-item">
		        <h2 class="accordion-header">
		            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
		            		내 문의
		            </button>
		        </h2>
		        <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
		            <div class="accordion-body">
		                <ul class="list-group">
		                    <a href="${pageContext.request.contextPath }/view/mypage/inquiry" class="list-group-item">내 문의 조회하기</a>
		                    <li class="list-group-item">A second item</li>
		                </ul>
		            </div>
		        </div>
	        </div>
	        <div class="accordion-item">
	            <h2 class="accordion-header">
		            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
		                	회원 탈퇴
		            </button>
	            </h2>
	            <div id="collapseFour" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
		            <div class="accordion-body">
		                <ul class="list-group">
		                    <a href="" class="list-group-item">회원 탈퇴 하기</a>
		                    <li class="list-group-item">A second item</li>
	                 	</ul>
		            </div>
	            </div>
	        </div>
	    </div>
	</div>
</body>
</html>