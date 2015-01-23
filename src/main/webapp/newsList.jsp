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
               
               <ul class="fr mTop50 nav">
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
            
                 <div class="tit"><span class="fr s" style="float:left;margin-left:21px;">当前位置：首页 > ${topBoard.name} > ${currentBoard.name}</span></div>
                 <c:if test="${currentBoard.type==0}">
                  <div class="infoRight">
                       ${currentBoard.conts }
                  </div>
                </c:if>

                 <c:if test="${currentBoard.type==1}">
                 <div class="listCon">
                   <ul>
    							   <c:forEach items="${page.result}" var="news">
                        <li><i></i><span class="date"><fmt:formatDate value="${news.addtime}" pattern="yyyy-MM-dd"/></span> <a target="_blank" href="news.jsp?id=${news.id}">${news.title}</a></li>   
                     </c:forEach>
    					     </ul>
                        
                   <div class="page">
                    <!-- <span>
                      <a href="javascript:void(0);">首页</a>
                      <a href="javascript:void(0);">上一页</a>
                      <a class="current" href="?base_id=5&amp;second_id=5001&amp;page=1">1</a>
                      <a href="javascript:void(0);">下一页</a>
                      <a href="javascript:void(0);">末页</a>
                      </span> -->
                      <span>
                      <c:choose>
                        <c:when test="${page.currentPageNo==1}">
                          <span class="prev"><b>&lt;</b>上一页</span>
                        </c:when>
                        <c:otherwise>
                          <a title="上一页"  class="btn-s prev"  href="newsList.jsp?topId=${topBoard.id }&bid=${currentBoard.id }&currentPageNo=${page.currentPageNo-1}"><b>&lt;</b>上一页</a>
                        </c:otherwise>
                      </c:choose>
                      
                      <c:forEach var="i"  begin="1"  end="5"  step="1">
                        <c:if test="${page.currentPageNo-(6-i)>0}">
                          <a pagetag="go" href="newsList.jsp?topId=${topBoard.id }&bid=${currentBoard.id }&currentPageNo=${page.currentPageNo-(6-i) }">${page.currentPageNo-(6-i) }</a>
                        </c:if>
                        </c:forEach>
                        <span class="current">${page.currentPageNo}</span>
                      <c:forEach var="j"  begin="1"  end="5"  step="1">
                        <c:if test="${page.currentPageNo+j<=page.totalPageCount}">
                          <a pagetag="go"  href="newsList.jsp?topId=${topBoard.id }&bid=${currentBoard.id }&currentPageNo=${page.currentPageNo+j}">${page.currentPageNo+j }</a>
                        </c:if>
                        </c:forEach>
                        
                        <c:choose>
                        <c:when test="${page.currentPageNo==page.totalPageCount}">
                          <span class="prev">下一页<b>&gt;</b></span>
                        </c:when>
                        <c:otherwise>
                          <a title="下一页" class="btn-s next" href="newsList.jsp?topId=${topBoard.id }&bid=${currentBoard.id }&currentPageNo=${page.currentPageNo+1}">下一页<b>&gt;</b></a>
                        </c:otherwise>
                      </c:choose>
                      </span>
                   </div>
                 </div>
                  </c:if>
            </div>
          
          
     </div>

</div>
<jsp:include page="footer.jsp" />
</body>
</html>
