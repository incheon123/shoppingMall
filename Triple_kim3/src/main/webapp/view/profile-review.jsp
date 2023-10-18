<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF_8">
<link rel="stylesheet" href="../css/profile-review.css">
<title>리뷰조회페이지</title>
</head>
<body>
	<jsp:include page="./header.jsp" />
	<main>
        <div class="inner_main">
            <h2>리뷰</h2>
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
                                    <p class="active">내 리뷰</p>
                                    <a href="#" class="underline">내 리뷰 조회하기</a>
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
                            <div class="search_review search">
                                <span>추천수</span>
                                <!---->
                                <select name="" id="" class="answerType">
                                    <option value="null">선택안함</option>
                                    <option value="success">높은순</option>
                                    <option value="wait">낮은순</option>
                                </select>
                            </div>
                            <div class="search_addr search">
                                <span>제목</span>
                                <input type="text" name="addr" placeholder="제목을 입력하세요">
                            </div>
                            <span class="flexForSubmit">
                                <input type="submit" value="검색하기" id="search">
                            </span>
                        </form>
                        <table class="order_historys">
                            <tr>
                                <th class="date">리뷰일자</th>
                                <th class="title">제목</th>
                                <th class="user">아이디</th>
                                <th class="recommend">추천수</th>
                                <th data-desc="border-bottom 맞추려고 만듦(건들지말것)"></th>
                            </tr>
                            <tr>
                                <td>23-10-14</td>
                                <td class="td-title">abcd efgufhdk fjdkfjkasdfasdfasdfasfsdf</td>
                                <td>Budweiser</td>
                                <td>355</td>
                                <td>
                                    <a href="#" class="detail">상세정보</a>
                                </td>
                            </tr>
                            <tr>
                                <td>23-10-14</td>
                                <td class="td-title">abcd efgufhdk fjdkfjkasdfasdfasdfasfsdf</td>
                                <td>Budweiser</td>
                                <td>355</td>
                                <td>
                                    <a href="#" class="detail">상세정보</a>
                                </td>
                            </tr>
                            <tr>
                                <td>23-10-14</td>
                                <td class="td-title">abcd efgufhdk fjdkfjkasdfasdfasdfasfsdf</td>
                                <td>Budweiser</td>
                                <td>355</td>
                                <td>
                                    <a href="#" class="detail">상세정보</a>
                                </td>
                            </tr>
                            <tr>
                                <td>23-10-14</td>
                                <td class="td-title">abcd efgufhdk fjdkfjkasdfasdfasdfasfsdf</td>
                                <td>Budweiser</td>
                                <td>355</td>
                                <td>
                                    <a href="#" class="detail">상세정보</a>
                                </td>
                            </tr>
                            <tr>
                                <td>23-10-14</td>
                                <td class="td-title">abcd efgufhdk fjdkfjkasdfasdfasdfasfsdf</td>
                                <td>Budweiser</td>
                                <td>355</td>
                                <td>
                                    <a href="#" class="detail">상세정보</a>
                                </td>
                            </tr>
                            <tr>
                                <td>23-10-14</td>
                                <td class="td-title">abcdefgufhdkfjdkfjkasdfasdfasdfsdfasdfasdfasdfasdfsdaasdfjkasdfgjklasfgsfgjklsfgjkasfgjklasfgasgs</td>
                                <td>Budweiser</td>
                                <td>355</td>
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
    <jsp:include page="./footer.jsp" />
</body>
</html>