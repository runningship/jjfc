<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${projectName}/Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${projectName}/Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="${projectName}/Css/style.css" />
    <script type="text/javascript" src="${projectName}/js/jquery.js"></script>
    <script type="text/javascript" src="${projectName}/js/bootstrap.js"></script>
    <script type="text/javascript" src="${projectName}/js/ckform.js"></script>
    <script type="text/javascript" src="${projectName}/js/common.js"></script>
    <script type="text/javascript" src="${projectName}/js/artDialog/jquery.artDialog.source.js?skin=default"></script>
    <script type="text/javascript" src="${projectName}/js/artDialog/plugins/iframeTools.source.js"></script>
    <script type="text/javascript" src="${projectName}/js/buildHtml.js"></script>

    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }


    </style>
</head>
<body>
<form class="form-inline definewidth m20" action="index.html" method="get">
    <button type="button" class="btn btn-success" id="addnew">新增栏目</button>
</form>
<table class="table table-bordered table-hover definewidth m10">
    <thead>
    <tr>
        <th>序号</th>
        <th>栏目名称</th>
        <th>父级栏目</th>
        <th>管理操作</th>
    </tr>
    </thead>
    <c:forEach items="${boards}"  var="board">
        <tr>
                <td>${board.orderx}</td>
                <td>${board.name}</td>
                <td>${board.fname}</td>
                <td><a href="#" onclick="openEdit(${board.id});">编辑</a>
                    <a href="#" onclick="delThis(${board.id})">删除</a>
                </td>
            </tr>
    </c:forEach>
        </table>

</body>
</html>
<script type="text/javascript">
$(function () {
	$('#addnew').click(function(){
		window.location.href="add.jsp";
	});
});

function openEdit(id){
  art.dialog.open('edit.jsp?id='+id,{width:800,height:578,title:'添加客源'});
}

function delThis(id){
    art.dialog.confirm('删除后不可恢复，确定要删除吗？', function () {
        YW.ajax({
            type: 'POST',
            url: '${projectName}/c/admin/board/delete?id='+id,
            data:'',
            mysuccess: function(data){
                bloakAlert('删除成功');
                window.location.reload();
            }
        });
    },function(){},'warning');
 }
</script>