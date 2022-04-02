<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" rev="stylesheet" href="dlink.css" type="text/css">
<link rel="stylesheet" rev="stylesheet" href="icons.css" type="text/css">
<title></title>
<meta http-equiv="X-UA-Compatible" content="requiresActiveX=true">
<meta http-equiv="X-UA-Compatible" content="requiresActiveX=true">
<meta content="text/html; charset=utf-8" http-equiv=Content-Type>
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-EQUIV="Expires" CONTENT="-1">
<script type="text/javascript" language="Javascript" SRC="function.js"></script>
<script type="text/javascript" language="Javascript" SRC="cookies.js"></script>
<script type="text/javascript" language="Javascript">
var language = "<% getCamSystemInfo(Language); %>"
if (getCookie("language") != null)
	language = getCookie("language");
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_account.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var Wireless="<% getHWInfo(Wireless); %>";
var user=getWebQuery("user", "");
function ClickApply()
{
	if (document.getElementById("NewPassword").value == document.getElementById("RetypePassword").value)
	{
		if (CheckUserpass(document.getElementById("NewPassword").value)) 
		{
			alert(pop_msg[P_PWD_INCORRECT]);
		} 
     	else 
     	{
			disable("BApply");
			disable("BClear");
       	var params = "action=update&grp=users&user=" + encodeURIComponent(user) + "&pwd=" + encodeURIComponent(document.getElementById("NewPassword").value);
			makeRequest("/cgi/admin/pwdgrp.cgi", params, addUserCallback);
     	}
  } 
  else 
  {
     	alert(pop_msg[P_PWD_RETYPE_INCORRECT]);
  }
}
function addUserCallback(http_request)
{
	if (http_request.readyState == 4) 
	{
		if (http_request.status == 200)
		{
       	enable("BApply");
			enable("BClear");
        	window.close();
       }
       else 
       {
       	alert('There was a problem with the request.');
       	enable("BApply");
			enable("BClear");
        }
    }
}
function ClickCancel()
{
	document.getElementById("NewPassword").value = "";
	document.getElementById("RetypePassword").value = "";
	disable("User");
}
function loadText()
{
	document.title = item_name[I_DINK_CORPORATION];
	if (Wireless == "1")
		document.title += " | " + item_name[I_WIRELESS];
	document.title += " " + item_name[I_INTERNET_CAMERA];
	document.title += " | " + item_name[I_LIVE_VIDEO];
	setText(document.getElementById("sUserName"), item_name[I_USER_NAME]);
	setText(document.getElementById("sNewPWD"), item_name[I_NEW_PWD]);
	setText(document.getElementById("sRetypePWD"), item_name[I_RETYPE_PWD]);
	document.getElementById("BApply").value = item_name[I_APPLY];
	document.getElementById("BClear").value = item_name[I_CLEAR];
	document.getElementById("BExit").value = item_name[I_EXIT];
}
function init() 
{
	loadText();
	document.getElementById("User").value = user;
	disable("User");
}
</script>
</head>
<body class="td1" topmargin="0" leftmargin="0">
<FORM ACTION="/setSystemAddUser" METHOD="POST"><br>
  <table class="text1" border="0" cellpadding="2" cellspacing="2">
  <tr> 
    <td width="29">&nbsp;</td>
    <td width="165"><span id="sUserName">User Name</span></td>
    <td width="254">
      <input type="hidden" name="ReplySuccessPage" value="account.htm">
      <INPUT type="text" id="User" size=18 maxlength=12 name="UserName" value="">
      <input type="hidden" name="UserPassword" value="6A6F65">
      <input type="hidden" name="UserAdd" value="Add">
      <input type="hidden" id="OldEntryNo" value="0">
      <input type="hidden" name="EntryNo" value="2">
    </td>
  </tr>
  <tr> 
    <td>&nbsp;</td>
    <td><span id="sNewPWD">New Password</span></td>
    <td><INPUT type="password" size=18 maxlength=8 id="NewPassword" name="NewPassword" value=""></td> 
  </tr>
  <tr> 
    <td>&nbsp;</td>
    <td><span id="sRetypePWD">Retype Password</span></td>    
    <td><INPUT type="password" size=18 maxlength=8 id="RetypePassword" value=""></td>      
  </tr>
  <tr> 
    <td colspan=1></td>
    <td colspan=2 align="center"><br>
      <INPUT type="button" style="width:60px" id="BApply" value="应用" onclick="ClickApply();">
      <INPUT type="button" style="width:60px" id="BClear" value="清除" onclick="ClickCancel();">
      <INPUT type="button" style="width:60px" id="BExit"value="退出" onclick="window.close();">
    </td>           
  </tr>
  </table>
</form>
<script type="text/javascript" language="javascript">init();</script>
</body>
</html>