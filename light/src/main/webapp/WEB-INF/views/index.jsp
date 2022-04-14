<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<div class="container">
<div class="image">
	<image src="/image/image1.jpg" width="292pt">
	<image src="/image/image8.jpg" width="300pt">
	<image src="/image/image2.jpg" width="296pt">
	
</div><br/>

<c:forEach var="board" items="${boards.content}">
	<div class="card m-2">
		<div class="card-body">
			<h2 class="board-title">${board.title}</h2>
			<a href="/board/${board.id}" class="index_detail">Detail</a>
		</div>
	</div>
	<br/>
</c:forEach>
	<ul class="pagination justify-content-center">
		<c:choose>
			<c:when test="${boards.first}">
				<li class="disabled"><a class="page-no"
				href="?page=${boards.number-1}">Previous</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-no"
				href="?page=${boards.number-1}">Previous</a></li>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${boards.last}">
				<li class="disabled"><a class="page-no"
				href="?page=${boards.number+1}">Next</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-no"
				href="?page=${boards.number+1}">Next</a></li>
			</c:otherwise>
		</c:choose>
	</ul>
</div>
<br/><br/><br/><br/><br/><br/>
<%@ include file="layout/footer.jsp" %>