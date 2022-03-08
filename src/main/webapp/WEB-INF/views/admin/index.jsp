<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>관리자 화면</title>
	
<script src="/resources/jquery/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="/resources/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="/resources/bootstrap/bootstrap-theme.min.css">
<script src="/resources/bootstrap/bootstrap.min.js"></script>
	
<style>
a {
    color:#000;
    text-decoration: none;
}
	body { font-family:'맑은 고딕', verdana; padding:0; margin:0; }
	ul {margin:0; list-style:none;  }
 
	div#root { width:90%; margin:0 auto; }
	
	header#header { font-size:60px; padding:20px 0;}
	header#header h1 a { color:#000; font-size:2em; text-decoration: none;}
	
	nav#nav { padding:10px; text-align:right; }
	nav#nav ul li { display:inline-block; margin-left:10px; }
 
 		section#container { padding:20px 0; border-top:2px solid #eee; border-bottom:2px solid #eee; }
	section#container::after { content:""; display:block; clear:both; }
	aside { float:left; width:200px; }
	div#container_box { float:right; width:calc(100% - 200px - 20px); }
	
	aside ul li { text-align:center; margin-bottom:10px; display:inline-block; }
	aside ul li a { display:block; width:100%; padding:20px 0; text-aline:center;}
	aside ul li a:hover { background:#eee; }
	
	footer#footer { background:#f9f9f9; padding:20px; }
	footer#footer ul li { display:inline-block; margin-right:10px; } 
</style>
		 
</head>
<body>
<div id="root">
	<header id="header">
	<h1 class="title">
	<a href="/admin/index">관리자 화면</a>
</h1>
	</header>

	<nav id="nav">
		<div id="nav_box">
			<ul>
<c:if test="${member != null}">
	<li>
		<a href="/">THE HYEJIN 창으로</a>	
	</li>
</c:if>
</ul>
		</div>
	</nav>
	
	<section id="container">
		<aside>
			<ul>
	<li><a href="/admin/goods/register">PRODUCT REGISTER</a></li>
	<li><a href="/admin/goods/list">PRODUCT LIST</a></li>
	<li><a href="/admin/shop/orderList">ORDER LIST</a></li>
	<li><a href="/admin/shop/allReply">PRODUCT REPLY</a></li>
</ul>
		</aside>
		<div id="container_box">
			
		</div>
	</section>

	<footer id="footer">
		<div id="footer_box">
		</div>		
	</footer>

</div>
</body>
</html>
