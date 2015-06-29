<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/TextOL/jQueryUI/jquery-ui.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/TextOL/css/index.css">
<script src="<%=request.getContextPath() %>/TextOL/jQueryUI/external/jquery/jquery.js"></script>
<script src="<%=request.getContextPath() %>/TextOL/jQueryUI/jquery-ui.min.js"></script>
<title>首页</title>
</head>
<body>
<button id="user-manager">User Manager</button>
 <script type="text/javascript">
 $(function(){
	 $( "#user-manager" ).button().on('click',function(){
		 location.href = '<%=request.getContextPath() %>/TextOL/user/UserIndex.jsp';
	 });
 });
 </script>
</body>
</html>
