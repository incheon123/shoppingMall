<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.beans.*" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<title>${product.getPname() }</title>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
	<!-- ajax를 이용해서 장바구니에 추가해야한다 Fu**-->

    <div class="container text-center d-flex flex-row justify-content-center align-items-center w-100 py-5">

        <div class="row row-cols-1 row-cols-sm-1 row-cols-md-2 row-cols-lg-2 row-cols-xl-2 row-cols-xxl-2 py-5 w-100 w-sm-100">

            <div class="col text-center ratio ratio-4x3 h-50 w-50">
                <img src="/${product.getImg_url() }" class="object-fit-cover" alt="">
            </div>

            <div class="col my-5">
				<div class="col text-start">
                  <nav class="navbar bg-body-tertiary">
                    <div class="container-fluid">
                      <span class="navbar-text"></span>
                      <span class="navbar-text">
                        ${product.getPurchase_count() }번의 구매
                      </span>
                    </div>
                  </nav>
                </div>
                <div class="col text-start">
	                <nav class="navbar bg-body-tertiary border">
	                    <div class="container-fluid">
	                      <span class="navbar-text">
	                        	${product.getPname()}
	                      </span>
	                      <span class="d-flex flex-column align-items-end">
	                        <span>
	                          <div class="star-count">
	                            <input id="starRating" type="text" style="display:none;" name="starRating" value="">
	                            <i class="star fa-solid fa-star"></i>
	                            <i class="star fa-solid fa-star"></i>
	                            <i class="star fa-solid fa-star"></i>
	                            <i class="star fa-solid fa-star"></i>
	                            <i class="star fa-solid fa-star"></i>
	                          </div>
	                        </span>
	                        <a href="">${product.getReview_count()}개의 리뷰</a>
	                      </span>
	                    </div>
	                  </nav>
                </div>
                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary py-0 px-3">
                        <div class="container-fluid">
                          <span class="navbar-text">
                         	가격
                          </span>
                          <span class="navbar-text product-price">
                          	${product.getPrice() }
                          </span>
                        </div>
                      </nav>
                </div>
                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary py-0 px-3">
                        <div class="container-fluid">
                          <span class="navbar-text">
                            할인률
                          </span>
                          <span class="navbar-text sail">
                          	<c:set value='${product.getSail()}' var="sail" />
                        	<c:choose>
                        		<c:when test="${sail} == '1' }">
                        			nothing
                       			</c:when>
                       			<c:otherwise>
                       				${ sail }%
                     			</c:otherwise>
                        	</c:choose>
                          </span>
                        </div>
                      </nav>
                </div>
                <div class="col text-start">
                  <nav class="navbar bg-body-tertiary py-0 px-3">
                      <div class="container-fluid">
                        <div class="dropdown w-100 d-block">
                          <button class="w-100 btn btn-secondary submitBasket dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" value="-1">
                            필수옵션
                          </button>
                          <ul class="dropdown-menu w-100 text-center">
                          	<li class="d-flex flex-direction-row justify-content-around">
	                            	<span>사이즈</span>
	                            	<span>재고량</span>
                            </li>
                          	<c:forEach var="item" items="${product.getSizes() }">
                          		
	                            <li class="dropdown-item dropdown-li d-flex flex-direction-row justify-content-around">
	                            	<span class="shoes-size">${item.get(0)}</span>
	                            	<c:choose>
		                            	<c:when test="${item.get(1) > 0}">
		                            		<span class="shoes-quantity">${item.get(1)}</span>
		                            	</c:when>
		                            	<c:otherwise>
		                            		<span class="shoes-quantity">품절</span>
		                            	</c:otherwise>
	                            	</c:choose>
	                            </li>
                            </c:forEach>
                            
                          </ul>
                        </div>
                    </div>
                  </nav>
              	</div>
                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary py-0 px-3">
                        <div class="container-fluid">
                        <!-- no size table -->
                          <span class="navbar-text">
                            수량
                          </span>
                          <span class="navbar-text quantity">
                            1
                            <c:set value="1" var="quantity" />
                          </span>
                        </div>
                      </nav>
                </div>
                <div class="d-grid gap-2 d-flex justify-content-md-end justify-content-sm-end justify-content-lg-end justify-content-xl-end justify-content-xxl-end">
				  <button class="btn btn-primary btn-add-quantity" type="button" style="width:50px !important;">+</button>
				  <button class="btn btn-primary btn-remove-quantity" type="button" style="width:50px !important;">-</button>
				</div>
                <!-- 
                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary py-0 px-3">
                        <div class="container-fluid">
                        there is no shoes option
                          <span class="navbar-text">
                            옵션
                          </span>
                          <span class="navbar-text">
                            
                          </span>
                        </div>
                      </nav>
                </div>
                -->
                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary py-0 px-3">
                        <div class="container-fluid">
                        
                          <span class="navbar-text">
                            배송비
                          </span>
                          <span class="navbar-text delivery-price">
                            <fmt:formatNumber value='${product.getPrice() }' type="number" var="price" pattern="######"/>
							<c:choose>
								<c:when test='${price >= 100000}'>
									0
									<fmt:formatNumber value="0" type="number" var="deliveryPrice" pattern="######"/>
								</c:when>
								<c:otherwise>
									3000
									<fmt:formatNumber value="3000" type="number" var="deliveryPrice" pattern="######"/>
								</c:otherwise>
							</c:choose>
                          </span>
                        </div>
                      </nav>
                </div>
                <div class="col text-start">
                    <nav class="navbar bg-body-tertiary py-0 px-3">
                        <div class="container-fluid">
                          <span class="navbar-text">
                            총가격
                          </span>
                          <span class="navbar-text total-price">
                          	<c:choose>
                          		<c:when test='${sail > 0}'>
                        			<fmt:formatNumber value="${ ( price - (price * quantity) / (100/sail) ) }" var="totalPrice" type="number" pattern="########" />
                        		</c:when>
                        		<c:otherwise>
                        			<fmt:formatNumber value="${ (price * quantity) }" var="totalPrice" type="number" pattern="########" />
                        		</c:otherwise>
                        	</c:choose>
                        	<c:choose>
                        		<c:when test='${totalPrice >= 100000 }'>
                        			${ totalPrice }
                        		</c:when>
                        		<c:otherwise>
                        			${ totalPrice + deliveryPrice }
                        		</c:otherwise>
                        	</c:choose>
                          </span>
                        </div>
                      </nav>
                </div>
                <div class="col text-end my-1">
                    <button type="button" class="btn btn-primary btn-lg btn-order">구매하기</button>
                    <button type="button" class="btn btn-secondary btn-lg btn-basket">장바구니</button>
                </div>
            </div>
            <h3 class="container my-5 mx-0 text-start">리뷰</h3>
            <div class="container w-100">
				<table class="table my-5 text-start">
		            <thead>
		                <tr>
		                    <th scope="col" style="width: 55%;">제목</th>
		                    <th scope="col" style="width: 11%;">작성자</th>
		                    <th scope="col" style="width: 11%;">별점</th>
		                    <th scope="col" style="width: 14%;">작성일</th>
		                </tr>
		            </thead>
		            <tbody>
		            	<c:forEach var="item" items="${inquirys}" varStatus="status">
		                <tr>
		                    <td class="title text-start">
		                        <a href="" style="display: block; width: 100%; height:100%;"
		                        data-bs-toggle="modal" data-bs-target="#targetModal${status.index}">${item.getTitle() }</a>
		                    </td>
		                    <td class="writer">${item.getUid() }</td>
		                    <td class="status">${item.getStatus() }</td>
		                    <td class="write-date">${item.getDate()}</td>
		                </tr>
		                </c:forEach>
		            </tbody>
	        	</table>
	        	<c:forEach var="temp" items="${inquirys}" varStatus="status">
	        		<div class="modal fade" id="targetModal${status.index}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	   					<div class="modal-dialog">
	       					<div class="modal-content">
	           					<div class="modal-header">
	               					<h1 class="modal-title fs-5" id="exampleModalLabel">${temp.getTitle() }</h1>
	               					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	          						</div>
	           					<div class="modal-body">
	               					...
	           					</div>
					            <div class="modal-footer">
					                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					                <button type="button" class="btn btn-primary">Save changes</button>
					            </div>
	       					</div>
	   					</div>
					</div>
	        	</c:forEach>
			</div>
        </div>
    </div>
    <jsp:include page="./modules/footer.jsp" />
</body>
<script>
	//상품 사이즈 클릭하면 동작한다
	$(document).on("click", ".dropdown-li", (e) => {
		clsName = $(e.target).attr('class');
		if(clsName != 'shoes-size' && clsName != 'shoes-quantity'){
			let size = e.target.children[0].innerText
			if(e.target.children[1].innerText === '품절'){
				alert("해당 상품은 품절입니다");
				return false;
			}
		    $(".submitBasket").val(size)
		    $(".submitBasket").text(size)
		}
	})
	$(document).on("click", ".shoes-size", (e) => {
		size = e.target.parentElement.children[0].innerText
		if(e.target.parentElement.children[1].innerText === '품절'){
			alert("해당 상품은 품절입니다")
			return false;
		}
		$(".submitBasket").val(size)
	    $(".submitBasket").text(size)
	})
	$(document).on("click", ".shoes-quantity", (e) => {
		size = e.target.parentElement.children[0].innerText
		if(e.target.parentElement.children[1].innerText === '품절'){
			alert("해당 상품은 품절입니다")
			return false;
		}
		$(".submitBasket").val(size)
	    $(".submitBasket").text(size)
	})
	
	
	//상품의 수량 추가/제거 기능
	const ELEMENT_QUANTITY = document.getElementsByClassName("quantity")[0];
	const TOTAL_PRICE = document.getElementsByClassName("total-price")[0];
	const SAIL = Number(document.getElementsByClassName("sail")[0].innerText.substring(0, 1));
	const DELIVERY_PRICE = document.getElementsByClassName("delivery-price");
	const PRODUCT_PRICE = Number(document.getElementsByClassName("product-price")[0].innerText);



	var url = window.location.href;
	var a = url.indexOf("?");
	var b =  url.substring(a);
	var c = url.replace(b,"");
	url = c;
	
	//ajax를 이용해서 장바구니에 넣기(실질적으로는 데이터베이스에 넣는거다.)
	$(".btn-basket").on("click", () => {
		
		//로그인 안되어있으면 빡구
		if(`<%= session.getAttribute("id")%>` == `null`){
			window.location.href=`${pageContext.request.contextPath}` + "/view/login"
			return;
		}
		if($('.submitBasket').val() == '-1'){
			alert("상품 사이즈를 선택하세요")
			return;
		}
		$.ajax({
			type:'GET',
			url: url+"/save",
			data: {
				id : `${product.getPid()}`,
				size : $('.submitBasket').attr('value'),
				quantity : Number(ELEMENT_QUANTITY.innerText)
			},
			success: function(result){
				console.log(result);
				if(result === 'true'){
					alert("장바구니에 추가했습니다");
					return;
				}else if(result === 'false'){
					alert("장바구니에 추가하지 못했습니다");
					return;
				}else{
					return;
				}
			}
		})
	})
	$(".btn-order").on("click", () => {
			$.ajax({
				type:'GET',
				url: '주문페이지로 이동',
				data: {id : ${product.getPid()} }, //바로 주문하는거면 클라이언트가 변경한 정보와 상품의 변하지 않는 정보를 같이 넘긴다.
				success: function(result){
					if(result === 'true'){
						return;
					}
					return;
				}
			})
		})
		
		//total price = ( (상품 단가 * 수량) / (100/할인률) ) + [ 배송비{0, 3000} ]
		
		
		$('.btn-add-quantity').on("click", () => {
			let quantity = Number(ELEMENT_QUANTITY.innerText);
			
			if(quantity < 10){
				ELEMENT_QUANTITY.innerText = quantity + 1;
				calcTotalPrice('add');
			}
		})
		$('.btn-remove-quantity').on("click", () => {
			let quantity = Number(ELEMENT_QUANTITY.innerText);
			
			if(quantity > 1){
				ELEMENT_QUANTITY.innerText = quantity - 1;
				calcTotalPrice('remove');
			}
		})
		
		let sail           = (SAIL * 0.01);
		let tempTotalPrice = 0;
		let totalPrice     = 0;
		function calcTotalPrice(oper){
			
			if(oper === 'add'){
				tempTotalPrice = (PRODUCT_PRICE * Number(ELEMENT_QUANTITY.innerText));
				totalPrice = tempTotalPrice - (tempTotalPrice * sail);
				TOTAL_PRICE.innerText = Math.floor(totalPrice);
			}else if(oper === 'remove'){
				totalPrice = tempTotalPrice - PRODUCT_PRICE;
				TOTAL_PRICE.innerText = Math.floor(totalPrice) - (totalPrice * sail);
				console.log((totalPrice * sail))
				tempTotalPrice = (PRODUCT_PRICE * Number(ELEMENT_QUANTITY.innerText));
			}
			
			
			if(Number(TOTAL_PRICE.innerText) < 100000){
		        DELIVERY_PRICE[0].innerText = 3000;
				TOTAL_PRICE.innerText = Number(TOTAL_PRICE.innerText) + 3000
			}else
				DELIVERY_PRICE[0].innerText = 0;
			
		}
		
		let count = 0;
	    function setCount(stat){
	        count = stat
	    }

	    let star = document.getElementsByClassName("star");

	    /*
	    for(let i = 0; i < ; i++){
	      star[i].className = 'star fa-solid fa-star clicked'
	    }
	    */
</script>
</html>