<!DOCTYPE html>
<html>
<head>
<title></title>
<meta http-equiv="X-UA-Compatible" content="requiresActiveX=true">
<meta content="text/html; charset=utf-8" http-equiv=Content-Type>
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-EQUIV="Expires" CONTENT="-1">
<script type="text/javascript" language="Javascript">
var authorization="<% getAuthorization(); %>";
var CameraName="<% getCamSystemInfo(CameraName); %>";
var IndicatedLED="<% getCamSystemInfo(IndicatedLED); %>";
var SnapshotAuthentication="<% getHTTPInfo(SnapshotAuthentication); %>";
var UserAccess="<% getHTTPInfo(Authenticate); %>";
var IncludeDateTime="<% getTextOverlayInfo(IncludeDateTime); %>";
var OSDChColor="<% getTextOverlayInfo(ChColor); %>";
var OSDText="<% getTextOverlayInfo(Text); %>";
var IP="<% getNetStatus(IP); %>";
var usersList = new Array();
<% printUserList(users) %>
function getConfig(configName)
{
	return eval(configName);
}
</script>
</head>
<body onload="if(parent)parent.ifDataOK();">
</body>
</html>
