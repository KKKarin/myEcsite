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
<title>UserCreateConfirm画面</title>
</head>
<body>

<div id="header">
	<div id="pr"></div>
</div>

<div id="main">
	<div id="top">
		<p>UserCreateConfirm</p>
	</div>
	<div class="mainInner">
		<p id="pageList"><a href='<s:url action="GoHomeAction" />'>ホーム</a></p>
		<h3>登録する内容は以下でよろしいですか。</h3>
		<table>
		<s:form action="UserCreateCompleteAction">
			<tr id="box">
				<td><label>ログインID：</label></td>
				<td><s:property value="loginUserId" escape="false" /></td>
			</tr>
			<tr id="box">
				<td><label>ログインPASS：</label></td>
				<td><s:property value="loginPassword" escape="false" /></td>
			</tr>
			<tr id="box">
				<td><label>ユーザー名：</label></td>
				<td><s:property value="userName" escape="false" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="完了" class="btn" /></td>
				<td><input type="button" value="戻る" onClick="history.back();" class="btn" ></td>
			</tr>
		</s:form>
		</table>
	</div>
</div>

<div id="footer">
	<div id="pr"></div>
</div>

</body>
</html>