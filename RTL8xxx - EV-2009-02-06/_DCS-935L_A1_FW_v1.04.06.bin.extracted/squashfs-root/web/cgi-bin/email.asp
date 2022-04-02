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
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_email.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
//below config is for video clip
var ServerAddr="<% getEventServerSMTPInfo(ServerAddr); %>";
var SenderAddr="<% getEventServerSMTPInfo(SenderAddr); %>";
var ServerPort="<% getEventServerSMTPInfo(ServerPort); %>";
var SSLEnable="<% getEventServerSMTPInfo(SSL); %>";
var STARTTLSEnable="<% getEventServerSMTPInfo(STARTTLS); %>";
var ServerUID="<% getEventServerSMTPInfo(UID); %>";
var ServerPWD="<% getEventServerSMTPInfo(PWD); %>";
var ServerAuth="<% getEventServerSMTPInfo(Authentication); %>";
var ReceiverAddr1="<% getEventServerSMTPInfo(ReceiverAddr1); %>";
var ReceiverAddr2="<% getEventServerSMTPInfo(ReceiverAddr2); %>";
var Interval="<% getEventServerSMTPInfo(Interval); %>";
//this config is for snapshot
var ServerAddr_snapshot="<% getEventServerSMTPSnapshotInfo(ServerAddr); %>";
var SenderAddr_snapshot="<% getEventServerSMTPSnapshotInfo(SenderAddr); %>";
var ServerPort_snapshot="<% getEventServerSMTPSnapshotInfo(ServerPort); %>";
var SSLEnable_snapshot="<% getEventServerSMTPSnapshotInfo(SSL); %>";
var STARTTLSEnable_snapshot="<% getEventServerSMTPSnapshotInfo(STARTTLS); %>";
var ServerUID_snapshot="<% getEventServerSMTPSnapshotInfo(UID); %>";
var ServerPWD_snapshot="<% getEventServerSMTPSnapshotInfo(PWD); %>";
var ServerAuth_snapshot="<% getEventServerSMTPSnapshotInfo(Authentication); %>";
var ReceiverAddr1_snapshot="<% getEventServerSMTPSnapshotInfo(ReceiverAddr1); %>";
var ReceiverAddr2_snapshot="<% getEventServerSMTPSnapshotInfo(ReceiverAddr2); %>";
var Interval_snapshot="<% getEventServerSMTPSnapshotInfo(Interval); %>";

function resizePage()
{
	if (parent)
	{
		parent.resetIframeHeight(document.body.clientHeight);
	}
}
function init(bReinit)
{
	if (!bReinit)
	{
		loadText();
	}
	setConfig();
	resizePage();
}
function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_SMTP_TITLE]);
	setText(document.getElementById("sEmailTitle"), item_name[I_EMAIL_ACCOUNT]);
	setText(document.getElementById("sEmailTitle_snapshot"), item_name[I_EMAIL_ACCOUNT_SNAPSHOT]);
	setText(document.getElementById("sSMTPServerAddress"), item_name[I_HOSTNAME]);
	setText(document.getElementById("sSMTPServerPort"), item_name[I_PORT]);
	setText(document.getElementById("sSenderEmailAddress"), item_name[I_SENDER_ADDRESS]);
	setText(document.getElementById("sReceiverEmailAddress"), item_name[I_RECEIVER_ADDRESS]);
	setText(document.getElementById("sUID"), item_name[I_UID]);
	setText(document.getElementById("sPWD"), item_name[I_PWD]);
	setText(document.getElementById("sDefaultPort"), item_name[I_DEFAULT_PORT]);
	setText(document.getElementById("sAuth_Enable"), item_name[I_AUTH_ENABLE]);
	setText(document.getElementById("sNo"), item_name[I_NO]);
	setText(document.getElementById("sSSLTLS"), item_name[I_SSLTLS]);
	setText(document.getElementById("sSTARTTLS"), item_name[I_STARTTLS]);
	setText(document.getElementById("sSMTPServerAddress_snapshot"), item_name[I_HOSTNAME]);
	setText(document.getElementById("sSMTPServerPort_snapshot"), item_name[I_PORT]);
	setText(document.getElementById("sSenderEmailAddress_snapshot"), item_name[I_SENDER_ADDRESS]);
	setText(document.getElementById("sReceiverEmailAddress_snapshot"), item_name[I_RECEIVER_ADDRESS]);
	setText(document.getElementById("sUID_snapshot"), item_name[I_UID]);
	setText(document.getElementById("sPWD_snapshot"), item_name[I_PWD]);
	setText(document.getElementById("sDefaultPort_snapshot"), item_name[I_DEFAULT_PORT]);
	setText(document.getElementById("sAuth_Enable_snapshot"), item_name[I_AUTH_ENABLE]);
	setText(document.getElementById("sNo_snapshot"), item_name[I_NO]);
	setText(document.getElementById("sSSLTLS_snapshot"), item_name[I_SSLTLS]);
	setText(document.getElementById("sSTARTTLS_snapshot"), item_name[I_STARTTLS]);
	setText(document.getElementById("sTestTitle"), item_name[I_TEST_EMAIL_ACCOUNT]);
	setText(document.getElementById("sTestTitle_snapshot"), item_name[I_TEST_EMAIL_ACCOUNT_SNAPSHOT]);
	setText(document.getElementById("sInterval"), item_name[I_INTERVAL]);
	setText(document.getElementById("sInterval_snapshot"), item_name[I_INTERVAL]);
	setText(document.getElementById("sInterval_range"), item_name[I_INTERVAL_VIDEOCLIP_DES]);
	setText(document.getElementById("sInterval_range_snapshot"), item_name[I_INTERVAL_SNAPSHOT_DES]);
	document.getElementById("btn_save_setting").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting").value = item_name[I_NOT_SAVE_SETTING];
	document.getElementById("btn_save_setting2").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting2").value = item_name[I_NOT_SAVE_SETTING];
	document.getElementById("btn_test").value = item_name[I_TEST];
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_TITLE_INFO];
	document.getElementById("sHelpInfo").innerHTML =  des_item_name[D_HELP_INFO];
	document.getElementById("sTestTitleInfo").innerHTML = des_item_name[D_TEST_INFO];
	document.getElementById("sTestTitleInfo_snapshot").innerHTML = des_item_name[D_TEST_INFO];
}
function setConfig()
{
	//for video clip
	document.getElementById("input_smtp_server").value = ServerAddr;
	document.getElementById("input_smtp_port").value = ServerPort;
	document.getElementById("input_smtp_sender").value = SenderAddr;
	document.getElementById("input_smtp_receiver").value = ReceiverAddr1;
	document.getElementById("input_smtp_uid").value = ServerUID;
	document.getElementById("input_smtp_pwd").value = ServerPWD;
	document.getElementById("input_smtp_interval").value = Interval;
	if (SSLEnable == "1" || STARTTLSEnable == "1")
	{
		if (SSLEnable == "1" && STARTTLSEnable == "0")
			document.getElementsByName("radio_smtp_auth")[1].checked = true;
		else if (SSLEnable == "1" && STARTTLSEnable == "1")
			document.getElementsByName("radio_smtp_auth")[2].checked = true;
	}
	else
	{
		document.getElementsByName("radio_smtp_auth")[0].checked = true;
	}
	//for snapshot
	document.getElementById("input_smtp_server_snapshot").value = ServerAddr_snapshot;
	document.getElementById("input_smtp_port_snapshot").value = ServerPort_snapshot;
	document.getElementById("input_smtp_sender_snapshot").value = SenderAddr_snapshot;
	document.getElementById("input_smtp_receiver_snapshot").value = ReceiverAddr1_snapshot;
	document.getElementById("input_smtp_uid_snapshot").value = ServerUID_snapshot;
	document.getElementById("input_smtp_pwd_snapshot").value = ServerPWD_snapshot;
	document.getElementById("input_smtp_interval_snapshot").value = Interval_snapshot;
	if (SSLEnable_snapshot == "1" || STARTTLSEnable_snapshot == "1")
	{
		if (SSLEnable_snapshot == "1" && STARTTLSEnable_snapshot == "0")
			document.getElementsByName("radio_smtp_auth_snapshot")[1].checked = true;
		else if (SSLEnable_snapshot == "1" && STARTTLSEnable_snapshot == "1")
			document.getElementsByName("radio_smtp_auth_snapshot")[2].checked = true;
	}
	else
	{
		document.getElementsByName("radio_smtp_auth_snapshot")[0].checked = true;
	}
}
function save_setting_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	resetDefaultConfig();
        	if (parent)
        	{
        		setTimeout("parent.blockUI(false, '', 0);", 1000);
        	}
        	else
        		window.location.reload();
        }else {
            alert(pop_msg[PMSG_REQUEST_FAILED]);
        }
    }
}
function save_setting()
{
	if (checkIntRange(document.getElementById("input_smtp_port_snapshot").value,65535,1) == 1)
  	{
     	document.getElementById("input_smtp_port_snapshot").select();
     	alert(pop_msg[PMSG_INVALID_PORT]);
     	return;
  	}
  	if (checkIntRange(document.getElementById("input_smtp_interval_snapshot").value,86400,30) == 1)
  	{
     	document.getElementById("input_smtp_interval_snapshot").select();
     	//alert(pop_msg[PMSG_INVALID_PORT]);
     	alert("invalid range");
     	return;
  	}
	if (checkIntRange(document.getElementById("input_smtp_port").value,65535,1) == 1)
  	{
     	document.getElementById("input_smtp_port").select();
     	alert(pop_msg[PMSG_INVALID_PORT]);
     	return;
  	}
  	if (checkIntRange(document.getElementById("input_smtp_interval").value,86400,60) == 1)
  	{
     	document.getElementById("input_smtp_interval").select();
     	//alert(pop_msg[PMSG_INVALID_PORT]);
     	alert("invalid range");
     	return;
  	}
	var url = "/cgi/admin/email.cgi";
	var params = "";
	//for video clip
	params += "ServerAddr=" + encodeURIComponent(document.getElementById("input_smtp_server").value);
	params += "&SenderAddr=" + encodeURIComponent(document.getElementById("input_smtp_sender").value);
	params += "&ServerPort=" + encodeURIComponent(document.getElementById("input_smtp_port").value);
	params += "&ReceiverAddr1=" + encodeURIComponent(document.getElementById("input_smtp_receiver").value);
	params += "&UID=" + encodeURIComponent(document.getElementById("input_smtp_uid").value);
	params += "&PWD=" + encodeURIComponent(document.getElementById("input_smtp_pwd").value);
	params += "&Interval=" + encodeURIComponent(document.getElementById("input_smtp_interval").value);

	if (document.getElementById("input_smtp_uid").value == "" && document.getElementById("input_smtp_pwd").value == "")
		params += "&Authentication=0";
	else
		params += "&Authentication=1";

	if (document.getElementsByName("radio_smtp_auth")[0].checked)
	{
		params += "&SSL=0";
		params += "&STARTTLS=0"
	}
	else if (document.getElementsByName("radio_smtp_auth")[1].checked)
	{
		params += "&SSL=1";
		params += "&STARTTLS=0";
	}
	else if (document.getElementsByName("radio_smtp_auth")[2].checked)
	{
		params += "&SSL=1";
		params += "&STARTTLS=1";
	}
	//for snapshot
	params += "&ServerAddr_S=" + encodeURIComponent(document.getElementById("input_smtp_server_snapshot").value);
	params += "&SenderAddr_S=" + encodeURIComponent(document.getElementById("input_smtp_sender_snapshot").value);
	params += "&ServerPort_S=" + encodeURIComponent(document.getElementById("input_smtp_port_snapshot").value);
	params += "&ReceiverAddr1_S=" + encodeURIComponent(document.getElementById("input_smtp_receiver_snapshot").value);
	params += "&UID_S=" + encodeURIComponent(document.getElementById("input_smtp_uid_snapshot").value);
	params += "&PWD_S=" + encodeURIComponent(document.getElementById("input_smtp_pwd_snapshot").value);
	params += "&Interval_S=" + encodeURIComponent(document.getElementById("input_smtp_interval_snapshot").value);

	if (document.getElementById("input_smtp_uid_snapshot").value == "" && document.getElementById("input_smtp_pwd_snapshot").value == "")
		params += "&Authentication_S=0";
	else
		params += "&Authentication_S=1";

	if (document.getElementsByName("radio_smtp_auth_snapshot")[0].checked)
	{
		params += "&SSL_S=0";
		params += "&STARTTLS_S=0"
	}
	else if (document.getElementsByName("radio_smtp_auth_snapshot")[1].checked)
	{
		params += "&SSL_S=1";
		params += "&STARTTLS_S=0";
	}
	else if (document.getElementsByName("radio_smtp_auth_snapshot")[2].checked)
	{
		params += "&SSL_S=1";
		params += "&STARTTLS_S=1";
	}
	if (parent)
		parent.blockUI(true, item_name[I_SAVING], 1);
	makeRequest(url, params, save_setting_callback);
}
function test_callback(http_request)
{
	if (http_request.readyState == 4) 
	{
		if (parent)
			setTimeout("parent.blockUI(false, '', 0);", 1000);
        if (http_request.status == 200) 
        {
        	if (http_request.responseText == "success\r\n")
        	{
        		//setTimeout("alert('Send a test mail success');", 1050);
        		writeTestResult(pop_msg[PMSG_SMTP_TEST_SUCCESS]);
        	}
        	else if (http_request.responseText == "send_failed\r\n")
        	{
        		//setTimeout("alert('Send a test mail failure');", 1050);
        		writeTestResult(pop_msg[PMSG_SMTP_TEST_FAILED]);
        	}
        }
        else 
        {
        	setTimeout("alert(pop_msg[PMSG_REQUEST_FAILED]);", 1050);
        }
    }
}
function test()
{
	var url = "/cgi/admin/testserv.cgi";
	var params = "targetserv=email";
	params += "&hostname=" + encodeURIComponent(document.getElementById("input_smtp_server").value);
	params += "&sender=" + encodeURIComponent(document.getElementById("input_smtp_sender").value);
	params += "&port=" + encodeURIComponent(document.getElementById("input_smtp_port").value);
	params += "&receiver1=" + encodeURIComponent(document.getElementById("input_smtp_receiver").value);
	params += "&username=" + encodeURIComponent(document.getElementById("input_smtp_uid").value);
	params += "&password=" + encodeURIComponent(document.getElementById("input_smtp_pwd").value);
	if (document.getElementById("input_smtp_uid").value == "" && document.getElementById("input_smtp_pwd").value == "")
		params += "&auth=0";
	else
		params += "&auth=1";

	if (document.getElementsByName("radio_smtp_auth")[0].checked)
	{
		params += "&encrypt=0";
		params += "&starttls=0"
	}
	else if (document.getElementsByName("radio_smtp_auth")[1].checked)
	{
		params += "&encrypt=1";
		params += "&starttls=0";
	}
	else if (document.getElementsByName("radio_smtp_auth")[2].checked)
	{
		params += "&encrypt=1";
		params += "&starttls=1";
	}
	
	if (parent)
		parent.blockUI(true, item_name[I_TEST], 1);
	makeRequest(url, params, test_callback);
}
function test_snapshot()
{
	var url = "/cgi/admin/testserv.cgi";
	var params = "targetserv=email";
	params += "&hostname=" + encodeURIComponent(document.getElementById("input_smtp_server_snapshot").value);
	params += "&sender=" + encodeURIComponent(document.getElementById("input_smtp_sender_snapshot").value);
	params += "&port=" + encodeURIComponent(document.getElementById("input_smtp_port_snapshot").value);
	params += "&receiver1=" + encodeURIComponent(document.getElementById("input_smtp_receiver_snapshot").value);
	params += "&username=" + encodeURIComponent(document.getElementById("input_smtp_uid_snapshot").value);
	params += "&password=" + encodeURIComponent(document.getElementById("input_smtp_pwd_snapshot").value);
	if (document.getElementById("input_smtp_uid_snapshot").value == "" && document.getElementById("input_smtp_pwd_snapshot").value == "")
		params += "&auth=0";
	else
		params += "&auth=1";

	if (document.getElementsByName("radio_smtp_auth_snapshot")[0].checked)
	{
		params += "&encrypt=0";
		params += "&starttls=0"
	}
	else if (document.getElementsByName("radio_smtp_auth_snapshot")[1].checked)
	{
		params += "&encrypt=1";
		params += "&starttls=0";
	}
	else if (document.getElementsByName("radio_smtp_auth_snapshot")[2].checked)
	{
		params += "&encrypt=1";
		params += "&starttls=1";
	}
	
	params += "&testtype=snapshot";
	
	if (parent)
		parent.blockUI(true, item_name[I_TEST], 1);
	makeRequest(url, params, test_callback);
}
function resetDefaultConfig()
{
	//for video clip
	ServerAddr = document.getElementById("input_smtp_server").value;
	SenderAddr = document.getElementById("input_smtp_sender").value;
	ServerPort = document.getElementById("input_smtp_port").value;
	ServerUID = document.getElementById("input_smtp_uid").value;
	ServerPWD = document.getElementById("input_smtp_pwd").value;
	ReceiverAddr1 = document.getElementById("input_smtp_receiver").value;
	Interval = document.getElementById("input_smtp_interval").value;

	if (document.getElementById("input_smtp_uid").value == "" && document.getElementById("input_smtp_pwd").value == "")
		ServerAuth = "0";
	else
		ServerAuth = "1";

	if (document.getElementsByName("radio_smtp_auth")[0].checked)
	{
		SSLEnable = "0";
		STARTTLSEnable = "0";
	}
	else if (document.getElementsByName("radio_smtp_auth")[1].checked)
	{
		SSLEnable = "1";
		STARTTLSEnable = "0";
	}
	else if (document.getElementsByName("radio_smtp_auth")[2].checked)
	{
		SSLEnable = "1";
		STARTTLSEnable = "1";
	}
	//for snapshot
	ServerAddr_snapshot = document.getElementById("input_smtp_server_snapshot").value;
	SenderAddr_snapshot = document.getElementById("input_smtp_sender_snapshot").value;
	ServerPort_snapshot = document.getElementById("input_smtp_port_snapshot").value;
	ServerUID_snapshot = document.getElementById("input_smtp_uid_snapshot").value;
	ServerPWD_snapshot = document.getElementById("input_smtp_pwd_snapshot").value;
	ReceiverAddr1_snapshot = document.getElementById("input_smtp_receiver_snapshot").value;
	Interval_snapshot = document.getElementById("input_smtp_interval_snapshot").value;

	if (document.getElementById("input_smtp_uid_snapshot").value == "" && document.getElementById("input_smtp_pwd_snapshot").value == "")
		ServerAuth_snapshot = "0";
	else
		ServerAuth_snapshot = "1";

	if (document.getElementsByName("radio_smtp_auth_snapshot")[0].checked)
	{
		SSLEnable_snapshot = "0";
		STARTTLSEnable_snapshot = "0";
	}
	else if (document.getElementsByName("radio_smtp_auth_snapshot")[1].checked)
	{
		SSLEnable_snapshot = "1";
		STARTTLSEnable_snapshot = "0";
	}
	else if (document.getElementsByName("radio_smtp_auth_snapshot")[2].checked)
	{
		SSLEnable_snapshot = "1";
		STARTTLSEnable_snapshot = "1";
	}

	setConfig();
	resizePage();
}
function writeTestResult(result)
{
	if (result != "")
	{
		document.getElementById("pTestResult").style.display = "";
		document.getElementById("sTestResult").style.display = "";
		setText(document.getElementById("sTestResult"), result);
	}
	else
	{
		document.getElementById("pTestResult").style.display = "none";
		document.getElementById("sTestResult").style.display = "none";
		setText(document.getElementById("sTestResult"), result);
	}
	resizePage();
}
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF">
  <table id="space_container" border="0" cellpadding="0" cellspacing="0" width="100%" align="center" bgcolor="#FFFFFF" bordercolordark="#FFFFFF" height="100%">
    <tr>
      <td valign="top">
		<table id="data_container" border="0" cellpadding="0" cellspacing="0" width="100%" align="center" bgcolor="#FFFFFF" bordercolordark="#FFFFFF" height="100%">
		  <tr>
  			<td valign="top" id="maincontent_container" height="100%">
    		  <table height="100%" width=100% border="0" cellpadding="0" cellspacing="0" bgcolor="white">
    			<tr>
    			  <td>
    				<div id="maincontent">
      				  <!-- === BEGIN MAINCONTENT === -->
      				  <div id="box_header"> 
      				    <h1><span id="sTitle">Mail</span></h1>
      				      <span id="sTitleInfo">
      					    This section allows you to setup and configure the email notification 
						    settings for your camera. If your details change or you are experiencing 
						    issues with alert notifications, you may need to modify these settings.
						  </span>  
        			    <div align=center>
        			      <span>&nbsp;</span>
        			      <p></p>
        			      <INPUT id="btn_save_setting" type="button" width="80" value=" Save Settings " onClick="save_setting();">
        			      <span>&nbsp;&nbsp;</span>
        			      <INPUT id="btn_not_save_setting" type="button" width="80" value=" Don't Save Settings " onClick="init(true);">
        			    </div>
        			    <div align="left">
        			      <p id="pTestResult" style="display: none"></p>
        				  <span id="sTestResult" style="display: none; color:red"></span>
        			    </div>
      				  </div>
      				<div class="box">
        			  <h2><span id="sEmailTitle_snapshot">E-mail Account - Snapshot</span></h2>
        			    <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        			      <TR>
          				    <TD width="145px">&nbsp;<span id="sSMTPServerAddress_snapshot">SMTP Server Address</span></TD>
          				    <TD>
          				      <span>&nbsp;</span>
          				      <INPUT type="text" size=36 maxlength=64 id="input_smtp_server_snapshot" name="input_smtp_server_snapshot" value="">
          				    </TD>
        				  </TR>
        				  <TR>
          				    <TD>&nbsp;<span id="sSMTPServerPort_snapshot">SMTP Server Port</span></TD>
          				    <TD>
          				      <span>&nbsp;</span>
          				      <INPUT type="text" size=36 id="input_smtp_port_snapshot" name="input_smtp_port_snapshot"> 
						      <span id="sDefaultPort_snapshot">(Default is 25)</span>
						    </TD>
        				  </TR>
        				  <TR>
          				    <TD>&nbsp;<span id="sSenderEmailAddress_snapshot">Sender E-mail Address</span></TD>
          				    <TD>
          				      <span>&nbsp;</span>
          				      <INPUT type="text" size=36 maxlength=64 id="input_smtp_sender_snapshot" name="input_smtp_sender_snapshot" value="">
          				    </TD>
        				  </TR>
        				  <TR>
          				    <TD>&nbsp;<span id="sReceiverEmailAddress_snapshot">Receiver E-mail Address</span></TD>
          				    <TD>
          				      <span>&nbsp;</span>
          				      <INPUT type="text" size=36 maxlength=256 id="input_smtp_receiver_snapshot" name="input_smtp_receiver_snapshot" value="">
          				    </TD>
        				  </TR>
        				  <TR>
          				    <TD>&nbsp;<span id="sUID_snapshot">User Name</span></TD>
          				    <TD>
          				      <span>&nbsp;</span>
          				      <INPUT type="text" size=36 maxlength=64 id="input_smtp_uid_snapshot" name="input_smtp_uid_snapshot" value="">
          				    </TD>
        				  </TR>
        				  <TR>
          				    <TD>&nbsp;<span id="sPWD_snapshot">Password</span></TD>
          				    <TD>
          				      <span>&nbsp;</span>
          				      <INPUT type="password" size=36 maxlength=32 id="input_smtp_pwd_snapshot" name="input_smtp_pwd_snapshot" value="">
          				    </TD>
        				  </TR>
        				  <TR>
          				    <TD>&nbsp;<span id="sInterval_snapshot">Interval</span></TD>
          				    <TD>
          				      <span>&nbsp;</span>
          				      <INPUT type="text" size=5 maxlength=5 id="input_smtp_interval_snapshot" name="input_smtp_interval_snapshot" value="">
          				      <span id="sInterval_range_snapshot">Seconds (Range : 30 to 86400 seconds)</span>
          				    </TD>
        				  </TR>
        				</table>
        				<table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">  
        				  <TR>
          				    <TD width="148px">&nbsp;<span id="sAuth_Enable_snapshot">Use SSL-TLS/STARTTLS</span></TD>
          				    <TD>
            				  <input type=radio name="radio_smtp_auth_snapshot"><span id="sNo_snapshot">No</span>
            				  <input type=radio name="radio_smtp_auth_snapshot"><span id="sSSLTLS_snapshot">SSL-TLS</span>
            				  <input type=radio name="radio_smtp_auth_snapshot"><span id="sSTARTTLS_snapshot">STARTTLS</span>
          				    </TD>
        				  </TR>
        			    </table>
      				  </div>
      				  <div class="box">
        			    <h2><span id="sTestTitle_snapshot">Test E-mail Account - Snapshot</span></h2>
        			    <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        				  <TR>
          				    <TD></TD>
          				    <TD colspan=2><span id="sTestTitleInfo_snapshot">A test e-mail will be sent to the e-mail account listed above.</span></TD>
          				    <TD><p align=right><INPUT type="button" width="80" id="btn_test_snapshot" value=" Test " onclick="test_snapshot();"></p></TD>
        				  </TR>
        			    </table>
      				  </div>
      				  <div class="box">
        			  <h2><span id="sEmailTitle">E-mail Account - Video Clip</span></h2>
        			    <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        			      <TR>
          				    <TD width="145px">&nbsp;<span id="sSMTPServerAddress">SMTP Server Address</span></TD>
          				    <TD>
          				      <span>&nbsp;</span>
          				      <INPUT type="text" size=36 maxlength=64 id="input_smtp_server" name="input_smtp_server" value="">
          				    </TD>
        				  </TR>
        				  <TR>
          				    <TD>&nbsp;<span id="sSMTPServerPort">SMTP Server Port</span></TD>
          				    <TD>
          				      <span>&nbsp;</span>
          				      <INPUT type="text" size=36 id="input_smtp_port" name="input_smtp_port"> 
						      <span id="sDefaultPort">(Default is 25)</span>
						    </TD>
        				  </TR>
        				  <TR>
          				    <TD>&nbsp;<span id="sSenderEmailAddress">Sender E-mail Address</span></TD>
          				    <TD>
          				      <span>&nbsp;</span>
          				      <INPUT type="text" size=36 maxlength=64 id="input_smtp_sender" name="input_smtp_sender" value="">
          				    </TD>
        				  </TR>
        				  <TR>
          				    <TD>&nbsp;<span id="sReceiverEmailAddress">Receiver E-mail Address</span></TD>
          				    <TD>
          				      <span>&nbsp;</span>
          				      <INPUT type="text" size=36 maxlength=256 id="input_smtp_receiver" name="input_smtp_receiver" value="">
          				    </TD>
        				  </TR>
        				  <TR>
          				    <TD>&nbsp;<span id="sUID">User Name</span></TD>
          				    <TD>
          				      <span>&nbsp;</span>
          				      <INPUT type="text" size=36 maxlength=64 id="input_smtp_uid" name="input_smtp_uid" value="">
          				    </TD>
        				  </TR>
        				  <TR>
          				    <TD>&nbsp;<span id="sPWD">Password</span></TD>
          				    <TD>
          				      <span>&nbsp;</span>
          				      <INPUT type="password" size=36 maxlength=32 id="input_smtp_pwd" name="input_smtp_pwd" value="">
          				    </TD>
        				  </TR>
        				  <TR>
          				    <TD>&nbsp;<span id="sInterval">Interval</span></TD>
          				    <TD>
          				      <span>&nbsp;</span>
          				      <INPUT type="text" size=5 maxlength=5 id="input_smtp_interval" name="input_smtp_interval" value="">
          				      <span id="sInterval_range">Seconds (Range : 60 to 86400 seconds)</span>
          				    </TD>
        				  </TR>
        				</table>
        				<table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">  
        				  <TR>
          				    <TD width="148px">&nbsp;<span id="sAuth_Enable">Use SSL-TLS/STARTTLS</span></TD>
          				    <TD>
            				  <input type=radio name="radio_smtp_auth"><span id="sNo">No</span>
            				  <input type=radio name="radio_smtp_auth"><span id="sSSLTLS">SSL-TLS</span>
            				  <input type=radio name="radio_smtp_auth"><span id="sSTARTTLS">STARTTLS</span>
          				    </TD>
        				  </TR>
        			    </table>
      				  </div>
      				  <div class="box">
        			    <h2><span id="sTestTitle">Test E-mail Account - Video Clip</span></h2>
        			    <table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        				  <TR>
          				    <TD></TD>
          				    <TD colspan=2><span id="sTestTitleInfo">A test e-mail will be sent to the e-mail account listed above.</span></TD>
          				    <TD><p align=right><INPUT type="button" width="80" id="btn_test" value=" Test " onclick="test();"></p></TD>
        				  </TR>
        			    </table>
      				  </div>
      				  <p align=center>
        			    <input type="hidden" name="ConfigSystemEmail" value="Save">
        			    <span>&nbsp;</span>
        			    <INPUT id="btn_save_setting2" type="button" width="80" value=" Save Settings " onClick="save_setting();">
        			    <span>&nbsp;&nbsp;</span>
        			    <INPUT id="btn_not_save_setting2" type="button" width="80" value=" Don't Save Settings " onClick="init(true);">
      				  </p>
      				  <!-- === END MAINCONTENT === -->
    			    </div>
    			  </td>
    		    </tr>
    		    <tr height=100%><td></td></tr>
    		  </table>
  		    </td>
		  </tr>
	    </table>
	  </td>
	  <td valign="top" width="150" id="sidehelp_container" align="left">
   	    <table cellpadding="2" cellspacing="0" border="0" bgcolor="#FFFFFF" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#FFFFFF">
    	  <tr>
      		<td id="help_text">
      		  <span id="sHelpInfo">
        	    <b>Helpful Hints..</b>
        	    <br><br><b>SMTP Server Address</b>:
        	    <br>This is the domain name or IP address of your external email server.
        	    <br><br><b>Sender E-mail Address</b>:
        	    <br>This is the email address of the person sending the camera 
			    snapshots.
        	    <br><br><b>Receiver E-mail Address</b>:
        		<br>This is the email address of recipient for the SMTP server.
        		<br><br><b>User Name</b>: 
        		<br>The user name of your email account.
        		<br><br><b>Password</b>: 
        		<br>The password of your email account.
        		<br><br><b>Use SSL-TLS/STARTTLS</b>: 
        		<br>Select <b>SSL-TLS</b> or <b>STARTTLS</b> if SMTP server requires TLS 
				authentication.
			  </span>
      		</td>
    	  </tr>
    	</table>
  	  </td>
    </tr>
  </table>
  <script type="text/javascript" language="javascript">init(false);</script>
</body>
</html>
