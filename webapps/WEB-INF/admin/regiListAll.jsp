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
<%@ include file="../../common.jsp" %>
<title>RegiCtrl</title>
</head>
<body>
<%@ include file="../../header.jsp" %>
<div class="container is-fullhd">
	<h2 class="title">회원 전체 RegiCtrl</h2>
	<table class="table">
		<thead>
			<tr>
				<th>연번</th>
				<th>registeredBy</th>
				<th>visitTitle</th>
				<th>visitAddr</th>
				<th>regDate</th>
				<th>tourDate</th>
				<th colspan="2">rStatus</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${empty regiVOList }">
				<h3 title="subtitle">아직 회원들에 의한 여행상품신청이 없습니다.</h3>
			</c:if>
			<c:if test="${!empty regiVOList }">
			<c:forEach var="list" items="${regiVOList }" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${list.registeredBy }</td>
				<td>${list.visitTitle }</td>
				<td>${list.visitAddr }</td>
				<td>${list.regDate }</td>
				<td>${list.tourDate }</td>
				<td>${list.rStatus }</td>
				<td>
					<a href="${path }/RegiUpdateRstatus.do?regId=${list.regId }" class="button is-info">status 변경</a>
					<a href="${path }/RegiDeletePro.do?regId=${list.regId }" class="button is-danger">신청 삭제</a>
				</td>
			</tr>
			</c:forEach>
			</c:if>
		</tbody>
	</table>
	<div>
		<a href="${path }/" class="button is-info">홈으로</a>
		<a href="javascript:history.go(-1)" class="button is-danger">뒤로가기</a>
	</div>
</div>
<%@ include file="../../footer.jsp" %>
</body>
</html>