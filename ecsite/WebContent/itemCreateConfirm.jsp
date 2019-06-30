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
<title>ItemCreateConfirm画面</title>
</head>
<body>

<div id="header">
	<div id="pr"></div>
</div>

<div id="main">
	<div id="top">
		<p>ItemCreateConfirm</p>
	</div>
	<div class="mainInner">
		<p id="pageList"><a href='<s:url action="GoHomeAction" />'>ホーム</a> ＜ <a href='<s:url action="AdminAction" />'>管理画面</a> ＜ <a href='<s:url action="ItemListAction" />'>商品一覧</a></p>
		<p>以下をご確認してください</p>
		<s:form action="ItemCreateCompleteAction">
		<table class="itemList itemCreateTble">
		<colgroup>
			<col width="30%">
			<col width="70%">
		</colgroup>
		<tr>
			<th>商品名</th>
			<td><s:property value="itemName" /></td>
		</tr>
		<tr>
			<th>値段</th>
			<td><s:property value="itemPrice" />円</td>
		</tr>
		<tr>
			<th>在庫数</th>
			<td><s:property value="itemStock" />個</td>
		</tr>
		</table>
		<div class="btnBox">
			<s:submit value="完了" class="btn" />
			<input type="button" value="戻る" onClick="history.back();" class="btn">
		</div>
		</s:form>
	</div>
</div>

<div id="footer">
	<div id="pr"></div>
</div>

</body>
</html>