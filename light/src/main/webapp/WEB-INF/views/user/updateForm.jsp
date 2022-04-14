<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<div class="container-update">
	<h2 class=update>Change Profile.</h2>
	<form>
		<input type="hidden" id="id" value="${principal.user.id}"/>
		<div class="form-group">
  			<label for="username">USERNAME</label>
  			<input type="text" value="${principal.user.username}"
  			 class="form-control" placeholder="Enter Username" id="username" name="username" readonly>
  		</div>  
  		<div class="form-group">
  			<label for="email">EMAIL</label>
  			<input type="email" value="${principal.user.email}" 
  			class="form-control" placeholder="Enter email" id="email" name="email">
  		</div>
  		<div class="form-group">
  			<label for="password">PASSWORD</label>
  			<input type="password" class="form-control" placeholder="Enter Password" id="password" name="password">
  		</div>
  	</form>
  	<div class="btn-big update">
	<button id="btn-update" class="btn-update">UPDATE</button>
	</div>
</div>
<script src="/js/user.js"></script>
<br/>
<%@ include file="../layout/footer.jsp" %>