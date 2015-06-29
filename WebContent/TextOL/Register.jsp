<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/TextOL/TextOL/css/register.css" rel="stylesheet" type="text/css" />
<title>注册新用户</title>
</head>
<body>
<div id="formwrapper"> 
<form action="" method="post" name="apForm" id="apForm"> 
<fieldset> 
<legend>用户注册</legend> 
<p><strong>您的电子邮箱不会被公布出去,但是必须填写.</strong> 在您注册之前请先认真阅读服务条款.</p> 
<div> 
<label for="Name">用户名</label> 
<input type="text" name="Name" id="Name" value="" size="20" maxlength="30" /> 
*(最多30个字符)<br> 
</div> 
<div> 
<label for="Email">电子邮箱</label> 
<input type="text" name="Email" id="Email" value="" size="20" maxlength="150" /> 
*<br> 
</div> 
<div> 
<label for="password">密码</label> 
<input type="password" name="password" id="password" size="18" maxlength="15" /> 
*(最多15个字符)<br> 
</div> 
<div> 
<label for="confirm_password">重复密码</label> 
<input type="password" name="confirm_password" id="confirm_password" size="18" maxlength="15" /> 
*<br> 
</div> 
<div> 
<label for="AgreeToTerms">同意服务条款</label> 
<input type="checkbox" name="AgreeToTerms" id="AgreeToTerms" value="1" /> 
<a href="#" title="您是否同意服务条款">先看看条款？</a> * </div> 
<div class="enter"> 
<input name="create791" type="submit" class="buttom" value="提交" /> 
<input name="Submit" type="reset" class="buttom" value="重置" /> 
</div> 
<p><strong>* 在提交您的注册信息时, 我们认为您已经同意了我们的服务条款.<br> 
* 这些条款可能在未经您同意的时候进行修改.</strong></p> 
</fieldset> 
</form> 
</div> 
</body>
</html>