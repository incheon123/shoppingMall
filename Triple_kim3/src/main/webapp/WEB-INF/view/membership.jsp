<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/membership.css">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<title>회원가입</title>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
	<div class="container w-50">
    <form action="${pageContext.request.contextPath }/create/account" method="POST" class="form w-75">
        <div class="mycontainer">
            <label for="validationCustom01" class="form-label mb-0">아이디</label>
            <div class="container id mybox">
                <input type="text" name="id" class="user_id form-control" placeholder="id" required>
                <a href="#" id="check_duplicate" class="btn bg-info">중복확인</a>
            </div>
        </div>
        <div class="invalid-feedback d-block">
        </div>
        <a href="#" id="rwd_check_duplicate">중복확인</a>
        <div class="mycontainer">
            <label for="validationCustom01" class="form-label mb-0">비밀번호</label>
            <div class="container pw mybox">
                <input type="password" name="pw" class="user_pw form-control" placeholder="pw" required>
            </div>
        </div>
        <div class="invalid-feedback d-block">
        </div>
        <div class="mycontainer">
            <label for="validationCustom01" class="form-label mb-0">이름</label>
            <div class="container name mybox">
                <input type="text" name="name" class="user_name form-control" placeholder="name" required>
            </div>
        </div>
        <div class="invalid-feedback d-block">
        </div>
        <div class="mycontainer input-group">
            <label for="validationCustom01" class="form-label mb-0">이메일</label>
            <div class="container email mybox">
                <input type="text" name="email" class="form-control" placeholder="email" aria-label="email">
			  	<span class="input-group-text">@</span>
		  		<input type="text" name="server" class="form-control" placeholder="domain" aria-label="domain">
            </div>
        </div>
        <div class="invalid-feedback d-block">
        </div>
<!--         <div class="rwd-container"> -->
<!--             <div class="domain mybox"> -->
<!--                 <label for="validationCustom01" class="form-label mb-0">이메일</label> -->
<!--             	<div class="container email mybox"> -->
<!-- 	                <input type="text" name="email" class="form-control" placeholder="email" aria-label="email"> -->
<!-- 				  	<span class="input-group-text">@</span> -->
<!-- 			  		<input type="text" name="server" class="form-control" placeholder="domain" aria-label="domain"> -->
<!--             	</div> -->
<!--             </div> -->
<!--         </div> -->
        <div class="mycontainer">
            <label for="validationCustom01" class="form-label mb-0">휴대전화</label>
            <div class="container tel ">
                <input type="text" name="ptel1" class="user_tel form-control" value="010" maxlength="3" readonly>
                <span style="background-color: rgb(151, 151, 151); width: 30px; height: 2.5px;"></span>
                <input type="text" name="ptel2" class="user_tel form-control" maxlength="4" required>
                <span style="background-color: rgb(151, 151, 151); width: 30px; height: 2.5px;"></span>
                <input type="text" name="ptel3" class="user_tel form-control" maxlength="4" required>
            </div>
        </div>
        <div class="invalid-feedback d-block">
        </div>
        <div class="mycontainer">
            <label for="validationCustom01" class="form-label mb-0">집전화</label>
            <div class="container tel">
                <select name="htel1" class="user_tel form-select text-center" required>
                    <option value="02">02</option>
                    <option value="032">032</option>
                    <option value="021">021</option>
                </select>
                <span style="background-color: rgb(151, 151, 151); width: 30px; height: 2.5px;"></span>
                <input type="text" name="htel2" class="user_tel form-control" maxlength="4">
                <span style="background-color: rgb(151, 151, 151); width: 30px; height: 2.5px;"></span>
                <input type="text" name="htel3" class="user_tel form-control" maxlength="4">
            </div>
        </div>
        <div class="mycontainer">
            <label for="validationCustom01" class="form-label mb-0">주소</label>
            <div class="container addr1 mybox">
                <input type="text" name="addr1" class="user_addr form-control" placeholder="기본주소" required>
            </div>
            <div class="container addr2 mybox">
                <input type="text" name="addr2" class="user_addr form-control" placeholder="상세주소" required>
            </div>
        </div>
        <div class="container my-4">
            <input type="radio" name="gender" value="man" class="form-check-input">
            <label class="form-check-label" for="flexRadioDefault1">
			    남성
		  	</label>
            <input type="radio" name="gender" value="woman" class="form-check-input">
            <label class="form-check-label" for="flexRadioDefault1">
			    여성
		  	</label>
        </div>
        <div class="mycontainer">
            <label for="validationCustom01" class="form-label mb-0">생년월일</label>
            <div class="container mybox">
                <input type="date" name="birth" class="user_birth form-control">
            </div>
        </div>
        <div class="mycontainer">
            <div class="container">
                <input type="submit" class="btn bg-info w-100" value="가입하기" >
            </div>
        </div>
    </form>
    </div>
    <jsp:include page="./modules/footer.jsp" />
</body>
<script>

let idDuplicateChk = false;
$("input[type=submit]").click(function(){
	if(!idCheckValidate($('.user_id'))) return false;
	if(!pwCheckValidate($(".user_pw"))) return false;
	if(!idDuplicateChk){
		alert("아이디 중복 체크하세요")
		return false;
	}
	if(emailCheckValidate($(".user_email"))) return false;
	if(ptelCheckValidate($(".user_ptel1"), $(".user_ptel2"))) return false;
	if(htelCheckValidate($(".user_htel1"), $(".user_htel2"))) return false;
	$(".form").submit();
})

function pwCheckValidate(pw){
	if(pw.val().length < 8){
		alert("비밀번호는 8자 이상입니다");
		pw.val('')
		pw.focus();
		return false;
	}
	return true;
}
function emailCheckValidate(email){
	var special_pattern = /[^\w\sㄱ-힣()0-9]/g;
	if(special_pattern.test(email.val()) == true){
	    alert('이메일에는 특수문자를 제외한 문자만 입력해주세요');
	    return false;
	}
	return true;
}
function ptelCheckValidate(p1, p2){
	if(p1.val().length != 4 && p2.val().length != 4){
		alert("전화번호 형식에 맞춰주세요");
		p1.focus();
		return false;
	}
	
	var special_pattern = /^[0-9]*$/;
	if(special_pattern.test(p1.val()) == false && special_pattern.test(p2.val()) == false){
	    alert('전화번호 형식에 맞춰주세요');
	    p1.focus();
	    return false;
	}
	return true;
}
function htelCheckValidate(h1, h2){
	if(h1.val().length != 3 && h2.val().length != 4){
		alert("전화번호 형식에 맞춰주세요");
		h1.focus();
		return false;
	}
	
	var special_pattern = /^[0-9]*$/;
	if(special_pattern.test(h1.val()) == false && special_pattern.test(h2.val()) == false){
	    alert('전화번호 형식에 맞춰주세요');
	    h1.focus();
	    return false;
	}
	return true;
}
$("#check_duplicate").click(function(){
	
	
	/*
		아이디 중복 체크 비동기방식으로 진행 => ajax
	*/
	if(checkValidate()){
		$.ajax({
			type:'GET',
			url: '/Triple_kim3/view/check/duplicate',
			data: {id : $(".user_id").val() },
			success: function(result){
				if(result === 'true'){
					alert("아이디가 중복됩니다");
					idDuplicateChk = false;
					$('.user_id').val('');
					return;
				}
				alert("사용가능한 아이디입니다");
				idDuplicateChk = true;
				return;
			}
		})
	}
});

function checkValidate(){
	return idCheckValidate($('.user_id'));
	
}
function idCheckValidate(id){
	if(id.val() === ''){
		alert('아이디는 공백이 될 수 없습니다');
		id.focus();
		return false;
	}
	if((id.val()).length < 8){
		alert('아이디는 8자리 이상입니다');
		return false;
	}
	idDuplicateChk = true
	return true 
}

</script>
</html>