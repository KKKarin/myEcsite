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
<title>Admin画面</title>
</head>
<body>

<div id="header">
	<div id="pr"></div>
</div>

<div id="main">
	<div id="top">
		<p>Admin</p>
	</div>
	<div class="mainInner cfx">
		<p id="pageList"><a href='<s:url action="GoHomeAction" />'>ホーム</a></p>
		<div class="fL itemBox">
			<p class="title">商品</p>
			<s:form action="ItemCreateAction">
				<s:submit value="新規登録" class="btn" />
			</s:form>
			<s:form action="ItemListAction">
				<s:submit value="一覧" class="btn" />
			</s:form>
		</div>

		<div class="fR userBox">
			<p class="title">ユーザー</p>
			<s:form action="UserCreateAction">
				<s:submit value="新規登録" class="btn" />
			</s:form>
			<s:form action="">
				<s:submit value="一覧" class="btn" />
			</s:form>
		</div>
	</div>
</div>

<div id="footer">
	<div id="pr"></div>
</div>

</body>
</html>