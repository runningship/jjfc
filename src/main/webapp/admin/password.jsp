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
     <script type="text/javascript" src="${projectName}/js/buildHtml.js"></script>
     <script type="text/javascript" charset="utf-8" src="${projectName}/js/ueditor1_4_3/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="${projectName}/js/ueditor1_4_3/ueditor.all.js"> </script>
<script type="text/javascript" charset="utf-8" src="${projectName}/js/ueditor1_4_3/lang/zh-cn/zh-cn.js"></script>
    <script type="text/javascript" src="${projectName}/js/artDialog/jquery.artDialog.source.js?skin=default"></script>
    <script type="text/javascript" src="${projectName}/js/artDialog/plugins/iframeTools.source.js"></script>

<script type="text/javascript">
</script>
</head>
<body>
<form name="form1" method="post" class="definewidth m20" onsubmit="return false;">
<table class="table table-bordered table-hover m10">
	<tr>
        <td class="tableleft">原始密码</td>
        <td><input type="text" name="oldPwd"/></td>
    </tr>
    <tr>
        <td class="tableleft">新设密码</td>
        <td><input type="text" name="newPwd" id="newPwd" /></td>
    </tr>
    <tr>
        <td class="tableleft">重复密码</td>
        <td><input type="text" name="Pwd" id="pwd" /></td>
    </tr>
    <tr>
        <td class="tableleft"></td>
        <td>
            <button class="btn btn-primary" type="button" onclick="save();return false;">保存</button> &nbsp;&nbsp;<!-- <button type="button" class="btn btn-success" name="backid" id="backid">取消</button> -->
        </td>
    </tr>
</table>
</form>
</body>
</html>
<script>
    $(function () {       
		$('#backid').click(function(){
			window.location.href="/admin/index.jsp";
		 });
        var fid = getParam('fid');
        $('#fid').val(fid);
        var id = getParam('id');
        $('#id').val(id);
    });

function save(){
    var a = $('#newPwd').val();
    var b = $('#pwd').val();
    if (a!=b) {
        alert('两次密码输入不一致，请重新输入');
        return;
    };
    var a=$('form[name=form1]').serialize();
    YW.ajax({
        type: 'POST',
        url: '${projectName}/c/admin/user/modifyPwd',
        data:a,
        mysuccess: function(data){
            alert('修改成功');
        }
    });
}


</script>