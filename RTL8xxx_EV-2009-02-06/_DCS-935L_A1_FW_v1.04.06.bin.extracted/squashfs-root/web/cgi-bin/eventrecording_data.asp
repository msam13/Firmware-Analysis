<!DOCTYPE html>
<html>
<head>
<title></title>
<meta http-equiv="X-UA-Compatible" content="requiresActiveX=true">
<meta content="text/html; charset=utf-8" http-equiv=Content-Type>
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-EQUIV="Expires" CONTENT="-1">
<script type="text/javascript" language="Javascript">
var FTP_ServerAddr="<% getEventServerFTPInfo(ServerAddr); %>";
var FTP_ServerPort="<% getEventServerFTPInfo(ServerPort); %>";
var FTP_ServerUID="<% getEventServerFTPInfo(UID); %>";
var FTP_ServerPWD="<% getEventServerFTPInfo(PWD); %>";
var FTP_ServerDIRPath="<% getEventServerFTPInfo(DIRPath); %>";
var FTP_ServerPassive="<% getEventServerFTPInfo(Passive); %>";
var EMAIL_ServerAddr="<% getEventServerSMTPInfo(ServerAddr); %>";
var EMAIL_SenderAddr="<% getEventServerSMTPInfo(SenderAddr); %>";
var EMAIL_ServerPort="<% getEventServerSMTPInfo(ServerPort); %>";
var EMAIL_SSLEnable="<% getEventServerSMTPInfo(SSL); %>";
var EMAIL_STARTTLSEnable="<% getEventServerSMTPInfo(STARTTLS); %>";
var EMAIL_ServerUID="<% getEventServerSMTPInfo(UID); %>";
var EMAIL_ServerPWD="<% getEventServerSMTPInfo(PWD); %>";
var EMAIL_ServerAuth="<% getEventServerSMTPInfo(Authentication); %>";
var EMAIL_ReceiverAddr1="<% getEventServerSMTPInfo(ReceiverAddr1); %>";
var EMAIL_ReceiverAddr2="<% getEventServerSMTPInfo(ReceiverAddr2); %>";
var MotionEnableTrigger="<% getEventConfigMotionTrigInfo(Enable); %>";
var SoundEnableTrigger="<% getEventConfigAudioTrigInfo(Enable); %>";
var ScheduleEnableTrigger="<% getEventConfigScheduleTrigInfo(Enable); %>";
var Profile="<% getEventConfigMotionTrigInfo(Profile); %>";
var SendEmail="<% getEventConfigMotionTrigInfo(SendEmail); %>";
var FTPUpload="<% getEventConfigMotionTrigInfo(FTPUpload); %>";
var EncodeFormat="<% getEventConfigGeneralInfo(EncodeFormat); %>";
var FileFormat="<% getEventConfigGeneralInfo(FileFormat); %>";
var PrebufferTime="<% getEventConfigGeneralInfo(PrebufferTime); %>";
var PostbufferTime="<% getEventConfigGeneralInfo(PostbufferTime); %>";
var lstarr = new Array();
<% getScheData(); %>
function data(name,weekday, start, end){
	var startarr;
	var endarr;
	this.name = name;
	this.weekday = null;
	this.start = null;
	this.starthr = null;
	this.startmin = null;
	this.endhr = null;
	this.endmin = null;
	if(weekday!=null)this.weekday = weekday;	
	if(start!=null)
	{
	
	this.start = start;
	startarr = start.split(":");
	this.starthr = startarr[0];
	this.startmin = startarr[1];

	}
	if(end!=null)
	{
	this.end = end;	
	endarr = end.split(":");
	this.endhr = endarr[0];
	this.endmin = endarr[1];

	}
	
	this.clone = function(){
		return new data(this.name,this.weekday,this.start,this.end);
	}
	this.equals = function (dataobj){
		if((dataobj.name == this.name)&&
		(dataobj.weekday == this.weekday)&&
		(dataobj.start == this.start)&&
		(dataobj.end == this.end))
			return true;
		return false;
		
	}
}
function getConfig(configName)
{
	return eval(configName);
}
</script>
</head>
<body onload="if(parent)parent.ifDataOK();">
</body>
</html>
