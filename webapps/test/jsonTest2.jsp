<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*, java.text.*, java.net.InetAddress" %>
<c:set var="path" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSONtest1</title>
<style>
</style>
<!-- jquery -->
<script
  src="https://code.jquery.com/jquery-3.6.4.js"
  integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
  crossorigin="anonymous">
</script>
<link rel="stylesheet" href="${path }/source/bulma.min.css">
</head>
<body>
<h2>???</h2>
<div>
	<ul id="lst">
		<li>?????</li>
	</ul>
	<input id="ip" class="input" type="text" placeholder="아이디 입력">
	<button type="button" id="regBtn" class="button">헤당 아이디 데이터 가져오기</button>
</div>
<script>
	$(document).ready(function(){
		$("#regBtn").click(function(){
			if($("#ip").val()==""){
				alert("아이디를 입력해주세요");
				$("#ip").focus();
			} else {
				var params = { name:$("#ip").val() };
				$.ajax({
					url:"${path }/JSONTest2.do",
					type:"post",
					dataType:"json",
					data:params,
					cache:false,
					success:function(obj){
						console.log(obj);
						$("#lst").empty();
						if(typeof obj.name!="undefined"){
							$("#lst").append("<li>name : "+obj.name+"</li>");
							$("#lst").append("<li>point : "+obj.point+"</li>");
							$("#lst").append("<li>resdate : "+obj.resdate+"</li>");	
						} else {
							$("#lst").append("<li>입력하신 아이디가 존재하지 않습니다.</li>");
						}
					}
				});	
			}
		});
	});
</script>
</body>
</html>