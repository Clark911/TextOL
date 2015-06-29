<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="TextOL/css/login.css" rel="stylesheet" type="text/css" />
<title>用户登陆</title>
</head>
<body>
	<form id="login" action="${pageContext.request.contextPath}/loginAction!doUserLogin.action" method="post" name="loginForm">
		<h1>LOG IN</h1>
		<fieldset id="inputs">
			<input id="username" placeholder="Username" type="text" name="username" required autofocus>
			<input id="password" placeholder="Password" type="password" name="password" required>
		</fieldset>
		<fieldset id="actions">
			<input id="submit" type="submit" value="Log in" name="submit">
			<a href="./TextOL/FindPassWord.jsp">Forgot your password?</a><a href="./TextOL/Register.jsp">Register</a>
		</fieldset>
	</form>
</body>
</html>