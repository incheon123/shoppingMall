<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../css/reviewDetail.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/1c9b8c0219.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="./header.jsp" />
	<div class="container">
        <div class="title box"> <!-- 첫번째 박스-->
            this is title
        </div>
        <div class="star-user box">
            <div class="star-count">
                <input id="starRating" type="text" style="display:none;" name="starRating" value="">
                <i class="star fa-solid fa-star"></i>
                <i class="star fa-solid fa-star"></i>
                <i class="star fa-solid fa-star"></i>
                <i class="star fa-solid fa-star"></i>
                <i class="star fa-solid fa-star"></i>
            </div>
            <div class="user">opportunity13</div>
        </div>
        <div class="description box">
            <div class="textarea">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius non animi necessitatibus deserunt vero at repellat natus dolorem. Beatae
            </div>
        </div>
        <!-- 좋아요 기능 추가하기 -->
    </div>
    <jsp:include page="./footer.jsp" />
</body>
<script>

    // form submit하면 
    let count = 0;
    function setCount(stat){
        count = stat
    }

    let star = document.getElementsByClassName("star");
    for(let i = 0; i < star.length; i++){

        star[i].addEventListener("click", () => {
            const ORIGINAL_CLASSNAME = star[i].className;


            for(let k = 0; k < 5; k++){
                star[k].className = 'star fa-solid fa-star';
                setCount(0)
            }

            //별을 클릭한 경우
            for (let j = 0; j < i + 1; j++) {
                star[j].className = 'star fa-solid fa-star clicked'
                setCount(i + 1);
            }
        })
    }
</script>
</html>