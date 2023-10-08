<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/index.css">
<title>메인페이지</title>
</head>
<body>
	<jsp:include page="header.jsp" flush="false" />
	<main id="main">
        <section class="s1_product_img">
            <div class="s1_img">
                
            </div>
        </section>
        <section class="s2_product_img">
            <div class="s2_img">
            </div>
            <div class="s2_img">

            </div>
        </section>
        <section>	
        	<div class="s3_product_container">
			</div>
        </section>
    </main>
    <jsp:include page="Footer.jsp" flush="false" />
    <script src="../js/index.js"></script>
</body>
</html>