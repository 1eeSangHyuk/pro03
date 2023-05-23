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
<%@ include file="../common.jsp" %>
<title>visitListbyCateCode</title>
<style>
a:link {
  color : black;
}
a:visited {
  color : black;
}
a:hover {
  color : black;
}
a:active {
  color : black;
}
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<section class="section is-medium" style="background: url(https://www.visitbusan.net/upload_data/popup/info/163903982942637.jpg); background-position-y: 65%;">
  <h1 class="title" style="text-align: center; color:#fff;">테마여행</h1>
  <h2 class="subtitle"></h2>
</section>
<div class="container is-fullhd">
  <div class="tile is-ancestor">
    <div class="tile is-parent">
      <div class="card">
	    <div class="card-image">
	      <figure class="image is-16by9">
	    	<a href="">
	      		<img src="https://bulma.io/images/placeholders/640x360.png" alt="Placeholder image">
	      	</a>
	      </figure>
	    </div> 			
	    <div class="card-content">
	      <div class="content" style="text-align:center;">
		    <a href="">세계적인 관광도시 부산 5대 매력.</a>
	        <br>
	                 조회수 좋아요
	    </div>
	    </div>
	  </div>
    </div>
    <div class="tile is-parent">
    </div>
    <div class="tile is-parent">
    </div>
    <div class="tile is-parent">
    </div>
  </div>
  </div>
	<%-- <c:forEach var="visit" items="" > --%>
	
	<%-- </c:forEach>
	<c:if test="">
		<h3>현재 헤당하는 여행상품이 존재하지 않습니다.</h3>
	</c:if> --%>

<%@ include file="../footer.jsp" %>
</body>
</html>