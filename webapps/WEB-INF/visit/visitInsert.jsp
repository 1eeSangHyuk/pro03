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
<title>visit 등록하기</title>
</head>
<body>
<%@ include file="../../header.jsp" %>
<div class="container is-fullhd">
	<h2 class="title">visit 등록하기</h2>
	<form action="${path }/" method="post" enctype="multipart/form-data" onsubmit="onSubmit();">
	<!-- InsertProductPro.do -->
		<table class="table">
			<tbody>
				<tr>
					<th><label for="catno">카테고리 번호</label></th>
					<td>
						대분류 : 
						<select id="catGroup" name="catGroup">
							<option value="">선택안함</option>
							<c:forEach items="${cateList }" var="cat">
							<option value="${cat.cateGroup }" onclick="">${cat.cateGroup }</option>
							</c:forEach>	
						</select>
						소분류 : 
						<select id="catName" name="catName">
						
						</select>
						<input type="hidden" id="cateCode" name="cateCode" maxlength="5" required="required" value="">
						<br>
						<p id="msg"></p>
					</td>
				</tr>
				<tr>
					<th><label for="title">visitTitle</label></th>
					<td>
						<input type="text" id="title" name="title" maxlength="95" title="200자 이내로 작성해 주십시오."
						 placeholder="200자 이내로 작성해 주십시오." class="input" required="required">
					</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>
						<input type="text" id="address1" name="address1" placeholder="기본주소" class="input">
						<input type="text" id="address2" name="address2" placeholder="상세주소" class="input">
						<input type="text" id="postcode" name="postcode" placeholder="우편번호" class="input">
						<button type="button" onclick="findAddr()" class="button is-info">우편번호 검색</button>
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
						<input type="submit" value="visit 등록" class="button is-info">
						<a href="javascript:history.go(-1)" class="button is-danger">뒤로가기</a>				
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</div>
<script>
	function onSubmit(){
		if($("#cateCode").value==""){
			alert("제품코드를 발급해주세요");
			$("#catGroup").focus();
		}
		var selCatName = document.getElementById('catName');
		$("#catCode").val(selCatName.options[selCatName.selectedIndex].value);
		console.log(document.getElementById('catCode').value);
	}
	$(document).ready(function(){
		$("#catGroup").change(function(){
			if($("#catGroup").val()==""){
				alert("대분류 카테고리를 선택해주세요.");
				$("#catGroup").focus();
				return;
			} else {
				var params = { catGroup:$("#catGroup").val() }
				$.ajax({
					url:"${path }/CateListbyCateGroup.do",
					type:"post",
					dataType:"json",
					encType:"UTF-8",
					data:params,
					success:function(result){
						//console.log(result);
						$("#catName").empty();
						var cateList = result.result;
						for(var c in cateList){
							//console.log(cateList[c]["cateCode"]);
							$("#catName").append("<option value='"+cateList[c]["cateCode"]+"'>"+cateList[c]["cateName"]+"</option>");
						}
					}
				});
			}
		});
 		$("#catName").change(function(){
 			var selCatName = document.getElementById('catName');
 			//console.log(selCatName.options[selCatName.selectedIndex].value);
 			catCode1 = selCatName.options[selCatName.selectedIndex].value;
 			//console.log(catCode1);
 			$("#catCode").val(catCode1);
 			console.log($("#catCode").val());
 			//$("#catCode").val(selCatName.options[selCatName.selectedIndex].value);
 			//console.log(document.getElementById('catCode').value);
			/* //console.log(document.getElementById("catName").value);
			var catCode = document.getElementById("catName").value;
			//console.log(catCode);
			$("#catCode").val(catCode);
			console.log(document.getElementById("catCode").value); */
		}); 
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