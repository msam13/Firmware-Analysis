<!DOCTYPE html>
<html>
<head>
<title></title>
<meta http-equiv="X-UA-Compatible" content="requiresActiveX=true">
<meta content="text/html; charset=utf-8" http-equiv=Content-Type>
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-EQUIV="Expires" CONTENT="-1">
<script type="text/javascript" language="Javascript">
var TimeZone="<% getDataTimeInfo(TimeZone); %>";
var DayLightSaving="<% getDataTimeInfo(DayLightSaving); %>";
var TimeSyncType="<% getDataTimeInfo(Protocol); %>"
var NTPServer="<% getDataTimeInfo(NTPServerIP); %>";
var NTPInterval="<% getDataTimeInfo(SyncSchedule); %>";
var DstAuto="<% getDataTimeInfo(DstAuto); %>";
var Offset="<% getDataTimeInfo(Offset); %>";
var Starttime="<% getDataTimeInfo(Starttime); %>";
var Stoptime="<% getDataTimeInfo(Stoptime); %>";
var CameraDate="<% getDate(); %>";
var CameraTime="<% getTime(); %>";
var CameraDateTime=CameraDate + " " + CameraTime;
var lockDateTime="<% getMyDlinkInfo(LRCLockDateTime); %>";

function getConfig(configName)
{
	return eval(configName);
}
</script>
</head>
<body onload="if(parent)parent.ifDataOK();">
</body>
</html>
