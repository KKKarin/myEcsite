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
<title>ItemCreate画面</title>
<script type="text/javascript">
	function numCheck() {
		var num01 = document.getElementById("itemPrice").value;
		var num02 = document.getElementById("itemStock").value;
		if(!isNaN(num01) && !isNaN(num02)) {
			$('form').submit();
		} else if(isNaN(num01)) {
			$("#numError").removeClass("off");
			document.getElementById("numError").innerText = "値段を数字にしてください。";
		} else if(isNaN(num02)) {
			$("#numError").removeClass("off");
			document.getElementById("numError").innerText = "在庫を数字にしてください。";
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
		<p>ItemCreate</p>
	</div>
	<div class="mainInner">
		<p id="pageList"><a href='<s:url action="GoHomeAction" />'>ホーム</a> ＜ <a href='<s:url action="AdminAction" />'>管理画面</a></p>
		<s:if test="errorMessage != null">
			<p class="error"><s:property value="errorMessage" /></p>
		</s:if>
		<p class="error off" id="numError"></p>
		<p>以下を入力してください</p>
		<s:form action="ItemCreateConfirmAction">
		<table class="itemList itemCreateTble">
		<colgroup>
			<col width="30%">
			<col width="70%">
		</colgroup>
		<tr>
			<th>商品名</th>
			<td><input type="text" name="itemName" placeholder="カフェラテ"></td>
		</tr>
		<tr>
			<th>値段</th>
			<td><input type="text" name="itemPrice" placeholder="100000" id="itemPrice">円</td>
		</tr>
		<tr>
			<th>在庫数</th>
			<td><input type="text" name="itemStock" placeholder="12000" id="itemStock">個</td>
		</tr>
		</table>
		<input type="button" value="登録" onclick="numCheck();" class="btn">
		</s:form>
	</div>
</div>

<div id="footer">
	<div id="pr"></div>
</div>

</body>
</html>