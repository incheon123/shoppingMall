<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/profile-inquiry.css">
<title>문의조회페이지</title>
</head>
<body>
	<jsp:include page="../component/header.jsp" />
	<main>
        <div class="inner_main">
            <h2>문의</h2>
            <div class="content">
                <div class="inner_content"> <!-- flex -->
                    <div class="flex_left">
                        <nav>
                            <ul class="above">
                                <li>    
                                    <p>주문확인</p>
                                    <a href="#">주문확인하기</a>
                                </li>
                                <li>
                                    <p>내 리뷰</p>
                                    <a href="#">내 리뷰 조회하기</a>
                                </li>
                                <li>
                                    <p class="active">내 문의</p>
                                    <a href="#"  class="underline">내 문의 조회하기</a>
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
                            <div class="search_answerType search">
                                <span>답변상태</span>
                                <!---->
                                <select name="" id="" class="answerType">
                                    <option value="null">선택안함</option>
                                    <option value="success">답변완료</option>
                                    <option value="wait">대기중</option>
                                </select>
                            </div>
                            <div class="search_title search">
                                <span>제목</span>
                                <input type="text" name="addr" placeholder="제목을 입력하세요">
                            </div>
                            <span class="flexForSubmit">
                                <input type="submit" value="검색하기" id="search">
                            </span>
                        </form>
                        <table class="order_historys">
                            <tr>
                                <th class="date">문의일자</th>
                                <th class="title">제목</th>
                                <th class="user">아이디</th>
                                <th class="recommend">답변상태</th>
                                <th data-desc="border-bottom 맞추려고 만듦(건들지말것)"></th>
                            </tr>
                            <tr class="row">
                                <td>23-10-19</td>
                                <td class="td-title">계정관련문의입니다 해결좀ㅃ르게해주세요</td>
                                <td>Budweiser</td>
                                <td>답변완료</td>
                                <td>
                                    <a href="#" class="detail">상세정보</a>
                                </td>
                            </tr>
                            <tr class="row">
                                <td>23-10-12</td>
                                <td class="td-title">계정관련문의입니다 해결좀ㅃ르게해주세요</td>
                                <td>Budweiser</td>
                                <td>답변완료</td>
                                <td>
                                    <a href="#" class="detail">상세정보</a>
                                </td>
                            </tr>
                            <tr class="row">
                                <td>23-10-24</td>
                                <td class="td-title">계정관련문의입니다 해결좀ㅃ르게해주세요</td>
                                <td>Budweiser</td>
                                <td>답변완료</td>
                                <td>
                                    <a href="#" class="detail">상세정보</a>
                                </td>
                            </tr>
                            <tr class="row">
                                <td>23-10-14</td>
                                <td class="td-title">abcd efgufhdk fjdkfjkasdfasdfasdfasfsdf</td>
                                <td>Budweiser</td>
                                <td>대기중</td>
                                <td>
                                    <a href="#" class="detail">상세정보</a>
                                </td>
                            </tr>
                            <tr class="row">
                                <td>23-10-14</td>
                                <td class="td-title">abcd efgufhdk fjdkfjkasdfasdfasdfasfsdf</td>
                                <td>Budweiser</td>
                                <td>대기중</td>
                                <td>
                                    <a href="#" class="detail">상세정보</a>
                                </td>
                            </tr>
                            <tr class="row">
                                <td>23-10-14</td>
                                <td class="td-title">abcdefgufhdkfjdkfjkasdfasdfasdfsdfasdfasdfasdfasdfsdaasdfjkasdfgjklasfgsfgjklsfgjkasfgjklasfgasgs</td>
                                <td>Budweiser</td>
                                <td>대기중</td>
                                <td>
                                    <a href="#" class="detail">상세정보</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <jsp:include page="../component/footer.jsp" />
</body>
</html>