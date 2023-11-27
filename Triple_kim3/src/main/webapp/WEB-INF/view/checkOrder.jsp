<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.1.js"
        integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<title>주문검토하기</title>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
	<form class="container w-75 h-75" method="POST" action="success">
        <div class="input-group mb-3">
            <span class="input-group-text">아이디</span>
            <input type="text" class="form-control uid" name="uid" placeholder="아이디" aria-label="Username" required disabled>
            <span class="input-group-text">이름</span>
            <input type="text" class="form-control uname" name="uname" placeholder="이름" aria-label="Server" required>
        </div>

        <div class="mb-3">
            <div class="input-group">
                <span class="input-group-text" id="basic-addon3">휴대전화번호</span>
                <input type="text" class="form-control" name="ptel" id="basic-url" aria-describedby="basic-addon3 basic-addon4"
                    required>
            </div>
        </div>
        <div class="row g-3">
            <div class="col-12">
                <label for="inputAddress" class="form-label">주소</label>
                <input type="text" class="form-control" name="addr1" id="inputAddress" placeholder="기본주소" required>
            </div>
            <div class="col-12">
                <input type="text" class="form-control" name="addr2" id="inputAddress2" placeholder="상세주소" required>
            </div>
        </div>
        <p class="container mx-0 my-0 py-3">상품목록</p>
        <div class="container w-100 my-0 row_box">
        	
       	</div>
      <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                    <!-- 
                        결제 모달창 
                        PAYMENT_USER
                        PAYMENT_PRICE
                        PAYMENT_METHOD
                        PAYMENT_CARD_NUM
                    -->
                    <!--직적입력함-->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">이름</span>
                        <input type="text" name='name' class="form-control payment_user" placeholder="Username" aria-label="Username"
                            aria-describedby="basic-addon1" required>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2">결제수단</span>
                        <select class="form-select" name="payment_method" aria-label="Default select example" required>
                            <option selected>필수선택</option>
                            <option value="card">카드</option>
                        </select>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2">카드사</span>
                        <select class="form-select card_company" name='card_company' aria-label="Default select example" required>
                            <option selected>필수선택</option>
                            <option value="1">농협</option>
                            <option value="2">국민</option>
                            <option value="3">토스</option>
                        </select>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2">카드번호</span>
                        <input type="text" class="form-control card_num" name='card_num' placeholder="카드번호" aria-label="Recipient's username"
                            aria-describedby="basic-addon2" required>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2">최종 결제 금액</span>
                        <input type="text" class="form-control" name='totalPrice' aria-label="Recipient's username"
                            aria-describedby="basic-addon2" value="129,500원">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">결제</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                </div>
            </div>
        </div>
   	</div>
        <div class="container mx-0 my-0 px-0 py-0 text-end">
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                	결제하기
            </button>
            <button type="button" class="btn btn-secondary">
            		취소하기
           	</button>
        </div>
    </form>

    
	<jsp:include page="./modules/footer.jsp" />
</body>
<script>
	function createInput(value, attrValue){
		let input = document.createElement("input");
		input.setAttribute('name', attrValue);
		input.setAttribute('value', value);
		return input;
	}
	function createRow(){
		let div = document.createElement("div");
		div.className = "row"
		return div;
	}
	
	function createCol(tag){
		let div = document.createElement("div");
		div.className = "col"
		
		div.append(tag);
		return div;
	}

	const TYPE = sessionStorage.getItem("type");
	const container = $(".row_box");
	
	
	if(TYPE === 'one'){
		let obj = JSON.parse(sessionStorage.getItem("product"))[0];
		console.log(obj);
		
// 		유저 아이디 추가
		$('.uid').val(obj.uid);
		row = createRow();
		row.appendChild(createCol(createInput(obj.pname, "pname")));
		row.appendChild(createCol(createInput(obj.quantity, "quantity")));
		row.appendChild(createCol(createInput(obj.psize, "psize")));
		if(obj.delivery === '0'){
			row.appendChild(createCol(createInput('무료', "delivery")));
// 			$(".totalDelivery").text('최종 배송비 : ' + '무료');
		}else{
			row.appendChild(createCol(createInput(3000, "delivery")));
// 			$(".totalDelivery").text('최종 배송비 : ' + 3000 + '원');
		}
		row.appendChild(createCol(createInput(obj.price, "price")));
		row.appendChild(createCol(createInput(obj.totalPrice, "totalPrice")));
		
		let temp = document.createElement("input");
		temp.setAttribute('name', 'pid');
		temp.setAttribute('value', obj.pid);
		temp.style.display = 'none';
		row.appendChild(temp);
		container.append(row);
		
// 		$(".totalPrice").text('총 결제 금액 : ' + obj.totalPrice);
		
		
	}else{
		console.log(JSON.parse(sessionStorage.getItem("productList")));
		
		let obj = JSON.parse(sessionStorage.getItem("productList"));
		console.log(obj);
		
		$('.uid').val(obj[0].uid);

		let totalPrice = 0;
		let totalDelivery = 0;
		
		for(let i = 0; i < obj.length; i++){
	// 		유저 아이디 추가
				
			totalPrice += Number(obj[i].totalPrice);
			totalDelivery += Number(obj[i].delivery);
			
			row = createRow();
			row.appendChild(createCol(createInput(obj[i].pname, 'pname')));
			row.appendChild(createCol(createInput(obj[i].quantity, 'quantity')));
			row.appendChild(createCol(createInput(obj[i].psize, 'psize')));
			if(obj[i].delivery === '0')
				row.appendChild(createCol(createInput('무료', 'delivery')));
			else
				row.appendChild(createCol(createInput(3000, 'delivery')));
			row.appendChild(createCol(createInput(obj[i].price, 'price')));
			row.appendChild(createCol(createInput(obj[i].totalPrice,'totalPrice')));
			
			let temp = document.createElement("input");
			temp.setAttribute('name', 'pid');
			temp.setAttribute('value', obj[i].pid);
			temp.style.display = 'none';
			row.appendChild(temp);
			
			container.append(row);
			
			
		}
// 		if(totalPrice >= 100000){
// 			$(".totalPrice").text('총 결제 금액 : ' + totalPrice + '원');
// 			$(".totalDelivery").text('최종 배송비 : ' + '무료');
// 		}else{
// 			$(".totalPrice").text('총 결제 금액 : ' + totalPrice+3000 + '원');
// 			$(".totalDelivery").text('최종 배송비 : ' + 3000 + '원');
// 		}
	}
</script>
</html>