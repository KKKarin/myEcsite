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
<title>BuyItemConfirm画面</title>
<script type="text/javascript">
	function submitAction(url) {
		$('form').attr('action', url);
		$('form').submit();
	}
</script>
</head>
<body>

<div id="header">
	<div id="pr"></div>
</div>

<div id="main">
	<div id="top">
		<p>BuyItemConfirm</p>
	</div>
	<div class="mainInner">
		<s:form>
			<tr>
				<td><span>商品名</span></td>
				<td><s:property value="#session.buyItem_name" /></td>
			</tr>
			<tr>
				<td><span>値段</span></td>
				<td><s:property value="#session.buyItem_price" /><span>円</span></td>
			</tr>
			<tr>
				<td><span>購入個数</span></td>
				<td><s:property value="#session.count" /></td>
			</tr>
			<tr>
				<td><span>支払い方法</span></td>
				<td><s:property value="#session.pay" /></td>
			</tr>
			<tr>
				<td><br></td>
			</tr>
			<tr>
				<td><input type="button" value="戻る" onclick="submitAction('HomeAction')" class="btn" /></td>
				<td><input type="button" value="完了" onclick="submitAction('BuyItemConfirmAction')" class="btn" /></td>
			</tr>
		</s:form>
	</div>
</div>

<div id="footer">
	<div id="pr"></div>
</div>

</body>
</html>