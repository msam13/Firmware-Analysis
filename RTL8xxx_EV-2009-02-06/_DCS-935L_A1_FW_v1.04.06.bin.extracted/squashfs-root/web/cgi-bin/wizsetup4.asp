<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" rev="stylesheet" href="dlink.css" type="text/css">
<link rel="stylesheet" rev="stylesheet" href="icons.css" type="text/css">
<title></title>
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
if (language != "en" && language != "sc" && language != "tc" && 
	language != "de" && language != "es" && language != "it" && language != "fr")
{
	language = "en"
	setCookie("language", "en");
}	
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_wizsetup4.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var Wireless="<% getHWInfo(Wireless); %>";
var CameraName="<% getSWSystemInfo(CameraName); %>";

function init()
{
	loadText();
	setConfig();
}
function loadText()
{
	document.title = item_name[I_DINK_CORPORATION];
	if (Wireless == "1")
		document.title += " | " + item_name[I_WIRELESS];
	document.title += " " + item_name[I_INTERNET_CAMERA];
	document.title += " | " + item_name[I_LIVE_VIDEO];
	setText(document.getElementById("sProduct"), item_name[I_PRODUCT]);
	setText(document.getElementById("sFWVersion"), item_name[I_FWVERSION]);
	setText(document.getElementById("sTitle"), item_name[I_TITLE]);
	setText(document.getElementById("sCameraName"), item_name[I_CAMERA_NAME]);
	setText(document.getElementById("sCameraNameLengthDes"), item_name[I_CAMERA_NAME_LENGTH_DES]);
	document.getElementById("btn_back").value = item_name[I_BACK];
	document.getElementById("btn_next").value = item_name[I_NEXT];
	document.getElementById("btn_cancel").value = item_name[I_CANCEL];
	document.getElementById("sCopyRight").innerHTML = des_item_name[D_COPYRIGHT];
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_TITLE_IFNO];
}
function setConfig()
{
	document.getElementById("input_camera_name").value = CameraName;
	var Version = "<% getHWInfo(Version); %>";
	var Build = "<% getHWInfo(Build); %>";
	var strBuild; 
	
	if (parseInt(Build, 10) < 10)
		strBuild = "0" + Build;
	else
		strBuild = Build;
	
	var splitVersion = Version.split(".");
	if (splitVersion.length == 3)
	{
		if (parseInt(splitVersion[1], 10) < 10)
		{
			//setText(document.getElementById("sFWVersion_value"), "v" + splitVersion[0] + ".0" + splitVersion[1] + " b" + strBuild);
			setText(document.getElementById("sFWVersion_value"), splitVersion[0] + ".0" + splitVersion[1]);
		}
		else
		{
			//setText(document.getElementById("sFWVersion_value"), "v" + splitVersion[0] + "." + splitVersion[1] + " b" + strBuild);
			setText(document.getElementById("sFWVersion_value"), splitVersion[0] + "." + splitVersion[1]);
		}
	}
	else
	{
		//setText(document.getElementById("sFWVersion_value"), "v" + Version + " b" + strBuild);
		setText(document.getElementById("sFWVersion_value"), Version);
	}
}
function save_setting_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	window.location.href='wizsetup5.asp';
        }else {
            alert(pop_msg[PMSG_REQUEST_FAILED]);
        }
    }
}
function save_setting()
{
	var url = "/cgi/admin/smartwizard.cgi";
  	var params = "action=camera_setting";
  	
  	if (CheckSrvname(document.getElementById("input_camera_name").value))
  	{
    	document.getElementById("input_camera_name").select();
    	alert(pop_msg[PMSG_CAMERA_NAME_INVALID]);
    	return;
  	}
  	params += "&CameraName=" + encodeURIComponent(document.getElementById("input_camera_name").value);

	makeRequest(url, params, save_setting_callback);
}
</script>
</head>
<body topmargin="1" leftmargin="0" rightmargin="0" bgcolor="#757575">
  <table id="tb_top" class="header_container" border="0" cellpadding="5" cellspacing="0" width="838" align="center">
    <tr>
      <td width="100%"><span id="sProduct">Product</span>: <a href="http://support.dlink.com/" target="_blank" style="color:white;text-decoration:none"><% getCamSystemInfo(CameraName); %></a></td>
      <td align="right" nowrap></td>
      <td align="right" nowrap><span id="sFWVersion">Firmware version</span><span>:&nbsp;</span><span id="sFWVersion_value"></span>&nbsp;</td>
    </tr>
  </table>
  <div id="title_container">
    <table id="topnav_container" border="0" cellpadding="0" cellspacing="0" width="838" align="center">
      <tr>
        <td align="center" valign="middle"><img src="img/title.gif"></td>
      </tr>
    </table>
  </div>
  <table border="0" cellpadding="0" cellspacing="0" width="838" align="center" bgcolor="#FFFFFF" bordercolordark="#FFFFFF">
    <tr>
  	  <td valign="top" height="520" align="center">
    	<table cellSpacing=0 cellPadding=0 border=0 width="600">
    	  <tr>
      		<td valign="top" id="maincontent_container">
        	  <div id="id_srv" style="display:"><br><br>
          		<div id=box_header>
            	  <h1 align="left"><span id="sTitle">step 3: Server Name Settings</span></h1>
            	  <div align="left">
            	  <span id="sTitleInfo">
            		D-Link recommends that you rename your camera for easy 
					accessibility. Please assign a name of your choice before clicking 
					on the <b>Next</b> button.<br><br>
				  </span>
				  </div>
            	  <center>
              		<table align="center">
              		  <TR>
                		<TD><span id="sCameraName">Camera Name</span></TD>
                		<TD>
                		  <INPUT type="text" size=30 maxlength=10 id="input_camera_name" name="input_camera_name">
                		  <span style="color:red" id="sCameraNameLengthDes">10 characters maximum</span>
                		</TD>
              		  </TR>
              		</table>
              		<br>
              		<br>
              		<input id="btn_back" type="button" value="Back" onclick="javascript:location.href='wizsetup3.asp'">
              		<input id="btn_next" type="button" value="Next" onclick="save_setting();">
              		<input id="btn_cancel" type="button" value="Cancel" onclick="javascript:location.href='/setup.asp?menu=setup'">
            	  </center>
          		</div>
        	  </div>
      		</td>   
    	  </tr>
    	</table>
  	  </td>
	</tr>
  </table>
  <table id="tb_bottom" class="footer_container" border="0" cellpadding="0" cellspacing="0" width="838" align="center">
    <tr>
      <td width="125" align="center">&nbsp;&nbsp;<img src="img/security.gif" width="114" height="35"></td>
      <td width="10">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
  <br>
  <div id="div_copyright" align="center">
    <FONT color=#ffffff><span id="sCopyRight">Copyright 2012 - 2013, D-Link 
	Corporation / D-Link Systems, Inc. All rights reserved.</span></font>
  </div>
  <br>
  <script type="text/javascript" language="javascript">init();</script>
</body>
</html>
