  $(function() {
    var dialog, form,
    emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/,
  name = $( "#name" ),
  email = $( "#email" ),
  password = $( "#password" ),
  allFields = $( [] ).add( name ).add( email ).add( password ),
  tips = $( ".validateTips" );
 
    function updateTips( t ) {
      tips
        .text( t )
        .addClass( "ui-state-highlight" );
  setTimeout(function() {
    tips.removeClass( "ui-state-highlight", 1500 );
      }, 500 );
    }
 
    function checkLength( o, n, min, max ) {
      if ( o.val().length > max || o.val().length < min ) {
        o.addClass( "ui-state-error" );
updateTips( "Length of " + n + " must be between " +
  min + " and " + max + "." );
        return false;
      } else {
        return true;
      }
    }
 
    function checkRegexp( o, regexp, n ) {
      if ( !( regexp.test( o.val() ) ) ) {
        o.addClass( "ui-state-error" );
        updateTips( n );
        return false;
      } else {
        return true;
      }
    }
 
function addUser() {
	var valid = true;
	allFields.removeClass( "ui-state-error" );
	valid = valid && checkLength( name, "username", 3, 16 );
	valid = valid && checkLength( email, "email", 6, 80 );
	valid = valid && checkLength( password, "password", 5, 16 );
	valid = valid && checkRegexp( name, /^[a-z]([0-9a-z_\s])+$/i, "Username may consist of a-z, 0-9, underscores, spaces and must begin with a letter." );
	valid = valid && checkRegexp( email, emailRegex, "eg. ui@jquery.com" );
	valid = valid && checkRegexp( password, /^([0-9a-zA-Z])+$/, "Password field only allow : a-z 0-9" );
	if ( valid ) {
		var jsonStr = {'user.username':name.val(),'user.email':email.val(),'user.password':password.val()};
		$.ajax({
			url: path+"/json/addUserAction.action",
			method: "POST",
			data: jsonStr,
			dataType : "json",  
			success: function(data){
				alert(data.resultMsg);
				dialog.dialog( "close" );
				query();
			},
			error: function(){
				alert("error");
			}
		});
      }
      return valid;
	}
 
dialog = $( "#dialog-form" ).dialog({
  autoOpen: false,
  height: 300,
  width: 350,
  modal: true,
  buttons: {
    "Create an account": addUser,
Cancel: function() {
  dialog.dialog( "close" );
    }
  },
  close: function() {
    form[ 0 ].reset();
    allFields.removeClass( "ui-state-error" );
      }
});
 
    form = dialog.find( "form" ).on( "submit", function( event ) {
      event.preventDefault();
      addUser();
    });
 
    $( "#create-user" ).button().on( "click", function() {
  dialog.dialog( "open" );
    });
    
    $( "#delete-user" ).button().on( "click", function() {
    	var selectedRow = $(".row-selected");
    	if(selectedRow.length>0){
    		var userid = $(".row-selected").find("td").get(0).innerHTML;
    		$.ajax({
    			url: path+"/json/deleteUserAction.action",
    			method: "POST",
    			data: {'user.userid':userid},
    			dataType : "json",  
    			success: function(data){
    				alert(data.resultMsg);
    				query();
    			},
    			error: function(){
    				alert("error");
    			}
    		});
    	}else{
    		alert("删除前，请先选择一行数据！");
    	}
	});
function query(){
	$.ajax({
		url: path+"/json/JsonUserAction.action",
		method: "POST",
		data: {pageIndex:1},
		dataType : "json",  
		success: function(data){
			var userList = new Array();
			userList = data.userList;
			$( "#users tbody" ).empty();
			for(var i=0;i<userList.length;i++){
				var user = userList[i];
				$( "#users tbody" ).append( "<tr>" +
						"<td>" + user.userid + "</td>" +
				          "<td>" + user.username + "</td>" +
				          "<td>" + user.email + "</td>" +
				          "<td>" + user.password + "</td>" +
				        "</tr>" );
				$( "#users tbody tr:even" ).addClass("row-style");
				$( "#users tbody tr" ).on('click',function(){
					$( "#users tbody tr" ).removeClass("row-selected");
					$(this).addClass("row-selected");
				});    
			}
		},
		error: function(){
			alert("error");
		}
	});
};
query();
  });