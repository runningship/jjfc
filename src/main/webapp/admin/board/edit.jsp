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
    <script type="text/javascript" src="${projectName}/js/jquery.sorted.js"></script>
    <script type="text/javascript" src="${projectName}/js/bootstrap.js"></script>
    <script type="text/javascript" src="${projectName}/js/ckform.js"></script>
    <script type="text/javascript" src="${projectName}/js/common.js"></script>
    <script type="text/javascript" src="${projectName}/js/artDialog/jquery.artDialog.source.js?skin=default"></script>
    <script type="text/javascript" src="${projectName}/js/artDialog/plugins/iframeTools.source.js"></script>
    <script type="text/javascript" src="${projectName}/js/buildHtml.js"></script>
</head>
<body>
<form action="index.html" method="post" name="form1" class="definewidth m20">
<input type="hidden" name="id" id="id" />
<table class="table table-bordered table-hover m10">
    <tr>
        <td class="tableleft">名称</td>
        <td><input type="text" name="name" value="${board.name}" /></td>
    </tr>
    <tr>
        <td class="tableleft">序号</td>
        <td><input type="text" name="orderx" value="${board.orderx}" /></td>
    </tr>
    <tr>
        <td class="tableleft"></td>
        <td>
            <button class="btn btn-primary" type="button" onclick="save();return false;">保存</button> &nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
        </td>
    </tr>
</table>
</form>
</body>
</html>
<script>
    $(function () {       
		$('#backid').click(function(){
				window.location.href="index.html";
		 });
        var id = getParam('id');
        $('#id').val(id);
    });

function save(){
    var a=$('form[name=form1]').serialize();
    YW.ajax({
        type: 'POST',
        url: '${projectName}/c/admin/board/update',
        data:a,
        mysuccess: function(data){
            art.dialog.close();
            alert('发布成功');
        }
    });
}

</script>