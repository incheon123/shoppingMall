<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <title>관리자페이지</title>
    <style>
        html, body{
            height:100%;
            width:100%;
        }
        .long{
            width: 150px;
        }
        .short{
            width: 100px;
        }
        th{
        	position: sticky;
        	top: 0;
        }
        tr{
        	width: 100%;
        	height: fit-content;
        	background-color: blue !important;
        }
        textarea{
            resize : none;
        }
    </style>
</head>
<body>
	
    <div class="container bg-info w-100 py-0" style="height: 2500px;">
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
        <p class="bg-secondary">수정하기</p>
        <caption>입고상품목록</caption><button class="btn bg-success mx-5 px-1 py-1 btn-logistic-product-enroll-false"> 조회하기 </button>
        <input type="checkbox" class="enroll" /> 자체 상품 등록여부 
        <div class="container w-100 bg-warning" style="height: 20%; overflow:scroll;">
            <div class="container">
                <!-- 만약 enroll이 false라면 화면에 뿌려준다.-->
                <div class="container">
                    <table class="table">
                        <thead>
                            <tr>
                            	<th scope="col">#</th>
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
                        <tbody class='logistic-product-tbody'>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        
        <div class="container w-100 bg-secondary" style="height: 25%;">
        	<h3>자체상품으로 추가하기</h3>
        	<table class="table">
	            <thead>
	                <tr>
	                    <th scope="col">공급사 코드</th>
	                    <th scope="col">공급사측 상품코드</th>
	                    <th scope="col">공급일</th>
	                    <th scope="col">가격</th>
	                    <th scope="col">포인트</th>
	                    <!-- enroll 속성은 조건용이므로 화면에 뿌려주지 않는다-->
	                </tr>
	            </thead>
	            <tbody class='logistic-product-tbody'>
	            	<tr>
	            		<td><input type="text" readonly class="long"></td>
	            		<td><input type="text" readonly class="long"></td>
	            		<td><input type="text" readonly class="long"></td>
	            		<td><input type="text" class="short"></td>
                        <td><input type="text" class="short"></td>
	            	</tr>
	            </tbody>
                <tr>
                    <th scope="col">이미지</th>
	                <th scope="col">이미지경로</th>
                    <th scope="col">대분류</th>
	                <th scope="col">중분류</th>
                </tr>
                <tbody class='logistic-product-tbody'>
	            	<tr>
	            		<td><input type="file" style="width: 240px;"></td>
	            		<td><input type="text" readonly class="long"></td>
	            		<td>
                            <select name="" id="super_category" onchange="change()" required>
                                <option value="0">선택안됨</option>
                                <option value="1">상의</option>
                                <option value="2">하의</option>
                                <option value="3">신발</option>
                                <option value="4">모자</option>
                            </select>
                        </td>
                        <td>
                            <select name="" id="sub_category" required>
                                <option value="-99999999">선택안됨</option>
                            </select>
                        </td>
	            	</tr>
	            </tbody>
	            <tr>
            		<th scope="col">요약설명</th>
	                <th scope="col">설명</th>
	            </tr>
                <tbody class='logistic-product-tbody'>
	            	<tr>
	            		<td><textarea name="" id="" cols="30" rows="10" maxlength="140"></textarea></td>
	            		<td><textarea name="" id="" cols="50" rows="10" maxlength="500"></textarea></td>
	            	</tr>
	            </tbody>
	       	</table>
        	<button class="btn btn-success">상품추가하기</button>
        </div>
    </div>
</body>
<script>
function change(){
    var super_category = document.getElementById("super_category");
    var sub_category = document.getElementById("sub_category");

    $(sub_category).children("option").remove();
    if(super_category.value === "1"){
        sub_category.appendChild(createOption("스웨트"));
        sub_category.appendChild(createOption("자켓"));
        sub_category.appendChild(createOption("반팔"));
        sub_category.appendChild(createOption("패딩"));
        return
    }
    if(super_category.value === "2"){
        sub_category.appendChild(createOption("긴바지"));
        sub_category.appendChild(createOption("반바지"));
        sub_category.appendChild(createOption("치마"));
        sub_category.appendChild(createOption("트레이닝"));
        sub_category.appendChild(createOption("등산"));
       return
    }
    if(super_category.value === "3"){
        sub_category.appendChild(createOption("일반화"));
        sub_category.appendChild(createOption("등산화"));
        sub_category.appendChild(createOption("축구화"));
        sub_category.appendChild(createOption("슬리퍼"));
        sub_category.appendChild(createOption("스웨트"));
       return
    }
    if(super_category.value === "4"){
        sub_category.appendChild(createOption("야구모자"));
        sub_category.appendChild(createOption("등산모자"));
        sub_category.appendChild(createOption("골프모자"));
        sub_category.appendChild(createOption("트레이닝"));
        sub_category.appendChild(createOption("일반모자"));
       return
    }
}
var option;
function createOption(content){
    option = document.createElement("option");
    option.append(content);
    return option;
}
const TBODY = document.getElementsByClassName('logistic-product-tbody')[0];

let tr;
let td;
let a;

let arr = [];
	$(".btn-logistic-product-enroll-false").on("click", () => {
		$.ajax({
			type:'GET',
			url: "get/logistic_product",
			dataType : 'json',
			data : {
				enroll : $('.enroll').is(':checked')
			},			
			success: function(result){
				if(result != null){
					let lp_length = Object.keys(result.logisticProducts).length;
					for(let i = 0; i < lp_length; i++){
						arr.push(result.logisticProducts[i]);
						
						tr = document.createElement("tr");
						tr.className = i
						
						tr.appendChild(wrapper(i+1));
						tr.appendChild(wrapper(arr[i].logistic_id));
						tr.appendChild(wrapper(arr[i].product_id));
						tr.appendChild(wrapper(arr[i].warehousing_date));
						
						tr.appendChild(wrapper(arr[i].product_name));
						tr.appendChild(wrapper(arr[i].product_color));
						tr.appendChild(wrapper(arr[i].purchase_price));
						tr.appendChild(wrapper(arr[i].total_quantity));
						tr.appendChild(wrapper(arr[i].is_new));
						tr.appendChild(wrapper(arr[i].gender));
						tr.appendChild(wrapper(arr[i].available_age));
						
						
						TBODY.appendChild(tr);
					}
					return;
				}else{
					return;
				}
			}
		})
	});
	function wrapper(content){
		td = document.createElement("td");
		td.append(content);
		return td;
	}
	
	
	$(document).on("click", "tr", function(){
		
	})
</script>
</html>