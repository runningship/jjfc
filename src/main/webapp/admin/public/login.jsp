<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>金江房产后台管理系统</title>
		<link type="text/css" href="css/login.css" rel="stylesheet" />	
		<script type="text/javascript" src="${projectName}/admin/assets/js/jquery-1.8.1.min.js"></script>
	    <script type="text/javascript" src="${projectName}/js/bootstrap.js"></script>
	    <script type="text/javascript" src="${projectName}/js/ckform.js"></script>
	    <script type="text/javascript" src="${projectName}/js/common.js"></script>
	    <script type="text/javascript" src="${projectName}/js/artDialog/jquery.artDialog.source.js?skin=default"></script>
		<script type="text/javascript" src="${projectName}/js/artDialog/plugins/iframeTools.source.js"></script>
		<script type="text/javascript" src="${projectName}/js/buildHtml.js"></script>

<script type="text/javascript">
function login(){
	var a=$('form[name=form1]').serialize();
	YW.ajax({
	    type: 'post',
	    url: '${projectName}/c/admin/user/login',
	    data: a,
	    mysuccess: function(json){
	        window.location="${projectName}/admin/index.jsp#1/2";
	    }
	  });
}
$(function(){
	$(document).on('keyup',function(event){
		if(event.keyCode==13){
			login();
		}
	});
});
</script>
	</head>
	<body>
	<div id="container">
		<div class="logo">
			<a href="#"><img src="assets/logo.png" alt="" /></a>
		</div>
		<div id="box">
			<form name="form1">
			<p class="main">
				<label>账号: </label>
				<input name="name" value="" /> 
				<label>密码: </label>
				<input type="password" name="pwd" value="">	
			</p>

			<p class="space">
				
				<input type="button" value="登陆" onclick="login();" class="login" />
			</p>
			</form>
		</div>
	</div>

	</body>
</html>