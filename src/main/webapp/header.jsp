<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:forEach items="${modules}"  var="module">
  <li>
    <a <c:if test="${module.id==topBoard.id}">class="sel"</c:if> <c:if test="${module.type==0 }">href="topNews.jsp?id=${module.id }"</c:if> <c:if test="${module.type==1 }">href="newsList.jsp?topId=${module.id}"</c:if>>${module.name}
    <br/>
    <em>${module.ename}</em>
    <i></i>
    </a>
      <c:if test="${fn:length(module.children)>0}">
        <div class="down_menu" style="display:none;">
            <span class=" down_menu_head"></span>
            <span class="down_menu_con">
                <c:forEach items="${module.children}"  var="lanmu">
                    <a href="newsList.jsp?topId=${module.id}&bid=${lanmu.id}" >${lanmu.name}</a>
                </c:forEach>
            </span>
            <span class="down_menu_foot"></span>
        </div>
      </c:if>
  </li>
</c:forEach>
