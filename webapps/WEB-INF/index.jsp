<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../common.jsp" />
<title>부산관광포탈 비짓부산</title>
</head>
<body>
<jsp:include page="../header.jsp" />
<jsp:include page="../footer.jsp" />
	<script>
	$(document).ready(function(){
		$.ajax({
			url:"${path }/MenuLoad.do",
			type:"post",
			enctype:"UTF-8",
			processData:false,
			contentType:"application/json",
			cache:false,
			success:function(obj){
				//console.log(obj);
				$(".navbar-dropdown.cate").empty();
				$(".ftcate").empty();
				$.each(obj, function(key, value){
					for (var i=0;i<value.length;i++){
						if(value[i].cateGroup == "여행"){
							$("#cate01").append("<a href='${path }/VisitListbyCateCode.do?cateCode="+value[i].cateCode+"' class='navbar-item'>"+value[i].cateName+"</a>");
							$("#cf01").append("<li><a href='${path }/VisitListbyCateCode.do?cateCode="+value[i].cateCode+"'>"+value[i].cateName+"</a></li>");	
						} else if(value[i].cateGroup == "공연"){
							$("#cate02").append("<a href='${path }/VisitListbyCateCode.do?cateCode="+value[i].cateCode+"' class='navbar-item'>"+value[i].cateName+"</a>");
							$("#cf02").append("<li><a href='${path }/VisitListbyCateCode.do?cateCode="+value[i].cateCode+"'>"+value[i].cateName+"</a></li>");
						} else if(value[i].cateGroup == "축제"){
							$("#cate03").append("<a href='${path }/VisitListbyCateCode.do?cateCode="+value[i].cateCode+"' class='navbar-item'>"+value[i].cateName+"</a>");
							$("#cf03").append("<li><a href='${path }/VisitListbyCateCode.do?cateCode="+value[i].cateCode+"'>"+value[i].cateName+"</a></li>");
						}
					}
				});
			}
		});
	});
	</script>
</body>
</html>