<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<div class="container">

	<button class="btn-back" onclick="history.back()">BACK</button>
	<c:if test="${board.users.id == principal.user.id}">
		<button id="btn-delete" class="btn-delete">DELETE</button>
		<a href="/board/${board.id}/updateForm" class="btn-edit">EDIT</a>
	</c:if>
	<div>
	<br/><br/>
	<div>
		Content No. <span id="id">${board.id}</span><br/>
		Writer  : <span>${board.users.username}</span>
	</div><br/>
		<h3 class="detail-title">${board.title}</h3>
	</div>
	<hr/>
	<div>
		<div>${board.content}</div>
	</div>
	<hr/>
</div>
<br/>
<script type="text/javascript" src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp" %>