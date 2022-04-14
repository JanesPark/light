<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="../layout/header.jsp" %>
<div class="container-login">
<h2 class=login>LOGIN.</h2>
	<form action="/auth/loginProc" method="POST">
	  <div class="form-group">
	    <label for="username">USERNAME </label>
	    <input type="text" class="form-control" id="username" 
	    placeholder="Enter Username" name="username" required>
	  </div>
	  <div class="form-group">
	    <label for="password">PASSWORD </label>
	    <input type="password" class="form-control" id="password" 
	    placeholder="Enter Password" name="password" required>
	  </div>
	  <div class="btn-big login">
	  <button type="submit" id="btn-login" class="btn-login">LOGIN</button> 
	  </div>
	</form>
</div>
<!--  <script src="/js/user.js"></script> -->
 <br/>
<%@ include file="../layout/footer.jsp" %>
 