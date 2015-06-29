<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath() %>/TextOL/reader/joke/joke.css" rel="stylesheet" type="text/css" />
<script src="<%=request.getContextPath() %>/TextOL/jQueryUI/external/jquery/jquery.js"></script>
<title>Insert title here</title>
</head>
<body>
        <s:iterator value="jokes" var="joke">
        	<div class="viewlist">
        		<div class="viewlist_title">
	        		<div class="viewlist_title_right">
		        		<s:date name="#joke.createDate" format="MM月dd日  hh:mm"/>
	        		</div>
	        		<div class="viewlist_title_left">
		        		<h2><s:property value="#joke.title" /></h2>
	        		</div>
        		</div>
        		<div class="viewlist_info">
        			<s:property value="#joke.summary" />
        		</div>
        		<div></div>
        	</div>
        </s:iterator>
        第<s:property value="pageIndex"/>页
        <button type="button" onclick="query(<s:property value="pageIndex"/>+1)">下一页</button>
</body>
<script type="text/javascript">
	$(document).ready(function(){
		
	});
	function query(pageIndex){
		$("#maincontent").load("JokeAction!jokeList.action?pageIndex="+pageIndex);
	}
</script>
</html>