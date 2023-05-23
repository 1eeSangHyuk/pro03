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
<jsp:include page="${page }/common.jsp" />
<title>찜 목록</title>
</head>
<body>
<jsp:include page="${page }/header.jsp" />
<div class="container is-fullhd">
	<table class="table">
		<thead>
			<tr>
				<th>연번</th>
				<th>visitTitle</th>
				<th>visitAddr</th>
				<th colspan="2">regDate</th>
			</tr>
		</thead>
		<tbody>
			<%-- <c:forEach var="" items="" varStatus="status"> --%>
			<tr>
				<td>${status.count }</td>
				<td></td>
				<td></td>
				<td></td>
				<td>
					<a href="DeletePoke">찜 목록에서 제거</a>
					<a href="InsertRegi">신청하기</a>
				</td>
			</tr>
			<%-- </c:forEach> --%>
		</tbody>
	</table>
</div>
<jsp:include page="${page }/footer.jsp" />
</body>
</html>