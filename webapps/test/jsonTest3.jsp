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
<title>JSONtest3</title>
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
		$("#regBtn").click(function(){
			$.ajax({
				url:"${path }/JSONTest3.do",
				type:"post",
				enctype:"UTF-8",
				processData:false,
				cache:false,
				contentType:"application/json",
				success:function(data){
					//console.log(data)
					$("#lst").empty();
					$.each(data, function(key, value){
						for (var i=0;i<value.length;i++){
							//console.log(value[i].item1);
							$("#lst").append("<li>"+value[i].item1+"</li>");
							$("#lst").append("<li>"+value[i].item2+"</li>");
							$("#lst").append("<li>"+value[i].item3+"</li>");
							$("#lst").append("<br>");
						}
					});
				}
			});
		});
	});
</script>
</body>
</html>