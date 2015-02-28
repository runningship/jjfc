<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>和瑞金江房地产投资咨询有限公司
</title>
<link rel="stylesheet" type="text/css" href="style/css.css" />
<link rel="stylesheet" type="text/css" href="style/info.css" />
</head>

<body>
<div class="warp h360 poR">
     
        
     <div class="infoBigImg"><span></span></div> 
         
     <div class="warp poA" style="top:0; left:0; z-index:100;">
          <div class="wCon">
               
               <div class="fl mTop50"><img src="images/logo.png" /></div>
               
               <ul class="fr mTop50 nav" style="background-color:#be1027;">
                    <li>
                        <a href="index.jsp">
                            首页 <br />
                            <em>main</em>
                            <i></i>
                        </a>
                    </li>
                    <jsp:include page="header.jsp" />
               </ul>
          
          </div>
     </div>

</div>

<div class="warp">

     <div class="wCon">
     
      	<jsp:include page="left.jsp" />
	    <div class="infoRight">
            <div class="tit"><span class="fr s">当前位置：首页 > ${topBoard.name} > ${currentBoard.name}</span></div>
            <div style="margin:0 15px;">
              <h2 style="margin-top:15px; text-align:center;">${news.title}</h2>
              <p style="margin:10px 0; text-align:center; color:#999999; background-color:#f4f4f4; line-height:36px;">发布时间:2014-02-05</p>
              <div style="font-family:'宋体'";>${news.conts}</div>
            </div>
         </div>
     </div>

</div>
<jsp:include page="footer.jsp" />
</body>
</html>
