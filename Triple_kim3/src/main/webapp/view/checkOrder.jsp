<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/checkOrder.css">
<title>주문확인페이지</title>
</head>
<body>
	<jsp:include page="./header.jsp" />
	<main>
        <div class="inner_main">
            <h2>주문확인</h2>
            <div class="content">
                <div class="inner_content"> <!-- flex -->
                    <div class="flex_left">
                        <nav>
                            <ul class="above">
                                <li>    
                                    <p class="active">주문확인</p>
                                    <a href="#" class="underline">주문확인하기</a>
                                </li>
                                <li>
                                    <p>내 리뷰</p>
                                    <a href="#">내 리뷰 조회하기</a>
                                </li>
                                <li>
                                    <p>내 문의</p>
                                    <a href="#">내 문의 조회하기</a>
                                </li>
                                <li>
                                    <p>회원 탈퇴</p>
                                    <a href="#">회원탈퇴하기</a>
                                </li>
                            </ul>
                            <div class="bottom">
                                <input type="submit" value="로그아웃">
                            </div>
                        </nav>
                    </div>
                    <div class="flex_right">
                        <form action="#">
                            <div class="search_date search">
                                <span>일자</span>
                                <input type="date" name="from"> -
                                <input type="date" name="to">
                            </div>
                            <div class="search_order search">
                                <span>주문번호</span>
                                <input type="text" name="orderNum" placeholder="주문번호">
                            </div>
                            <div class="search_addr search">
                                <span>배송지</span>
                                <input type="text" name="addr" placeholder="배송지">
                            </div>
                            <span class="flexForSubmit">
                                <input type="submit" value="검색하기" id="search">
                            </span>
                        </form>
                        <table class="order_historys">
                            <tr>
                                <th>주문번호</th>
                                <th>주문일자</th>
                                <th>배송지</th>
                                <th>주문자</th>
                                <th data-desc="border-bottom 맞추려고 만듦(건들지말것)"></th>
                            </tr>
                            <tr>
                                <td>10001000</td>
                                <td>23-58-34</td>
                                <td>인천광역시 작전동 쿵떡동</td>
                                <td>Budweiser</td>
                                <td>
                                    <a href="#" class="goOrder">상세정보</a>
                                </td>
                            </tr>
                            <tr>
                                <td>10001000</td>
                                <td>23-58-34</td>
                                <td>인천광역시 작전동 쿵떡동</td>
                                <td>Budweiser</td>
                                <td>
                                    <a href="#" class="goOrder">상세정보</a>
                                </td>
                            </tr>
                            <tr>
                                <td>10001000</td>
                                <td>23-58-34</td>
                                <td>인천광역시 작전동 쿵떡동</td>
                                <td>Budweiser</td>
                                <td>
                                    <a href="#" class="goOrder">상세정보</a>
                                </td>
                            </tr>
                            <tr>
                                <td>10001000</td>
                                <td>23-58-34</td>
                                <td>인천광역시 작전동 쿵떡동</td>
                                <td>Budweiser</td>
                                <td>
                                    <a href="#" class="goOrder">상세정보</a>
                                </td>
                            </tr>
                            <tr>
                                <td>10001000</td>
                                <td>23-58-34</td>
                                <td>인천광역시 작전동 쿵떡동</td>
                                <td>Budweiser</td>
                                <td>
                                    <a href="#" class="goOrder">상세정보</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>
</html>