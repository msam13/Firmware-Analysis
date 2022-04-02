<!DOCTYPE html>
<html>
<head>
<title></title>
<meta http-equiv="X-UA-Compatible" content="requiresActiveX=true">
<meta content="text/html; charset=utf-8" http-equiv=Content-Type>
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-EQUIV="Expires" CONTENT="-1">
<script type="text/javascript" language="Javascript">
var Wireless="<% getHWInfo(Wireless); %>";
var CameraName="<% getCamSystemInfo(CameraName); %>";
var DateTime="<% getDateTime(); %>";
var Version="<% getHWInfo(Version); %>";
var Build="<% getHWInfo(Build); %>";
var Mac="<% getNetStatus(Mac); %>";
var IP="<% getNetStatus(IP); %>";
var SubnetMask="<% getNetStatus(SubnetMask); %>";
var Gateway="<% getNetStatus(Gateway); %>";
var DNS0="<% getNetStatus(DNS0); %>";
var DNS1="<% getNetStatus(DNS1); %>";
var Wan_IP="<% getNetStatus(WanIP); %>";
var DDNSEnable="<% getDDNSInfo(Enable); %>";
var UPnPPortForward="<% getUPnPInfo(EnablePortForward); %>";
var SSID="<% getWirelessClientInfo(SSID); %>";
var Mode="<% getWirelessClientInfo(Mode); %>";
var Authentication="<% getWirelessClientInfo(Authentication); %>";
var Encryption="<% getWirelessClientInfo(Encryption); %>";
var Link="<% getWirelessStatus(Link); %>";
var Channel="<% getWirelessStatus(Channel); %>";
var PPPoE="<% getNetStatus(PPPoE); %>";
var PPPoEEnable="<% getIPv4Info(PPPoEEnable); %>";
var AgentVersion="<% getAgentInfo(AgentVersion); %>";
var HWVersion="A"

function getConfig(configName)
{
	return eval(configName);
}
</script>
</head>
<body onload="if(parent)parent.ifDataOK();">
</body>
</html>
