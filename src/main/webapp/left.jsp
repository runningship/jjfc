<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="infoLeft">
          
     <h2>${topBoard.name}</h2>
     <div class="list">
      <c:forEach items="${boards}"  var="board">
        <a <c:if test="${board.id==currentBoard.id}">class="sel"</c:if> href="newsList.jsp?topId=${topBoard.id }&bid=${board.id}"><i></i>${board.name}</a>
      </c:forEach>
     </div>

</div>

