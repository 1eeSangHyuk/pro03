<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*, java.text.*, java.net.InetAddress" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../common.jsp" />
<title>detail</title>
<style>
</style>
</head>
<body>
<jsp:include page="../header.jsp" />
<div class="container is-fullhd">
	<!--  -->
	<section class="section is-medium" style="text-align:center;">
	  <h1 class="title" style="margin-bottom: 40px; ">${visit.visitTitle }</h1>
	</section>
	
	<section class="section is-medium" style="text-align:center;">
	  <img src="" alt="">
	</section>
	
	<div>
		<button type="button" onclick="likeCheck()" class="button">좋아요</button>
		<button type="button" onclick="pokeCheck()" class="button is-info">찜하기</button>
	</div>
	
	<!--  -->
	<div class="tabs is-centered">
	  <ul>
	    <li class="is-active"><a id="detail-one">상세정보</a></li>
	    <li><a id="detail-two">지도</a></li>
	    <li><a id="detail-three">리뷰</a></li>
	  </ul>
	</div>
	<div id="change">
		<!-- 상세 -->
		<!-- 지도 -->
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d576.6312671258473!2d129.1603894730315!3d35.15863995590328!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35688d5c0efe075f%3A0x9963b1d5c163ac98!2z7ZW07Jq064yA7ZW07IiY7JqV7J6l!5e0!3m2!1sko!2skr!4v1684989078648!5m2!1sko!2skr" width="900" height="650" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
		<!-- 리뷰 -->
	</div>
</div>
<jsp:include page="../footer.jsp" />
<script>
	function pokecheck(){
		$.ajax({
			
		});
	}
</script>
</body>
</html>