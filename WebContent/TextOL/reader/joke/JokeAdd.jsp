<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath() %>/TextOL/reader/joke/joke.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/TextOL/jquery-2.1.1.js"></script>
<title>Insert title here</title>
</head>
<body>
<form id="jokeForm" action="${pageContext.request.contextPath}/JokeAction!addJoke.action" method="post" name="addForm">
	<h1>New </h1>
		标题：
		<input placeholder="标题" type="text" name="joke.title" ><br/><br/>
		摘要：
		<textarea rows="3" cols="50" name="joke.summary"></textarea>
		<br/><br/>
		内容：
		<textarea rows="10" cols="50" name="joke.info"></textarea>
		<br/><br/>
		<input  type="submit" value="Save" name="submit">
</form>
</body>
<script type="text/javascript">
	$(document).ready(function(){
		
	});
</script>
</html>