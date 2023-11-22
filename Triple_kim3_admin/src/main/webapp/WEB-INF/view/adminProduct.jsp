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
        
        <form class="container w-100 bg-secondary" style="height: 25%;" action="${pageContext.request.contextPath}/put/product" method="POST" enctype="multipart/form-data">
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
	            		<td><input required type="text" readonly class="long" name='logi_company_id' id="logi_company_id"></td>
	            		<td><input required type="text" readonly class="long" name="logi_product_id" id="logi_product_id"></td>
	            		<td><input required type="text" readonly class="long" name="warehousing_date" id="warehousing_date"></td>
	            		<td><input required type="text" class="short" name="price" id="price"></td>
                        <td><input required type="text" class="short" name="point" id="point"></td>
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
	            		<td><input required type="file" style="width: 240px;" name='product_img' id="product_img"></td>
	            		<td><input type="text" class="long" name='product_img_url' id="img_url"></td>
	            		<td>
                            <select required name="super_category" id="super_category" onchange="change()" required>
                                <option value="0">선택안됨</option>
                                <option value="1">상의</option>
                                <option value="2">하의</option>
                                <option value="3">신발</option>
                                <option value="4">모자</option>
                            </select>
                        </td>
                        <td>
                            <select required name="sub_category" id="sub_category" required>
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
	            		<td><textarea required name="short_desc" id="short_desc" cols="30" rows="10" maxlength="140"></textarea></td>
	            		<td><textarea required name="detail_desc" id="detail_desc" cols="50" rows="10" maxlength="500"></textarea></td>
	            	</tr>
	            </tbody>
	       	</table>
        	<input type="submit" class="btn btn-success">상품추가하기</input>
        </form>
    </div>
</body>
<script>
function change(){
    var super_category = document.getElementById("super_category");
    var sub_category = document.getElementById("sub_category");

    $(sub_category).children("option").remove();
    if(super_category.value === "1"){
    	let sb1 = createOption("스웨트");
        sub_category.appendChild(sb1);
    	sb1.value = '1'
    	
    	let sb2 = createOption("자켓");
        sub_category.appendChild(sb2);
    	sb2.value = '2'

    	let sb3 = createOption("반팔");
        sub_category.appendChild(sb3);
        sb3.value = '3'
        
        let sb4 = createOption("패딩");
        sub_category.appendChild(sb4);
        sb4.value="4"
        return
    }
    if(super_category.value === "2"){
    	let sb1 = createOption("긴바지");
        sub_category.appendChild(sb1);
        sb1.value = '1'
        
        let sb2 = createOption("반바지")
        sub_category.appendChild(sb2);
        sb2.value = '2'
        
        let sb3 = createOption("치마")
        sub_category.appendChild(sb3);
        sb3.value='3'
        
        let sb4 = createOption("트레이닝")
        sub_category.appendChild(sb4);
        sb4.value = '4';
        
        let sb5 = createOption("등산")
        sub_category.appendChild(sb5);
        sb5.value = '5'
       return
    }
    if(super_category.value === "3"){
    	let sb1 = createOption("일반화")
        sub_category.appendChild(sb1);
    	sb1.value = '1'
    	
    	let sb2 = createOption("등산화")
        sub_category.appendChild(sb2);
    	sb2.value = '2'
    	
    	let sb3 = createOption("축구화")
        sub_category.appendChild(sb3);
    	sb3.value = '3'
    	
    	let sb4 = createOption("슬리퍼")
        sub_category.appendChild(sb4);
    	sb4.value = '4'
    	
       return
    }
    if(super_category.value === "4"){
    	let sb1 = createOption("야구모자")
        sub_category.appendChild(sb1);
    	sb1.value = '1'
    	
    	let sb2 = createOption("등산모자")
        sub_category.appendChild(sb2);
    	sb2.value = '2'
    	
    	let sb3 = createOption("골프모자")
        sub_category.appendChild(sb3);
    	sb3.value = '3'
    	
    	let sb4 = createOption("트레이닝")
        sub_category.appendChild(sb4);
    	sb4.value = '4'
    	
    	let sb5 = createOption("일반모자")
        sub_category.appendChild(sb5);
    	sb5.value = '5'
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
						tr.id = i
						tr.className = "logi_product"
						
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
	
	
	$(document).on("click", ".logi_product", function(){
		console.log(this.children[1].innerText);
		$("#logi_company_id").val(this.children[1].innerText)
		$("#logi_product_id").val(this.children[2].innerText)
		$("#warehousing_date").val(this.children[3].innerText)
	})
	
	
	
//자체상품으로 추가하기
/*
let company_id = $("#logi_company_id").val();
let product_id = $("#logi_product_id").val();
let warehousing_date = $("#warehousing_date").val();
let price = Number($("#price").val());
let point = Number($("point").val());
let product_img = $("#product_img")[0].files[0];
let img_url = $("#img_url").val();
let super_category = Number($("#super_category").val());
let sub_category = Number($("#sub_category").val());
let short_desc = $("#short_desc").val();
let detail_desc = $("#detail_desc").val();
*/

	
</script>
</html>