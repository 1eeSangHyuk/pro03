<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="common_path" value="${pageContext.request.contextPath }" />

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- 문서정보 등록 -->
<meta name="subject" content="">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="LSH">

<!-- Favicon 설정 -->
<link rel="shortcut Icon" href="">

<!-- 오픈그래프 설정 -->
<meta name="og:site_name" content="">
<meta name="og:title" content="">
<meta name="og:description" content="">
<meta name="og:url" content="">
<meta name="og:image" content="">

<!-- 폰트 설정 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Poppins:wght@900&display=swap" rel="stylesheet">

<!-- css 초기화 -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" rel="stylesheet">

<!-- jquery -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  
<!-- bulma -->
<link rel="stylesheet" href="${common_path }/source/bulma.css">
<style>
	#ftBox1, #ftBox2 {box-shadow: unset; padding: 1.5rem; background-color: #ffffff00;}
	#ft1 {padding: 3rem 1.5rem 3rem; background: url("${common_path }/img/index/footer_up.png"); }
	#ft1 .title {color: #fff;}
	#ft1 a {color:#fff;}
	#ft2 {padding: 3rem 1.5rem 3rem; background-color: #2c323a;}
	#ft2 .title, p {color: #fff;}
	#ft2img1 {padding-top: 20.76px;}
	#ft2img2 {padding-top: 34.53px;}
	#ft2img3 {padding-top: 19.83px;}
	#ft2img4 {padding-top: 39.54px;}
	.tile > a:hover {color:#fff;}
</style>