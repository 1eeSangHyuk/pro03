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
<title>Insert title here</title>
</head>
<body>
<%@ include file="../../header.jsp" %>
<h2>제품 등록하기</h2>
<p>${msg }</p>
<form action="${path }/InsertProductPro.do" method="post" enctype="multipart/form-data" onsubmit="onSubmit();">
	<table class="table">
		<tbody>
			<tr>
				<th><label for="catno">카테고리 번호</label></th>
				<td>
					대분류 : 
					<select id="cat1" name="cat1">
						<option value="">선택안함</option>
						<c:forEach items="${catListCat1 }" var="cat">
						<option value="${cat.cat1 }" onclick="">${cat.catgroup }</option>
						</c:forEach>	
					</select>
					소분류 : 
						<select id="catno" name="catno">	
					</select>
					<input type="hidden" id="cateCode" name="cateCode" maxlength="5" required="required" value="">
					<input type="button" value="cateCode 발급" onclick="cateCodeGen()">
					<br>
					<p id="msg"></p>
				</td>
			</tr>
			<tr>
				<th><label for="title">visitTitle</label></th>
				<td>
					<input type="text" id="title" name="title" maxlength="95" title="200자 이내로 작성해 주십시오."
					 placeholder="200자 이내로 작성해 주십시오." required="required">
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>
					<input type="text" id="address1" name="address1" placeholder="기본주소">
					<input type="text" id="address2" name="address2" placeholder="상세주소">
					<input type="text" id="postcode" name="postcode" placeholder="우편번호">
					<button type="button" onclick="findAddr()" class="btn btn-primary">우편번호 검색</button>
				</td>
			</tr>
			<tr>
				<th><label for="imgMain">첨부 파일</label></th>
				<td>
					<input type="file" name="imgMain" id="imgMain">
				</td>
			</tr>
			<tr>
				<th><label for="imgSub1">첨부 파일</label></th>
				<td>
					<input type="file" name="imgSub1" id="imgSub1">
				</td>
			</tr>
			<tr>
				<th><label for="imgSub2">첨부 파일</label></th>
				<td>
					<input type="file" name="imgSub2" id="imgSub2">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="visit 등록" class="btn btn-primary">
					<a href="javascript:history.go(-1)">뒤로가기</a>				
				</td>
			</tr>
		</tbody>
	</table>
</form>
<script>
	function onSubmit(){
		if($("#cateCode").value==""){
			alert("제품코드를 발급해주세요");
			$("#cateCode").focus();
		}
	}
	function cateCodeGen(){
		if ($("#cat1").value != "" && $("#catno").value != "") {
			var params = { catno:$("#catno").val() }
			$.ajax({
				url:"${path }/GetP_code.do",
				type:"post",
				dataType:"json",
				encType:"UTF-8",
				data:params,
				success:function(result){
					var getPcode = result.result;
					alert("cateCode : "+getPcode);
					$("#cateCode").val(getPcode);
				}
			})
		} else {
			alert("카테고리를 지정해 주세요.");
			$("#cat1").focus();
		}
	}
	$(document).ready(function(){
		$("#cat1").change(function(){
			if($("#cat1").val()==""){
				alert("대분류 카테고리를 선택해주세요.");
				$("#cat1").focus();
				return;
			} else {
				var params = { cat1:$("#cat1").val() }
				$.ajax({
					url:"${path }/GetCat2.do",
					type:"post",
					dataType:"json",
					encType:"UTF-8",
					data:params,
					success:function(result){
						console.log(result);
						$("#catno").empty();
						var catListCat2 = result.catListCat2;
						for(var c in catListCat2){
							$("#catno").append("<option value='"+catListCat2[c]["catno"]+"'>"+catListCat2[c]["catname"]+"</option>");
						}
					}
				})
			}
		})
	});
	function findAddr(){
		new daum.Postcode({
			oncomplete: function(data) {
				console.log(data);
				var roadAddr = data.roadAddress;
				var jibunAddr = data.jibunAddress;
				document.getElementById("postcode").value = data.zonecode;
				if(roadAddr !== '') {
					document.getElementById("address1").value = roadAddr;				
				} else if(jibunAddr !== ''){
					document.getElementById("address1").value = jibunAddr;
				}
				document.getElementById("address2").focus();
			}
		}).open();		
	}
	</script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<%@ include file="../../footer.jsp" %>
</body>
</html>