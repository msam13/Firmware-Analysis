<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" rev="stylesheet" href="dlink.css?cidx=1.012013-04-19" type="text/css">
<link rel="stylesheet" rev="stylesheet" href="icons.css" type="text/css">
<link rel="stylesheet" rev="stylesheet" href="jQuery/jquery-ui-1.8.6.custom.css" type="text/css">
<title></title>
<meta http-equiv="X-UA-Compatible" content="requiresActiveX=true">
<meta content="text/html; charset=utf-8" http-equiv=Content-Type>
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-EQUIV="Expires" CONTENT="-1">
<script type="text/javascript" language="Javascript" SRC="function.js"></script>
<script type="text/javascript" language="Javascript" SRC="cookies.js"></script>
<script type="text/javascript" language="Javascript" SRC="jQuery/jquery-1.4.2.min.js"></script>
<script type="text/javascript" language="Javascript" SRC="jQuery/jquery-ui-1.8.6.custom.min.js"></script>
<script type="text/javascript" language="Javascript">
var language = "<% getCamSystemInfo(Language); %>"
if (getCookie("language") != null)
	language = getCookie("language");
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_sounddb.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var DefaultLanguage="<% getCamSystemInfo(Language); %>";
var authorization="<% getAuthorization(); %>";
var profile = parseInt(getWebQuery("profile", "5"), 10);
var AD_Enable="<% getADInfo(Enable); %>";
var AD_Sensitivity="<% getADInfo(Sensitivity); %>";
//AD_Sensitivity = (100 - parseInt(AD_Sensitivity, 10)).toString();
var MicEnable="<% getAudioProfile0Info(MicEnable); %>";
var AudioCodec="<% getAudioProfile0Info(EncodeFormat); %>";
AudioCodec="0";
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
		if (MicEnable == "1")
		{
			document.getElementById("tb_mic_disabled").style.display = "none";
			document.getElementById("tb_audio_detect").style.display = "";
			initViewer();
		}
		else
		{
			document.getElementById("tb_mic_disabled").style.display = "";
			document.getElementById("tb_audio_detect").style.display = "none";
			document.getElementById("btn_save_setting").disabled = true;
			document.getElementById("btn_save_setting2").disabled = true;
			document.getElementById("btn_not_save_setting").disabled = true;
			document.getElementById("btn_not_save_setting2").disabled = true;
		}	
	}
	setConfig();
	onADEnable();
	resizePage();
}
function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_SOUND_DETECTION]);
	setText(document.getElementById("sSoundDetectionSetting"), item_name[I_SOUND_DETECTION_SETTING]);
	setText(document.getElementById("sSoundDetection"), item_name[I_SOUND_DETECTION_ITEM]);
	setText(document.getElementById("sEnable"), item_name[I_ENABLE]);
	setText(document.getElementById("sDisable"), item_name[I_DISABLE]);
	setText(document.getElementById("sDetectionLevel"), item_name[I_LEVEL]);
	setText(document.getElementById("sDB"), item_name[I_DB]);
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_TITLE_INFO];
	document.getElementById("sMicrophoneDisabled").innerHTML =  des_item_name[D_MICROPHONE_DISABLED];
	document.getElementById("btn_save_setting").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting").value = item_name[I_NOT_SAVE_SETTING];
	document.getElementById("btn_save_setting2").value = item_name[I_SAVE_SETTING];
	document.getElementById("btn_not_save_setting2").value = item_name[I_NOT_SAVE_SETTING];
}
function setConfig()
{
	if (AD_Enable == "1")
		document.getElementsByName("radioADEnable")[0].checked = true;
	else
		document.getElementsByName("radioADEnable")[1].checked = true;
	//document.getElementById("selectLevel").value = AD_Sensitivity;
	//mapping to cgi spec
	var nAdSen = parseInt(AD_Sensitivity, 10);
	if (nAdSen < 50)
		document.getElementById("selectLevel").value = "50";
	else if (nAdSen > 50 && nAdSen < 55)
		document.getElementById("selectLevel").value = "50";
	else if (nAdSen > 55 && nAdSen < 60)
		document.getElementById("selectLevel").value = "55";
	else if (nAdSen > 60 && nAdSen < 65)
		document.getElementById("selectLevel").value = "60";
	else if (nAdSen > 65 && nAdSen < 70)
		document.getElementById("selectLevel").value = "65";
	else if (nAdSen > 70 && nAdSen < 75)
		document.getElementById("selectLevel").value = "70";
	else if (nAdSen > 75 && nAdSen < 80)
		document.getElementById("selectLevel").value = "75";
	else if (nAdSen > 80 && nAdSen < 85)
		document.getElementById("selectLevel").value = "80";
	else if (nAdSen > 85 && nAdSen < 90)
		document.getElementById("selectLevel").value = "85";
	else if (nAdSen > 90 && nAdSen < 95)
		document.getElementById("selectLevel").value = "90";
	else if (nAdSen > 95 && nAdSen < 100)
		document.getElementById("selectLevel").value = "95";
	else
		document.getElementById("selectLevel").value = AD_Sensitivity;
}
function onADEnable()
{
	if (document.getElementsByName("radioADEnable")[0].checked)
	{
		document.getElementById("selectLevel").disabled = false;
	}
	else
	{
		document.getElementById("selectLevel").disabled = true;
	}
}
function onLevelChange()
{
	var live_obj = getLiveObj();
	if (live_obj)
	{
		live_obj.set_audio_detect_sensitivity(document.getElementById("selectLevel").value);
	}
}
function setUCXSize(uwidth,uheight){
	var appletFrame = document.getElementById? document.getElementById('div_object'): document.all? document.all['div_object']: null;
	appletFrame.style.height = uheight;
	appletFrame.style.width = uwidth;
	appletFrame.focus();
}
function getLiveObj()
{
	var nonie_video = document.getElementById("ucx_obj");
	var ie_video = document.getElementById("ucx");
	var obj_video = null;
	if (nonie_video && typeof(nonie_video.ApiInit) != "undefined")
		obj_video = nonie_video;
	else if (ie_video && typeof(ie_video.ApiInit) != "undefined")
		obj_video = ie_video;	
	return obj_video;
}
function initViewer()
{
	var langIdx = 0;
    if (DefaultLanguage == "tc")
		langIdx = 1;
	else if (DefaultLanguage == "sc")
		langIdx = 2;
	var divObj = document.getElementById("div_object");
	var remote_host = document.location.hostname;
	var remote_port = "80";
	var remote_protocol = "http";
	if (location.protocol.toLowerCase() == "https:")
	{
		if (document.location.port != "")
			remote_port = document.location.port.toString();
		else
			remote_port = "443";
		remote_protocol = "https";	
	}
	else
	{
		if (document.location.port != "")
			remote_port = document.location.port.toString();
		else
			remote_port = "80";
	}
	var audioProfile = parseInt(AudioCodec, 10);
	live_view = "<object \
  	  			classid = 'clsid:CAFEEFAC-0017-0000-FFFF-ABCDEFFEDCBA' \
  	  			width = '100%' height = '100%' id='ucx_obj' name='ucx_obj'> \
  	  			<param name = 'code' value = 'org.fiti.camera.viewer.UltraCam'> \
  	  			<param name = 'archive' value = '" + remote_protocol + ":\/\/" + remote_host + ":" + remote_port + "\/ultracam.jar' > \
  	  			<param name = 'name' value = 'ucx' > \
  	  			<param name = 'id' value = 'ucx' > \
  	  			<param name = 'type' value = 'application\/x-java-applet'> \
  	  			<param name = 'mode' value='5' > \
  	  			<param name = 'scriptable' value = 'true'> \
  	  			<param name = 'mayscript' value='false'> \
  	  			<comment> \
				<embed \
  	          	type = 'application\/x-java-applet' \
  	          	code = 'org.fiti.camera.viewer.UltraCam' \
  	          	archive = '" + remote_protocol + ":\/\/" + remote_host + ":" + remote_port + "\/ultracam.jar' \
  	          	name = 'ucx' \
  	          	id = 'ucx' \
  	          	width = '100%' \
  	          	height = '100%' \
  	          	mode ='5'  \
  	          	scriptable = 'true' \
		    	mayscript ='false' \
				<\/embed> \
  	  			<\/comment> \
				<\/object> \
				";
	divObj.style.height = "240px";
	divObj.style.width = "576px";			
	divObj.innerHTML = live_view;
	divObj.focus();
	setTimeout("waitJavaInstalled();", 500);
}
function waitJavaInstalled()
{
	var live_obj = getLiveObj();
	if (live_obj == null)
		setTimeout("waitJavaInstalled();", 500);
	else
		initJava();
}
function initJava()
{
	var live_obj = getLiveObj();
	if (live_obj)
	{
		var remote_host = document.location.hostname;
		var remote_port = "80";
		live_obj.ApiInit();
		if (location.protocol.toLowerCase() == "https:")
		{
			if (document.location.port != "")
				remote_port = document.location.port.toString();
			else
				remote_port = "443";
			live_obj.SSLEnable("1");
			live_obj.set_conn_host(remote_host, remote_port);
		}
		else
		{
			if (document.location.port != "")
				remote_port = document.location.port.toString();
			else
				remote_port = "80";
			live_obj.SSLEnable("0");
			live_obj.set_conn_host(remote_host, remote_port);
		}
		var userAndPwd = decodeBase64(authorization).split(":");
		if (userAndPwd.length == 2)
		{
			var uid = userAndPwd[0];
			var pwd = userAndPwd[1];
			live_obj.set_authentication(uid, pwd);
		}
		//h264
		if(profile == 5)
		{
			live_obj.set_video_type("2");
			//mp4
			live_obj.SetRecType("1");
		}
		//mjpeg
		else if (profile == 1)
		{
			live_obj.set_video_type("0");
			//avi
			live_obj.SetRecType("0");
		}
		live_obj.set_audio_type("0");
		live_obj.Play();
		setTimeout("getLiveObj().set_audio_detect_sensitivity(AD_Sensitivity);", 1000);
	}
}
function resetDefaultConfig()
{
	if (document.getElementsByName("radioADEnable")[0].checked)
	{
		AD_Enable = "1";
		AD_Sensitivity = document.getElementById("selectLevel").value;
		var live_obj = getLiveObj();
		if (live_obj)
		{
			live_obj.set_audio_detect_sensitivity(AD_Sensitivity);
		}
	}
	else
		AD_Enable = "0";
		
	setConfig();
	onADEnable();
	resizePage();
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
	var url = "/cgi/admin/ad.cgi";
	var params = "action=update";
	if (document.getElementsByName("radioADEnable")[0].checked)
	{
		params += "&enable=1";
		params += "&sensitivity=" + encodeURIComponent(document.getElementById("selectLevel").value);
		//params += "&sensitivity=" + encodeURIComponent((100 - parseInt(document.getElementById("selectLevel").value, 10)).toString());
	}
	else
	{
		params += "&enable=0";
	}
	if (parent)
		parent.blockUI(true, "Saving", 0);
	makeRequest(url, params, save_setting_callback);
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
      					<h1><span id="sTitle">Sound Detection</span></h1>
      					<span id="sTitleInfo">
						  In this section, you can configure the sound detection settings for your 
						  camera.
						  <br><br>Please note that your computer needs to have Java installed in 
						  order to view the sound dB/Time window. If you do not see the sound 
						  dB/Time window below, please visit <a href="http://www.java.com">
						  http://www.java.com</A> to download and install Java.
						</span>
						<p></p>
        				<div align=center>
        				  <span>&nbsp;</span>
        				  <INPUT id ="btn_save_setting" type="button" width="80" value=" Save Settings "  onclick="save_setting();">
        				  <span>&nbsp;&nbsp;</span>
        				  <INPUT id ="btn_not_save_setting" type="button" width="80" value=" Don't Save Settings " onClick="init(true);">
        				</div>
      				  </div>
      				  <div class="box">
        			    <h2><span id="sSoundDetectionSetting">Sound Detection Settings</span></h2>
        			    <table id="tb_mic_disabled" cellpadding="2" cellspacing="1" border="0" width="670" bgcolor="white" bordercolor="#FFFFFF">
        				  <TR>
        				    <TD>
        				      <span id="sMicrophoneDisabled">Microphone is disabled, please enable microphone.</span>
        				    </TD>
        				  </TR>
        				</table>  
        				<table id="tb_audio_detect" cellpadding="2" cellspacing="1" border="0" width="670" bgcolor="white" bordercolor="#FFFFFF">
        				  <TR>
          					<TD width="137"><span id="sSoundDetection">Sound Detection</span></TD>
          					<TD width="533">
            				  <input type=radio name="radioADEnable" onclick="onADEnable();"><span id="sEnable">Enable</span> 
							  <span>&nbsp;&nbsp;&nbsp;</span>
							  <input type=radio name="radioADEnable" onclick="onADEnable();"><span id="sDisable">Disable</span>
          					</TD>
        				  </TR>
        				  <TR>
          					<TD><span id="sDetectionLevel">Detection Level</span></TD>
          					<TD>
            				  <SELECT id="selectLevel" size="1" onchange="onLevelChange();">
            				    <OPTION value="50">50</OPTION>
            				    <OPTION value="55">55</OPTION>
            				    <OPTION value="60">60</OPTION>
            				    <OPTION value="65">65</OPTION>
            				    <OPTION value="70">70</OPTION>
            				    <OPTION value="75">75</OPTION>
            				    <OPTION value="80">80</OPTION>
            				    <OPTION value="85">85</OPTION>
            				    <OPTION value="90">90</OPTION>
            				    <OPTION value="100">100</OPTION>
            				  </SELECT> <span id="sDB">dB</span>
          					</TD>
        				  </TR>
        			    </table>
        				<table cellpadding="2" cellspacing="1" border="0" width="534" bgcolor="white" bordercolor="#FFFFFF">
        				  <TR><TD colspan=2 style="padding: 3px 0px 3px 10px;"></TD></TR>
        				  <TR>
          					<TD bgcolor="white">            
            				  <span id="id_jre" style="color:red;display:none;"><br><br><b>Please 
								visit <a href="http://www.java.com">http://www.java.com</A> to 
								download and install Java.</b><br><br><br>
							  </span>
            				  <div id="div_object" name="div_object" style="width: 576px;height: 240px"></div>
           					</TD>
           					<TD valign=bottom></TD>
        				  </TR>
        			    </table>
      				  </div>
      				  <p align=center>
        				<input type="hidden" name="ConfigSystemSoundDB" value="Save">
        				<span>&nbsp;</span>
        				<INPUT id ="btn_save_setting2" type="button" width="80" value=" Save Settings "  onclick="save_setting();">
        				<span>&nbsp;&nbsp;</span>
        				<INPUT id ="btn_not_save_setting2" type="button" width="80" value=" Don't Save Settings " onClick="init(true);">
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
	</tr>
  </table>
  <script type="text/javascript" language="javascript">init(false);</script>
</body>  
</html>
