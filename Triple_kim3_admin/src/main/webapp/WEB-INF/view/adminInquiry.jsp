<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <title>관리자페이지</title>
    <style>
        html, body{
            height:100%;
            width:100%;
        }
        input[type="text"]{
            width: 100px;
        }
    </style>
</head>
<body>
	
    <div class="container bg-info w-100 h-100 py-0">
        <ul class="nav">
            <li class="nav-item">
                <a href="" class="nav-link active">상품관리</a>
            </li>
            <li class="nav-item">
                <a href="" class="nav-link">주문관리</a>
            </li>
            <li class="nav-item">
                <a href="" class="nav-link">문의관리</a>
            </li>
            <li class="nav-item">
                <a href="" class="nav-link">리뷰관리</a>
            </li>
            <li class="nav-item">
                <a href="" class="nav-link">회원관리</a>
            </li>
        </ul>
        <div class="container">
            <p class="bg-secondary">조회하기</p>
        </div>
        <div class="container w-100 bg-warning" style="height: 35%; overflow:scroll;">
            <p class="bg-secondary">수정하기</p>
            <caption>추가할 상품 목록</caption> <button class="btn bg-success mx-5 px-1 py-1"> 조회하기 </button>
            <div class="container">
                <!-- 만약 enroll이 false라면 화면에 뿌려준다.-->
                <div class="container">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">공급사 코드</th>
                                <th scope="col">공급사측 상품코드</th>
                                <th scope="col">공급일</th>
                                <th scope="col">상품이름</th>
                                <th scope="col">상품색상</th>
                                <th scope="col">매입가격</th>
                                <th scope="col">입고수량</th>
                                <th scope="col">신상여부</th>
                                <th scope="col">성별</th>
                                <th scope="col">성인용</th>
                                <!-- enroll 속성은 조건용이므로 화면에 뿌려주지 않는다-->
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
</body>
</html>