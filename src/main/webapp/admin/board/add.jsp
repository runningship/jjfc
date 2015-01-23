<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${projectName }/Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${projectName }/Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="${projectName }/Css/style.css" />
    <script type="text/javascript" src="${projectName }/js/jquery.js"></script>
    <script type="text/javascript" src="${projectName }/js/bootstrap.js"></script>
    <script type="text/javascript" src="${projectName }/js/common.js"></script>
    <script type="text/javascript" src="${projectName }/js/artDialog/jquery.artDialog.source.js?skin=default"></script>
    <script type="text/javascript" src="${projectName }/js/artDialog/plugins/iframeTools.source.js"></script>
    <script type="text/javascript" src="${projectName }/js/buildHtml.js"></script>
    <script type="text/javascript" charset="utf-8" src="${projectName}/js/ueditor1_4_3/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${projectName}/js/ueditor1_4_3/ueditor.all.js"> </script>
    <script type="text/javascript" charset="utf-8" src="${projectName}/js/ueditor1_4_3/lang/zh-cn/zh-cn.js"></script>
	<script type="text/javascript">
		function cfgChild(radio){
			if(radio.value==1){
				$('#tr_conts').css('display','none');
			}else{
				$('#tr_conts').css('display','');
			}
		}
		
		$(function(){
			var ue = UE.getEditor('editor',{
		        toolbars: [
		            ['source','forecolor', 'simpleupload','insertimage','emotion','spechars', 'attachment', '|', 'fontfamily', 'fontsize', 'bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 'subscript', 'formatmatch', 'pasteplain', '|', 'backcolor', 'insertorderedlist', 'insertunorderedlist', '|','justifyleft', 'justifycenter', 'justifyright', 'justifyjustify', 'indent', 'rowspacingtop', 'rowspacingbottom', 'lineheight',
		            ]
		        ],
		  	});
		});
	</script>
</head>
<body>
<form name="form1" method="post" class="definewidth m20">
<table class="table table-bordered table-hover m10">
	<tr>
        <td class="tableleft">父级</td>
        <td>
        	<select id="fid" name="fid">
        		<option value="">无</option>
                <c:forEach items="${modules}"  var="module">
        			<option value="${module.id}">${module.name}</option>
                </c:forEach>
        	</select>
        </td>
    </tr>
    <tr>
        <td class="tableleft">名称</td>
        <td><input type="text" name="name"/></td>
    </tr>
    <tr>
        <td class="tableleft">英文名</td>
        <td><input type="text" name="ename"/></td>
    </tr>
    <tr>
        <td class="tableleft">序号</td>
        <td><input type="text" name="orderx"/></td>
    </tr>
    <tr>
        <td class="tableleft">子栏目</td>
        <td>有<input onclick="cfgChild(this);" type="radio"  value="1" checked="checked" name="type"/> 
        		无<input onclick="cfgChild(this);" value="0" type="radio" name="type"/></td>
    </tr>
    <tr id="tr_conts" style="display:none">
    	<td class="tableleft">正文</td>
    	<td><span id="editor" type="text/plain" name="conts" style="width:99%;height:300px;"></span></td>
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
			window.location.href="list.jsp";
		 });
        var fid = getParam('fid');
        if(fid!=undefined || fid!=""){
    		$('#fid').val(fid);
    	}
    });

function save(){
    var a=$('form[name=form1]').serialize();
    YW.ajax({
        type: 'POST',
        url: '${projectName}/c/admin/board/save',
        data:a,
        mysuccess: function(data){
            alert('发布成功');
            window.location.href="list.jsp";
        }
    });
}


</script>