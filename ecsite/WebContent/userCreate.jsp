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
<title>UserCreate画面</title>
</head>
<body>

<div id="header">
	<div id="pr"></div>
</div>

<div id="main">
	<div id="top">
		<p>UserCreate</p>
	</div>
	<div class="mainInner">
		<p id="pageList"><a href='<s:url action="GoHomeAction" />'>ホーム</a></p>
		<s:if test="errorMessage != ''">
			<s:property value="errorMessage" escape="false" />
		</s:if>
		<table>
		<s:form action="UserCreateConfirmAction">
			<tr>
				<td><label>ログインID：</label></td>
				<td><input type="text" name="loginUserId" value="" /></td>
			</tr>
			<tr>
				<td><label>ログインPASS：</label></td>
				<td><input type="text" name="loginPassword" value="" /></td>
			</tr>
			<tr>
				<td><label>ユーザー名：</label></td>
				<td><input type="text" name="userName" value="" /></td>
			</tr>
			<s:submit value="登録" class="btn" />
		</s:form>
		</table>
		<div id="text-link">
			<span>前画面に戻る場合は</span><a href='<s:url action="HomeAction" />'>こちら</a>
		</div>
	</div>
</div>

<div id="footer">
	<div id="pr"></div>
</div>

</body>
</html>