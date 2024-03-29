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
<title>Home画面</title>
</head>
<body>

<div id="header">
	<div id="pr"></div>
</div>

<div id="main">
	<div id="top">
		<p>Home</p>
	</div>
	<div class="mainInner cfx">
		<div class="fL">
		<s:form action="HomeAction">
			<s:submit value="商品購入" class="btn homeBtn" />
		</s:form>
		<s:if test="#session.login_user_id != null">
			<p>ログアウトする場合は<a href='<s:url action="LogoutAction" />'>こちら</a></p>
		</s:if>
		</div>

		<div class="fR">
		<s:form action="AdminAction">
			<s:submit value="管理者" class="btn homeBtn"/>
		</s:form>
		</div>
	</div>
</div>

<div id="footer">
	<div id="pr"></div>
</div>

</body>
</html>