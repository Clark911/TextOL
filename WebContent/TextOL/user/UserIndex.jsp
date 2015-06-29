<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
 <script type="text/javascript">
 var path = '<%=request.getContextPath() %>';
 </script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/TextOL/jQueryUI/jquery-ui.min.css">
<link rel="stylesheet" href="user.css">
<script src="<%=request.getContextPath() %>/TextOL/jQueryUI/external/jquery/jquery.js"></script>
<script src="<%=request.getContextPath() %>/TextOL/jQueryUI/jquery-ui.min.js"></script>
<script src="<%=request.getContextPath() %>/TextOL/user/UserIndex.js"></script>
<title>首页</title>
</head>
<body>
 
<div id="dialog-form" title="Create new user">
  <p class="validateTips">All form fields are required.</p>
 
  <form>
    <fieldset>
      <label for="name">Name</label>
      <input type="text" name="user_name" id="name" class="text ui-widget-content ui-corner-all">
      <label for="email">Email</label>
      <input type="text" name="email" id="email" class="text ui-widget-content ui-corner-all">
      <label for="password">Password</label>
      <input type="password" name="pass_word" id="password" class="text ui-widget-content ui-corner-all">
 
      <!-- Allow form submission with keyboard without duplicating the dialog button -->
      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
  </form>
</div>
 
 
<div id="users-contain" class="ui-widget">
  <h1>Existing Users:</h1>
  <table id="users" class="ui-widget ui-widget-content">
    <thead>
      <tr class="ui-widget-header ">
       	<th>UserID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Password</th>
      </tr>
    </thead>
    <tbody>
    </tbody>
  </table>
</div>
<button id="create-user">Create new user</button>
<button id="delete-user">Delete selected user</button>
</body>
</html>
