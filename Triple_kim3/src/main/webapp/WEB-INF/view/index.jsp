<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
<title>Triple</title>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
	<!-- 추후에 스크립트 태그를 추가하세요 -->
	<main id="main">
        <section class="s1_product_img">
            <div class="s1_img">
                <a href="#">
                    <img src="../imgResource/space.jpg" alt="" class="s1s2img">
                </a>
            </div>
        </section>
        <section class="s2_product_img">
            <div class="s2_img">
                <a href="#">
                    <img src="../imgResource/space.jpg" alt="" class="s1s2img">
                </a>
            </div>
            <div class="s2_img">
                <a href="#">
                    <img src="../imgResource/space.jpg" alt="" class="s1s2img">
                </a>
            </div>
        </section>
        <section class="s3_section">	
        	<div class="s3_product_container">
                <div class="s3_product">
                    <a href="#" class="s3_link">
                        <img src="" alt="" class="s3_img">
                    </a>
                    <div class="product_info">
                        <h3 class="s3_content_pname">product_name</h3>
                        <p class="s3_price">63,000</p>
                    </div>
                </div>
                <div class="s3_product">
                    <a href="#" class="s3_link">
                        <img src="" alt="" class="s3_img">
                    </a>
                    <div class="product_info">
                        <h3 class="s3_content_pname">product_name</h3>
                        <p class="s3_price">63,000</p>
                    </div>
                </div>
                <div class="s3_product">
                    <a href="#" class="s3_link">
                        <img src="" alt="" class="s3_img">
                    </a>
                    <div class="product_info">
                        <h3 class="s3_content_pname">product_name</h3>
                        <p class="s3_price">63,000</p>
                    </div>
                </div>
                <div class="s3_product">
                    <a href="#" class="s3_link">
                        <img src="" alt="" class="s3_img">
                    </a>
                    <div class="product_info">
                        <h3 class="s3_content_pname">product_name</h3>
                        <p class="s3_price">63,000</p>
                    </div>
                </div>
                <div class="s3_product">
                    <a href="#" class="s3_link">
                        <img src="" alt="" class="s3_img">
                    </a>
                    <div class="product_info">
                        <h3 class="s3_content_pname">product_name</h3>
                        <p class="s3_price">63,000</p>
                    </div>
                </div>
                <div class="s3_product">
                    <a href="#" class="s3_link">
                        <img src="" alt="" class="s3_img">
                    </a>
                    <div class="product_info">
                        <h3 class="s3_content_pname">product_name</h3>
                        <p class="s3_price">63,000</p>
                    </div>
                </div>
                <div class="s3_product">
                    <a href="#" class="s3_link">
                        <img src="" alt="" class="s3_img">
                    </a>
                    <div class="product_info">
                        <h3 class="s3_content_pname">product_name</h3>
                        <p class="s3_price">63,000</p>
                    </div>
                </div>
			</div>
        </section>
    </main>
    <jsp:include page="./modules/footer.jsp" />
</body>
</html>