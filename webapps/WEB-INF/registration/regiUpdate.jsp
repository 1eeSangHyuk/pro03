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
<jsp:include page="${path }/common.jsp" />
<title>Insert title here</title>
</head>
<body>
<jsp:include page="${path }/header.jsp" />
<div class="container is-fullhd">
	<!--  -->
	<section class="section is-medium" style="text-align:center;">
	  <h1 class="title" style="margin-bottom: 40px; ">visitTitle</h1>
	</section>
	<!--  -->
	<section class="section is-medium" style="background: url(https://www.visitbusan.net/upload_data/popup/info/163903982942637.jpg); background-position-y: 65%;">
	</section>
	<!--  -->
<!-- 	<div class="tabs is-centered">
	  <ul>
	    <li class="is-active"><a>상세정보</a></li>
	    <li><a>지도</a></li>
	    <li><a>리뷰</a></li>
	  </ul>
	</div> -->
	<h2>regInsert</h2>
	<form action="" method="post">
		<table class="table">
			<tbody>
				<tr>
					<th>visitTitle</th>
					<td>
						${list.visitTitle }
						<input type="hidden" id="registeredBy" name="registeredBy" value="${uid }">
						<input type="hidden" id="visitId" name="visitId" value="">
					</td>
				<tr>
					<th>regDate</th>
					<td><input type="date" id="regDate" name="regDate"></td>
				</tr>
			</tbody>
		</table>
	</form>
	<div>
		<input type="submit" value="visit 수정하기">
		<a href="javascript:history.go(-1)" class="btn btn-primary">뒤로가기</a>
	</div>
</div>
<jsp:include page="${path }/footer.jsp" />
</body>
</html>