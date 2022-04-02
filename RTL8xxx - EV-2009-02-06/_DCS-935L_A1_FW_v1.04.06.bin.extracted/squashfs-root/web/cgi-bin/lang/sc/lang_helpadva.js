﻿var languageNum = new Array("en","sc","tc");
var item_name = new Array("支持菜单", "设置向导", "网络设置",
"无线设置",
"扩展设置",
"动态DNS",
"IP 过滤器",
"图像设置",
"音频和视频",
"隐私遮罩",
"动作探测",
"声音侦测",
"邮件",
"FTP",
"快照",
"视频剪辑",
"时间和日期",
"日/夜模式",
""
);
var I_SUPPORT_MENU = 0;
var I_WIZARD = 1;
var I_NETWORK_SETUP = 2;
var I_WIRELESS_SETUP = 3;
var I_EXTENDER_SETUP = 4;
var I_DDNS = 5;
var I_IPFILTER = 6;
var I_IMAGE_SETUP = 7;
var I_AUDIO_VIDEO_SETUP = 8;
var I_PRIVACY_MASK = 9;
var I_MOTION_DETECTION = 10;
var I_SOUND_DETECTION = 11;
var I_MAIL = 12;
var I_FTP = 13;
var I_SNAPSHOT = 14;
var I_VIDEO_CLIP = 15;
var I_TIME_AND_DATE = 16;
var I_DAY_NIGHT_MODE = 17;

var des_item_name = new Array (
"<b>Internet连接设置向导</b> - 使用向导帮助您完成摄像机的网络设置，本页用于设置DCS-935L。这可使用静态IP手动完成，使用DHCP客户端（动态主机配置协议是一种网络协议，其允许客户端从服务器上租用IP地址一段时间）或PPPoE自动完成。\
<br><br><b>PPPoE</b> - （以太网上点对点协议）。当您在建立同Internet服务供应商的账号时，如果您使用DCS-935L直接连接到Internet，在这些域中您将需要输入所提供给您的用户名和密码。\
<br><br><b>动态DNS</b> - (动态域名服务) 如果您已经设置了动态DNS服务，DCS-935L使用的公用IP地址那么在这些域中您需要提供用户名和密码。这将允许动态DNS追踪IP地址即使其会改变。",
"<b>LAN配置</b> - 这可输入固定IP手动完成，或使用DHCP连接（动态主机配置协议是一种网络协议，其允许客户端从服务器上租用IP地址一段时间）或PPPoE自动完成。\
<br><br><b>PPPoE</b>（以太网上点对点协议） - 如果您使用DCS-935L直接连接到Internet，您将需要输入由Internet服务供应商提供的有效的用户名和密码。\
<br><br><b>DNS</b> (域名系统)服务器是一种Internet服务，可以将域名（如：www.dlink.com）转换为IP地址（如：192.168.0.20）。DNS IP地址可以从ISP处获得。\
<br><br><b>端口设置</b> - 多数ISP没有为住宅用户开启端口80 (DCS-935L默认视频传输端口)，DCS-935L能够变更HTTP端口来使用不同的端口用于视频流动。任何未使用的端口都能采用，如端口800、801等等。注意，当DCS-935L位于路由器后面时，您将需要将此端口转发到DCS-935L的IP地址。当访问此摄像机时，您需要键入摄像机的IP地址，然后填入端口号（如：http://192.168.0.20:800）。\
<br><br><b>UPnP设置</b> - UPnP是通用即插即用的缩写，它是一种网络架构可在网络设备、软件、以及外设提供兼容性。DCS-935L 是已启用UPnP的摄像机，它将和其它UPnP设备一起工作。 该功能默认为启用。 如果您不想使用此功能，通过选择禁用可禁用它。\
<br><br><b>UPnP端口转发</b> - UPnP端口转发将允许IP摄像机同UPnP兼容的网络路由器通信，得到简化的本地网络设备访问和通过Internet的远程访问。为了允许UPnP端口转发，您首先需要确保在路由器上支持UPnP且能工作。一旦确认，您将需要在您IP摄像机上启用UPnP端口转发。如果使用的默认端口对于端口转发是空闲的，或您需要修改使用中的HTTP端口来允许正确的UPnP端口转发。在将正确的网络端口指派到IP摄像机后，此后您将能够在Internet上访问您的IP摄像机。像机。\
<br><br><b>Bonjour</b> - 如果启动，则可通过Bonjour进入摄像机操作- 激活浏览器，例如 Mac 浏览器。\
<br><br><b>Bonjour名称</b> - 在这里输入您的摄像机的名称。这个名称在Bonjour服务器中会显示。",
"<b>SSID</b> - 此为无线网络的唯一识别符。\
<br><br><b>信道</b> - 可为网络选择任何信道。如果在某个信道上有很多干扰，您可随时修改此信道。\
<br><br><b>连接模式</b> - Infrastructure连接是采用接入点作为所有无线客户端传输点的无线连接方式。Ad-Hoc是无需接入点，直接连接摄像机到计算机的无线连接方式。\
<br><br><b>站点搜索</b> - 将显示一个弹出窗口，允许您为连接的选择无线网络。\
<br><br><b>无线安全模式</b> -\
<br><b>无</b> - 无加密设置。 \
<br><b>WEP 加密</b> - 有线等效保密，64位和128位以16进制格式，或ASCII (文本)格式。 \
<br><b>64位</b> -> 16进制10字符，ASCII 5字符。 \
<br><b>128位</b> -> 16进制26字符，ASCII 13字符。  \
<br><b>WPA-PSK / WPA2-PSK</b> - 带预先共享密钥的Wireless 保护访问,需要填写密钥域。 支持TKIP (临时密钥完整性协议)和AES。",
"<b>扩展无线网络设置</b> - 在此章节，您可以配置相机的无线扩展功能，它可以让您扩展现有的无线网络的范围。您可以选择为扩展网络保留相同的无线网络名称，或者也可以创建新的名称。\
<br><br><b>扩展无线网络安全</b> -\
<br><b>无</b> - 无加密设置。 \
<br><b>WEP 加密</b> - 有线等效保密，64位和128位以16进制格式，或ASCII (文本)格式。 \
<br><b>64位</b> -> 16进制10字符，ASCII 5字符。 \
<br><b>128位</b> -> 16进制26字符，ASCII 13字符。  \
<br><b>WPA-PSK / WPA2-PSK</b> - 带预先共享密钥的Wireless 保护访问,需要填写密钥域。 支持TKIP (临时密钥完整性协议)和AES。 ",
"<b>动态DNS(动态域名服务)</b> - 自动同步调制解调器的公用IP地址。使用您从ISP处购买的主机名，每个用户都能连接到您的摄像机。在使用动态DNS服务时，需要用户名和密码。\
<br><br><b>服务器地址</b> - 动态DNS地址。 您可手动输入地址或从下拉菜单中选择一个动态DNS服务器。\
<br><br><b>主机名</b> - 从动态DNS服务中所应用的域名。\
<br><br><b>用户名</b> - 动态DNS服务的账号名。\
<br><br><b>密码</b> - 动态DNS服务账号的密码。\
<br><br><b>超时</b> - 动态DNS重新开始连接的时间间隔。",
"<b>IP 过滤器</b> - 为了能够启动你摄像机的 IP 过滤器，你必须开启 'IP 过滤'。然后，在这个页面设置相关的内容。\
<br><br><b>过滤的种类</b> - 你可以选择过滤器名单中的 IP 地址是允许还是拒绝连接到这台摄像机。\
<br><br><b>过滤器名单</b> - 需要过滤的 IP 地址列表。\
<br><br><b>单个</b> - 指定单个 IP 地址。\
<br><br><b>子网段</b> - 指定整个子网段。\
<br><br><b>范围</b> - 指定一段范围的 IP 地址。\
<br><br><b>管理者 IP 位址</b> - 你可以设定一个 IP 位址来作为管理者 IP，这个 IP 地址可以永远使用这台摄像机。",
"<b>亮度</b> - 用于补偿背景光。\
<br><br><b>饱和度</b> - 控制从黑白到浓厚颜色的强度。\
<br><br><b>对比度</b> - 可调整物体之间的颜色对比度。在阴暗的天气下可帮助提高图像品质。\
<br><br><b>色调</b> - 用来改变不同色相的程度对人眼的的感觉。\
<br><br><b>锐度</b> - 调整这个项目以控制画面锐度。\
<br><br><b>黑白</b> - 选择在摄像机上启用或禁用黑白模式。\
<br><br><b>镜像</b> - 选择此选项可得到镜射的影像。\
<br><br><b>翻转</b> - 当摄像机倒置安装在天花板上时，选择该功能。\
<br><br><b>频率</b> - 您需要选择关闭或50或60Hz（取决于所在国家）。",
"<b>视频配置文件</b> - 您可以单独地对摄像机的四种视频类型配置不同的图像设置（比如图像质量和帧速率）。 H.264和JPEG。\
<br><br><b>分辨率</b> - 有多种尺寸可供选择。\
<br><br><b>FPS(帧/秒)</b> - 1秒中内显示的帧的最大数量。此摄像机支持的最高视频画质为30fps。人的肉眼一般察觉不到高于15fps的帧速率。\
<br><br><b>bps(比特/秒)</b> - 为摄像机的运行选择一个固定的带宽。此选项允许用户选择一个与带宽和存储空间相匹配的自定义的帧速率。\
<br><br><b>品质</b> - 设置图像的品质。选择最佳，表示已达到最佳的图像品质。\
<br><br><b>音频设置</b> - 可以开启或关闭麦克风，或是调节音量。\
<br><br><b>启用话筒</b> - 启用此功能可以监控来自IP摄像机上话筒的声音。\
<br><br><b>话筒音量</b> - 您可以通过音量等级设置来调节话筒的音量。",
"<b>隐私遮罩</b> - 单击附加框以激活此功能。现在，使用鼠标绘制覆盖你想隐藏的区域的矩形。",
"<b>动作探测</b> - 当设置为“启用”时，动作探测被打开。 当设置为“禁用”时，动作探测被关闭。",
"<b>声音侦测</b> - 当启用，声音侦测功能将开启；当禁用时，声音侦测功能关闭。",
"<b>SMTP服务器地址</b> - 此为您的外部邮件服务器的域名或IP地址。\
<br><br><b>发件人E-mail地址</b> - 此为摄像机图像发送人的email地址。\
<br><br><b>收件人E-mail地址</b> - 此为SMTP服务器的收件人的email地址。\
<br><br><b>用户名</b> - email账号的用户名。\
<br><br><b>密码</b> - email账号的密码。\
<br><br><b>间隔</b> - 每張快照/每段视频剪辑的间隔。\
<br><br><b>使用SSL-TLS/STARTTLS</b> - 如果SMTP服务器需要TLS验证，选择SSL-TLS或STARTTLS。\
<br><br><b>测试email账户</b> - 此将发送一个快照到您已配置的email账户。如果您已正确配置了SMTP账户，您将能够发送一个测试文件到收件人的email账户。",
"<b>主机名</b> - 此为您将连接到的FTP服务器的IP地址。\
<br><br><b>端口</b> - 默认为端口21。\
<br><br><b>用户名</b> - 访问外部FTP服务器所需的用户名。\
<br><br><b>密码</b> - 访问外部FTP服务器所需的密码。\
<br><br><b>路径</b> - 指定外部FTP服务器中的目标文件夹。\
<br><br><b>间隔</b> - 每張快照/每段视频剪辑的间隔。\
<br><br><b>被动模式</b> - 如果您的摄像机位于受防火墙保护的路由器之后，启用被动模式将允许访问外部FTP服务器。\
<br><br><b>测试FTP服务器</b> - 当您单击 测试 后，一个图像文件会被发送到FTP 服务器。",
"<b>快照</b> - 启用此功能，您可以将1张或6张静止图片作为E－mail的附件发送到FTP服务器卡上。\
<br><br><b>触发条件</b>\
<br><b>动作</b> - 在检测到动作后开始快照。\
<br><b>计划</b> - 在特定时间进行快照。\
<br><b>总是</b> - 连续快照。\
<br><b>声音</b> - 在检测到声音后开始快照。\
<br><br><b>快照类型</b> - 选择单一快照或者六张快照。\
<br><br><b>目标</b> - 你可以选择快照的目标是 FTP 还是 E-mail。",
"<b>视频剪辑</b> - 启用此功能，您可以将一个视频剪辑作为E－mail的附件发送到FTP服务器上。\
<br><br><b>触发条件</b>\
<br><b>动作</b> - 在检测到动作后开始视频剪辑。\
<br><b>计划</b> - 在指定时间开始视频剪辑。\
<br><b>总是</b> - 连续视频剪辑。\
<br><b>声音</b> - 在检测到声音后开始视频剪辑。\
<br><br><b>视频剪辑</b> - 您可以设置需要的视频配置，预先录制和最长时间。\
<br><br><b>预先录制</b> - 在动作发生前有多少秒被记录到视频剪辑中。\
<br><br><b>最长时间</b> - 明确说明需要录制多少秒\
<br><br><b>目标</b> - 你可以选择视频剪辑的目标是 FTP 还是 E-mail。",
"<b>时区</b> - 摄像机本地时间设置的地理区域。\
<br><br><b>启用夏令时</b> - 自动夏令时\
<br><br><b>自动夏令时</b> - 如果选择此模式，则根据所选时区的夏令时间来自动调整时钟。\
<br><br><b>手动设置夏令时</b> - 手动调整并设置夏令时。\
<br><br><b>偏移值</b> - 设置夏令时启用时将增加或减少的时间。\
<br><br><b>夏令时日期</b> - 设置夏令时开始和结束的日期。\
<br><br><b>与NTP服务器同步</b> - 选择此选项后，摄像机启动后将通过Internet和NTP服务器进行时间同步。如果NTP服务器不可到达，将不会应用任何时间设置。\
<br><br><b>NTP服务器</b> - NTP服务器的IP地址或域名。\
<br><br><b>手动设置日期和时间</b> - 手动调整并设置日期和时间。\
<br><br><b>复制您的计算机时间设置</b> - 将摄像机的的日期和时间与您的计算机进行同步。",
"<b>自动</b> - 摄像机自动切换日/夜模式。摄像机通常工作在日间模式。在黑暗的地方,将会自动切换到夜间模式。\
<br><br><b>手动</b> - 在实时浏览页面中,用户可以手动切换成日间/夜间模式。\
<br><br><b>保持日间模式</b> - 摄像机保持工作在日间模式。\
<br><br><b>保持夜间模式</b> - 摄像机保持工作在夜间模式。\
<br><br><b>日间模式计划</b> - 摄像机可以根据事先设定的计划任务自动切换成日间模式,并在其余时间工作在夜间模式。",
""
);

var D_WIZARD = 0;
var D_NETWORK_SETUP = 1;
var D_WIRELESS_SETUP = 2;
var D_EXTENDER_SETUP = 3;
var D_DDNS = 4;
var D_IPFILTER = 5;
var D_IMAGE_SETUP = 6;
var D_AUDIO_VIDEO_SETUP = 7;
var D_PRIVACY_MASK = 8;
var D_MOTION_DETECTION = 9;
var D_SOUND_DETECTION = 10;
var D_MAIL = 11;
var D_FTP = 12;
var D_SNAPSHOT = 13;
var D_VIDEO_CLIP = 14;
var D_TIME_AND_DATE = 15;
var D_DAY_NIGHT_MODE = 16;
