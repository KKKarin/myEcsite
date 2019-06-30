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
<title>ItemListDeleteConfirm画面</title>
</head>
<body>

<div id="header">
	<div id="pr"></div>
</div>

<div id="main">
	<div id="top">
		<p>ItemListDeleteConfirm</p>
	</div>
	<div class="mainInner">
		<p id="pageList"><a href='<s:url action="GoHomeAction" />'>ホーム</a> ＜ <a href='<s:url action="AdminAction" />'>管理画面</a> ＜ <a href='<s:url action="ItemListAction" />'>商品一覧</a></p>
		<form action="ItemListDeleteCompleteAction">
		<table class="itemList">
		<tr>
			<th>商品名</th>
			<th>値段</th>
			<th>在庫</th>
			<th>作成時間</th>
		</tr>
		<s:iterator value="deleteList">
		<tr>
			<td><s:property value="itemName" /></td>
			<td><s:property value="itemPrice" />円</td>
			<td><s:property value="itemStock" />個</td>
			<td><s:property value="itemTime" /></td>
		</tr>
		</s:iterator>
		</table>
		<p>以下の商品を削除します。よろしいでしょうか？</p>
		<div class="btnBox">
			<s:submit value="削除する" class="btn" />
			<input type="button" value="戻る" onClick="history.back();" class="btn">
		</div>
		</form>
	</div>
</div>

<div id="footer">
	<div id="pr"></div>
</div>

</body>
</html>