<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>리뷰작성</title>
	<style type="text/css">
		.star{
    color: white;
    text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
}
    .star-count{
        flex-grow: 1;
        box-sizing: border-box;
        display: flex;
        align-items: center;
        padding-left: 20px;
    }
        .star-count i{
            margin-right: 5px;
        }
        .clicked{
            color: yellow;
            text-shadow: none;
        }
	</style>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
		<div class="container w-75 px-0">
     		<h2 class="mx-0 my-3">리뷰 작성</h2>
     	</div>
        <form action="process/review" method="post" class="container text-center w-75 my-5 border">
            <div class="row my-3" >
 				<div class="col">
  					<input type="text" class="form-control" placeholder="제목" aria-label="title" required>
 				</div>
 				<div class="col">
    				<input type="text" class="form-control" placeholder="" aria-label="user_id" required>
  				</div>
			</div>
			<div class="container text-start border my-3">
				<div class="star-count my-1">
	                <input id="starRating" type="text" style="display:none;" name="starRating">
	                <i class="star fa-solid fa-star" style="font-size:20px;"></i>
	                <i class="star fa-solid fa-star" style="font-size:20px;"></i>
	                <i class="star fa-solid fa-star" style="font-size:20px;"></i>
	                <i class="star fa-solid fa-star" style="font-size:20px;"></i>
	                <i class="star fa-solid fa-star" style="font-size:20px;"></i>
            	</div>
			</div>
			<div class="container text-start my-3 py-3">
				<textarea class="form-control" style="resize: none; height: 150px;"></textarea>
			</div>
			<div class="container text-end my-5">
				<input type="submit" class="btn bg-info" value="작성하기">
				<input type="button" class="btn bg-warning" value="취소하기">
			</div>
        </form>
        
    <jsp:include page="./modules/footer.jsp" />
</body>

<script type="text/javascript">
let count = 0;
function setCount(stat){
    count = stat
}

let star = document.getElementsByClassName("star");
let rating = document.getElementById("starRating");

for(let i = 0; i < star.length; i++){

        let c = 0;
        //별을 클릭한 경우
        for (let j = 0; j < i + 1; j++) {
            star[j].className = 'star fa-solid fa-star clicked'
            setCount(i + 1);
            c = i + 1;
        }
        rating.value = c;
}
</script>

</html>