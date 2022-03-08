<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>hyejin shop</title>
<link rel="shortcut icon" type="image/x-icon" href="resources/img/title.png"/>
<link href="resources/css/mainpage.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function jj() {
		 location.href="/";
	}	
</script>
</head>
<body>
<header>
         <!-- navbar1 -->
<div id="second">
         <ul>
<c:if test="${member == null}">
	<li>
		<a href="/member/signin">로그인</a>
	</li>
	<li>
		<a href="/member/signup">회원가입</a>
	</li>
</c:if>
<c:if test="${member != null}">

<c:if test="${member.verify == 9}">
<li>
	<a href="/admin/index">관리자 화면</a>	
</li>	
</c:if>

	<li>
		${member.userName}님 환영합니다.
	</li>
	<li>
		<a href="/shop/cartList">카트 리스트</a>
	</li>
	<li>
		<a href="/shop/orderList">주문 리스트</a>
	</li>
	<li>
		<a href="/member/signout">로그아웃</a>
	</li>
</c:if>

</ul>
		</div>
</header> 
	 <!-- navbar2 -->
			<div id="logo_image">
				<img src="resources/img/title.png" onclick="jj()">
			</div>

<nav id="main_menu">
	<div class="box">
		<ul>
	<li><a href="/shop/list?c=100&l=1">아우터</a>
	<li><a href="/shop/list?c=200&l=1">상의</a></li>
	<li><a href="/shop/list?c=300&l=1">하의</a></li>
	<li><a href="/shop/list?c=400&l=1">악세사리</a></li>
</ul>
	</div>
</nav>
<!-- 슬라이드 쇼 -->
 <div class="slide">
 <img src="resources/img/one.png" id=mainImage alt="slide"/>
 <script>
	var myImage = document.getElementById("mainImage");
	var imageArray = [ "resources/img/one.png",
			"resources/img/two.png", "resources/img/three.png" ];
	var imageIndex = 0;

	function changeImage() {
		myImage.setAttribute("src", imageArray[imageIndex]);
		imageIndex++;
		if (imageIndex >= imageArray.length) {
			imageIndex = 0;
		}
	}
	setInterval(changeImage, 3000);
</script>
 </div>
<section id="content_box">
	<div class="box">
		<h3>NEW PRODUCT</h3>
		<div class="clear"></div>
		<ul class="items">
			<li> 
			<a href="/shop/view?n=29">
				<img src="resources/img/아우터4.png">
			</a>
			</li>
			<li>
			<a href="/shop/view?n=20">
				<img src="resources/img/상의1.png">
			</a>
			</li>
			<li>
			<a href="/shop/view?n=32">
				<img src="resources/img/하의4.png">
			</a>
			</li>
			<li>
			<a href="/shop/view?n=26">
				<img src="resources/img/악세사리4.jpg">
			</a>
			</li>	
			</ul>			
	</div>
	<div class="clear"></div>
</section>

<footer>
		<div class="footers">
			<h3>THE HYEJIN</h3>
			<ul>
			<li>사업자 등록번호 12345</li>
			<li>대표이사 강혜진 | 경기도 고양시 일산동구 12345</li>
			<li>전화 1234-1234 </li>
			</ul>
		</div>
		<div class="footers">
			<h3>고객센터</h3>
			<ul>
			<li>경기도 고양시 일산동구 12345</li>
			<li>전화 1234-1234</li>
			<li><span>1:1 문의 바로가기</span></li>
			</ul>
		</div>
		<div class="footers">
			<h3>전자금융거래 분쟁처리</h3>
			<ul>
			<li>전화 1234-1234</li>
			<li><span>1:1 문의 바로가기</span></li>
			</ul>	
			</div>
</footer>
</body>
</html>