<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>乐事不动产</title>
<link rel="stylesheet" type="text/css" href="style/css.css" />
<link rel="stylesheet" type="text/css" href="style/cons.css" />
</head>

<body>

<div class="warp w_topLine"></div>

<jsp:include page="header.jsp" />

<div class="conWarp marginTop45">

     <div class="banner1">   <img src="images/banner1.jpg">  </div>
	
	 <c:if test="${hasLeft}">
	 	<jsp:include page="left.jsp" />
	 </c:if>
     
    ${board.conts }
    
    

</div>

<jsp:include page="footer.jsp" />

</body>
</html>

