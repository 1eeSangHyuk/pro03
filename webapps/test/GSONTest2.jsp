<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="net.visitbusan.test.Sample" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GSONTest2</title>
</head>
<body>
<div class="container">
<%
	Sample sam = new Sample();

	sam.setItem1("kangseulgi");
	sam.setItem2(80);
	sam.setItem3("2023-05-18");

	Gson gson = new Gson();
	
	String json = gson.toJson(sam);  //DTO 객체를 json 객체로 변경하기
	out.println("<h2>DTO객체를 JSON 요소로 변경된 데이터 출력</h2>");
	out.println(json + "<br>");
	
	Sample dto2 = gson.fromJson(json, Sample.class);	//json 객체를 배열요소로 변경하기
	out.println("<h2>JSON 요소를 DTO 객체로 변경된 데이터 출력</h2>");
	out.print(dto2.toString());
%>
</div>
</body>
</html>