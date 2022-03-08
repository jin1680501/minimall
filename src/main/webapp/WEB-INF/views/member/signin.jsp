<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>hyejin shop</title>
<link rel="shortcut icon" type="image/x-icon" href="/resources/img/title.png"/>
<link href="/resources/css/mainpage.css" rel="stylesheet" type="text/css">
<link href="/resources/css/shop.css" rel="stylesheet" type="text/css">
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
	<li><a href="/member/signin">로그인</a></li>
	<li><a href="/member/signup">회원가입</a></li>
</c:if>
<c:if test="${member != null}">
<c:if test="${member.verify == 9}">
<li><a href="/admin/index">관리자 화면</a>	</li>	
</c:if>
	<li>${member.userName}님 환영합니다.</li>
	<li><a href="/shop/cartList">카트 리스트</a></li>
	<li><a href="/shop/orderList">주문 리스트</a></li>
	<li><a href="/member/signout">로그아웃</a></li>
</c:if>
</ul>
		</div>
</header> 
	 <!-- navbar2 -->
			<div id="logo_image">
				<img src="/resources/img/title.png" onclick="jj()">
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
	
<section id="login">
	 <form id="login-form" method="post" autocomplete="off">
			<label class="legend">아이디</label>
			<input type="email" id="userId" name="userId" required="required"/>						
			<label class="legend">패스워드</label>
			<input type="password" id="userPass" name="userPass" required="required"  />								
		<button type="submit" id="signin_btn" name="signin_btn">로그인</button>
		
		<c:if test="${msg == false}">
			<p style="color:#f00;">로그인에 실패했습니다.</p>
		</c:if>
	</form>			
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