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
</head>
<body>
<h2>???</h2>
<div>
	<ul id="lst">
		<li>?????</li>
	</ul>
	<button type="button" id="regBtn">데이터 가져오기</button>
</div>
<script>
	$(document).ready(function(){
		var obj = { id:"아이디1", name:"이름1", resdate:"2023-05-18"}
		$("#lst").append("<li>아이디 : "+obj.id+"</li>");
		$("#lst").append("<li>이름 : "+obj.name+"</li>");
		$("#lst").append("<li>가입일 : "+obj.resdate+"</li>");
	});	
</script>
<script>
	$(document).ready(function(){
		var na = { m:"${path }"};
		$("#regBtn").click(function(){
			console.log(na.m);
			$.ajax({
				url:"${path }/JSONTest1.do",
				type:"post",
				dataType:"json",
				data:na,
				success:function(result){
					//console.log(result);
					$("#lst").append("<li>test1 : "+result.res+"</li>");
				}
			});
		});
	});
</script>
</body>
</html>