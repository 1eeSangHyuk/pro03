<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*, java.text.*, java.net.InetAddress" %>
<c:set var="path" value="<%=request.getContextPath() %>" />
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../../common.jsp" />
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
.title { text-align: center; }
.subtitle { text-align: center; }
.row:after { content:""; display:block; clear:both; }
.row li { float:left; }
.content ul.row { width:960px; margin:10px auto; margin-left:auto; margin-right:auto; }
</style>
</head>
<body>
<jsp:include page="../../header.jsp" />
<section class="section is-medium" style="background: url(''); background-position-y: 65%;">
  <h1 class="title">${cate.cateName }</h1><!--  style="color:#fff;" -->
  <h2 class="subtitle"></h2>
</section>
<div class="container is-fullhd">
	<ul class="row">
	<c:forEach var="visit" items="${visitList }" >
		<li class="column is-3">
			<div class="card">
			  <div class="card-image">
			    <figure class="image is-16by9">
			      <a href="">
			      	<img src="" alt="Placeholder image">
			      </a>
			    </figure>
			  </div> 			
		      <div class="card-content">
		        <div class="content" style="text-align:center;">
			      <a href="">${visit.visitTitle }</a>
		          <br><span>좋아요&nbsp;${visit.likeCnt }</span>
		        </div>
		      </div>
		    </div>
		</li>
	</c:forEach>
	</ul>
	<c:if test="${empty visitList }">
		<section class="section">
  			<h2 class="subtitle">현재 헤당하는 여행상품이 존재하지 않습니다.</h2>
		</section>
	</c:if>
</div>
<jsp:include page="../../footer.jsp" />
<script>
</script>
</body>
</html>