<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keyworgs" content="" />
<link rel="stylesheet" type="text/css" href="./css/main.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<title>ItemList画面</title>
<script type="text/javascript">
$(function() {
	$("#allCheck").change(function() {
		if($(this).prop("checked")){
			$("input[name='deleteNum']").prop("checked", true);
		} else {
			$("input[name='deleteNum']").prop("checked", false);
		}
	});
});
	function deleteCheck() {
		var deleteNumList = new Array();
		for(var i = 0; i < document.list.deleteNum.length; i++) {
			if(document.list.deleteNum[i].checked) {
				deleteNumList.push(document.list.deleteNum[i].value);
				document.getElementById( "deleteNum" ).value = deleteNumList;
			}
		}
		console.log(deleteNumList);
		if(deleteNumList.length > 0) {
			$('form').attr('action', 'ItemListDeleteConfirmAction');
			$('form').submit();
		} else {
			alert("削除する商品にチェックをつけてください。");
		}
	}
</script>
</head>
<body>

<div id="header">
	<div id="pr"></div>
</div>

<div id="main">
	<div id="top">
		<p>ItemList</p>
	</div>
	<div class="mainInner">
		<p id="pageList"><a href='<s:url action="GoHomeAction" />'>ホーム</a> ＜ <a href='<s:url action="AdminAction" />'>管理画面</a></p>
		<s:if test="error">
			<p><s:property value="message" /></p>
		</s:if>
		<form method="post" name="list">
		<table class="itemList">
		<tr>
			<th><input type="checkbox" id="allCheck" value="1">選択</th>
			<th>商品名</th>
			<th>値段</th>
			<th>在庫</th>
			<th>作成時間</th>
		</tr>
		<s:iterator value="itemList">
		<tr>
			<td><label><input type='checkbox' name='deleteNum' value='<s:property value="itemId" />'></label></td>
			<td><s:property value="itemName" /></td>
			<td><s:property value="itemPrice" />円</td>
			<td><s:property value="itemStock" />個</td>
			<td><s:property value="itemTime" /></td>
		</tr>
		</s:iterator>
		</table>
			<input type="hidden" name="deleteNumList" value="" id="deleteNum">
			<input type="button" value="削除する" onclick="deleteCheck();" class="btn">
		</form>
	</div>
</div>

<div id="footer">
	<div id="pr"></div>
</div>

</body>
</html>