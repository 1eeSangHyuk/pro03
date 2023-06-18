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
<jsp:include page="../common.jsp" />
<title>detail</title>
<style>
#container { text-align: center;}
</style>
</head>
<body>
<jsp:include page="../header.jsp" />
<div class="container is-fullhd">
	<!--  -->
	<section class="section" style="text-align:center;">
	  <h1 class="title" style="margin-bottom: 40px; ">${visit.visitTitle }</h1>
	  <img src="${path }/visit/${visit.visitImgMain }" alt="main">
	</section>
<!-- 	
	<section class="section is-medium" style="text-align:center;">
	  
	</section> -->
	
	<div>
		<button type="button" id="like" class="button is-info" onClick="likeCtrl()" value=""></button>
		<button type="button" id="poke" class="button is-info" onClick="pokeCtrl()" value=""></button>
	</div>
	
	<!--  -->
	<div class="tabs is-centered">
	  <ul>
	    <li id="detail" class="is-active"><a onClick="switchDetail()">상세정보</a></li>
	    <li id="map"><a onClick="switchMap()">지도</a></li>
	    <li id="review"><a onClick="switchReview()">리뷰</a></li>
	  </ul>
	</div>
	<div id="container">
		<!-- 상세 -->
		<div id="detail-content">
			<c:if test="${!empty visit.visitImgSub1 }">
				<img src="${path }/visit/${visit.visitImgSub1 }" alt="sub1">
			</c:if>
			<br>
			<c:if test="${!empty visit.visitText }">
				<span>${visit.visitText }</span>
			</c:if>
		</div>
		<!-- 지도 -->
		<div id="map-content" class="is-hidden">
			<iframe src="${visit.visitMapLink }" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
		</div>
		
		<!-- 리뷰 -->
		<div id="review-content" class="is-hidden">
			<c:forEach var="review" items="${reviewList }">
				<article class="media">
				  <div class="media-content">
				    <div class="content">
				      <p style="color:black;">
			      		<c:if test="${review.point eq 5 }"><strong>★★★★★</strong></c:if>
			      		<c:if test="${review.point eq 4 }"><strong>★★★★</strong></c:if>
			      		<c:if test="${review.point eq 3 }"><strong>★★★</strong></c:if>
			      		<c:if test="${review.point eq 2 }"><strong>★★</strong></c:if>
			      		<c:if test="${review.point eq 1 }"><strong>★</strong></c:if>
			      		<br>
				        <strong>${review.reviewedBy }</strong>&nbsp;&nbsp;<small>${review.reviewedAt }</small>
				        <br>
				        ${review.reviewContent }
				      </p>
				      <figure class="image is-128x128">
					    <img src="${path }/" alt="review_pic">
					  </figure>
				    </div>
				  </div>
				  <c:if test="${sid eq review.reviewedBy }">
			      <div class="media-right">
			        <a href="${path }/ReviewDeletePro.do?reviewId=${review.reviewId }">삭제하기</a><br>
			        <a href="${path }//ReviewUpdate.do?reviewId=${review.reviewId }">수정하기</a>
			      </div>
			      </c:if>
				</article>
				<hr>
			</c:forEach>
			<c:if test="${empty reviewList }">
				<h2 class="subtitle">현재 헤당상품에 대한 리뷰가 존재하지 않습니다.</h2>
			</c:if>
			<c:if test="${reviewQ.equals('y') }">
			<form action="${path }/ReviewInsertPro.do" method="post" enctype="multipart/form-data">
				<article class="media">
				  <div class="media-content">
				    <div class="field">
				      <input class="input" type="text" placeholder="후기 제목을 입력해주세요..." id="reviewTitle" name="reviewTitle">
				      <input type="hidden" id="reviewedBy" name="reviewedBy" value="${sid }">
				      <input type="hidden" id="visitId" name="visitId" value="${visit.visitId }">
				      <p class="control">
				        <textarea class="textarea" placeholder="후기를 작성해주세요..." id="reviewContent" name="reviewContent" ></textarea>
				      </p>
					  <div class="select">
					    <select id="point" name="point" >
					      <option value="5">★★★★★</option>
					      <option value="4">★★★★</option>
					      <option value="3">★★★</option>
					      <option value="2">★★</option>
					      <option value="1">★</option>
					    </select>
					  </div>
				    </div>
					<div id="file-js-example" class="file has-name">
					  <label class="file-label">
					    <input class="file-input" type="file" id="img" name="img">
					    <span class="file-cta">
					      <span class="file-icon">
					        <i class="fas fa-upload"></i>
					      </span>
					      <span class="file-label">
					        Choose a file…
					      </span>
					    </span>
					    <span class="file-name">
					      No file uploaded
					    </span>
					  </label>
					</div>
					<script>
					  const fileInput = document.querySelector('#file-js-example input[type=file]');
					  fileInput.onchange = () => {
					    if (fileInput.files.length > 0) {
					      const fileName = document.querySelector('#file-js-example .file-name');
					      fileName.textContent = fileInput.files[0].name;
					    }
					  }
					</script>
				    <nav class="level">
				      <div class="level-left">
				        <div class="level-item">
				          <input type="submit" class="button is-info" value="후기 작성하기">
				        </div>
				      </div>
				    </nav>
				  </div>
				</article>
			</form>
			</c:if>
		</div>
	</div>
</div>
<jsp:include page="../footer.jsp" />
<script>
	function switchDetail(){
		preSwitch();
		$("#detail").addClass("is-active");
		$("#detail-content").removeClass("is-hidden");
	}
	function switchMap(){
	    preSwitch();
	    $("#map").addClass("is-active");
	    $("#map-content").removeClass("is-hidden");
	}
	function switchReview(){
	    preSwitch();
	    var params = { visitId:"<c:out value='${visitId }'/>"}
	    $.ajax({
	    	url:"${path }/ReviewListbyVisitId.do",
	    	type:"post",
			data:params
	    });
	    $("#review").addClass("is-active");
	    $("#review-content").removeClass("is-hidden");
	}
	function preSwitch() {
	    $("li").each(function() {
	        $(this).removeClass("is-active");
	    });
	    $("#detail-content").addClass("is-hidden");
	    $("#map-content").addClass("is-hidden");
	    $("#review-content").addClass("is-hidden");
	}
	$(document).ready(function(){
		if('${sid }' == null){
			$("#poke").html('찜하기');
			$("#like").html('좋아요');//(${visit.likeCnt })
		} else {
			var param1 = { pokedBy: "<c:out value='${sid }' />", visitId: "<c:out value='${visit.visitId }' />"}
			var param2 = { likedBy: "<c:out value='${sid }' />", visitId: "<c:out value='${visit.visitId }' />"}
			/* console.log("pokedBy : "+param1.pokedBy);
			console.log("likedBy : "+param2.likedBy); */
			$.ajax({
				url:"${path }/PokeCheck.do",
				type:"post",
				dataType:"json",
				data:param1,
				success:function(result){
					//console.log(result);
					if(result.res == '0'){
						$("#poke").val('no');
						$("#poke").html('찜하기');
					} else {
						$("#poke").val('yes');
						$("#poke").html('찜하기 취소');
					}
				}
			});
			$.ajax({
				url:"${path }/LikeCheck.do",
				type:"post",
				dataType:"json",
				data:param2,
				success:function(result){
					//console.log(result);
					if(result.res == '0'){
						$("#like").val('no');
						$("#like").html('♡');
					} else {
						$("#like").val('yes');
						$("#like").html('♥');
					}
				}
			});
		}
	});
	
	function pokeCtrl(){
	 	if("${sid }" == ""){
			alert("로그인 후 사용하실 수 있는 기능입니다.");
		} else if($("#poke").val() == "no"){
			var params = {pokedBy: "<c:out value='${sid }' />", visitId: "<c:out value='${visit.visitId }' />"}
			$.ajax({
				url:"${path }/PokeInsertPro.do",
				type:"post",
				dataType:"json",
				data:params,
				success:function(result){
					//console.log(result);
					if(result.res == "1"){
						$("#poke").val('yes');
						$("#poke").html('찜하기 취소');
					}
				}
			});
		} else if($("#poke").val() == "yes"){
			var params = {pokedBy: "<c:out value='${sid }' />", visitId: "<c:out value='${visit.visitId }' />"}
			$.ajax({
				url:"${path }/PokeDeletePro.do",
				type:"post",
				dataType:"json",
				data:params,
				success:function(result){
					//console.log(result);
					if(result.res == "1"){
						$("#poke").val('no');
						$("#poke").html('찜하기');
					}
				}
			});
		}
	}
	
	function likeCtrl(){
		if("${sid }" == ""){
			alert("로그인 후 사용하실 수 있는 기능입니다.");
		} else if($("#like").val() == "no"){
			var params = {likedBy: "<c:out value='${sid }' />", visitId: "<c:out value='${visit.visitId }' />"}
			$.ajax({
				url:"${path }/LikeInsertPro.do",
				type:"post",
				dataType:"json",
				data:params,
				success:function(result){
					console.log(result);
					if(result.res == "1"){
						$("#like").val('yes');
						$("#like").html('♥');
					}
				}
			});
		} else if($("#like").val() == "yes"){
			var params = {likedBy: "<c:out value='${sid }' />", visitId: "<c:out value='${visit.visitId }' />"}
			$.ajax({
				url:"${path }/LikeDeletePro.do",
				type:"post",
				dataType:"json",
				data:params,
				success:function(result){
					console.log(result);
					if(result.res == "1"){
						$("#like").val('no');
						$("#like").html('♡');
					}
				}
			});
		}
	}
</script>
</body>
</html>