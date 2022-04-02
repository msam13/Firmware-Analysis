﻿var languageNum = new Array("en","sc","tc");
var item_name = new Array("友訊科技", "無線", "網際網路攝影機",
"即時影像",
"產品", 
"韌體版本", 
"第 4 步：設定時區",
"上一步",
"下一步",
"取消",
"目前時間",
"時區",
""
);
var I_DINK_CORPORATION = 0;
var I_WIRELESS = 1;
var I_INTERNET_CAMERA = 2;
var I_LIVE_VIDEO = 3;
var I_PRODUCT = 4;
var I_FWVERSION = 5;
var I_TITLE = 6;
var I_BACK = 7;
var I_NEXT = 8;
var I_CANCEL = 9;
var I_CURRECT_TIME = 10;
var I_TIMEZONE = 11;

var des_item_name = new Array (
"版權所有 2014 友訊科技股份有限公司",
"請設定正確時間，確保所有事件的觸發、擷取與排程日期時間是正確的，再按<b>下一步</b>。<br><br>",
""
);

var D_COPYRIGHT = 0;
var D_TITLE_IFNO = 1;

var option_content = new Array (
"(GMT-12:00) 國際換日線以西",
"(GMT-10:00) 夏威夷",
"(GMT-09:00) 阿拉斯加",
"(GMT-08:00) 太平洋時區 (美國 & 加拿大)",
"(GMT-08:00) 提華納、下加里福尼亞",
"(GMT-07:00) 奇瓦瓦、拉巴斯、馬薩特蘭",
"(GMT-07:00) 山區時間 (美國 & 加拿大)",
"(GMT-07:00) 亞歷桑納",
"(GMT-06:00) 中美洲",
"(GMT-06:00) 瓜達拉哈拉、墨西哥市、蒙特雷",
"(GMT-06:00) 薩克斯其萬省",
"(GMT-06:00) 中央標準時區 (美國 & 加拿大)",
"(GMT-05:00) 波哥大、利馬、基多",
"(GMT-05:00) 東方標準時區 (美國 & 加拿大)",
"(GMT-05:00) 印第安納州 (東部)",
"(GMT-04:30) 卡拉卡斯",
"(GMT-04:00) 拉巴斯、喬治城、聖胡安",
"(GMT-04:00) 大西洋時間 (加拿大)",
"(GMT-04:00) 聖地牙哥",
"(GMT-04:00) 馬瑙斯",
"(GMT-04:00) 亞松森",
"(GMT-04:00) 庫亞巴",
"(GMT-03:30) 紐芬蘭",
"(GMT-03:00) 布宜諾斯艾利斯",
"(GMT-03:00) 巴西利亞",
"(GMT-03:00) 格陵蘭",
"(GMT-03:00) 蒙特維多",
"(GMT-03:00) 卡宴、福塔雷薩",
"(GMT-03:00) 薩爾瓦多",
"(GMT-02:00) 中大西洋",
"(GMT-01:00) 亞速爾群島",
"(GMT-01:00) 維德角群島",
"(GMT) 卡薩布蘭加",
"(GMT) 格林威治標準時間：都柏林、愛丁保、里斯本、倫敦",
"(GMT) 蒙羅維亞、雷克雅維克",
"(GMT+01:00) 貝爾格勒、伯拉第斯拉瓦、布達佩斯、盧布爾雅那、布拉格",
"(GMT+01:00) 西中非",
"(GMT+01:00) 塞拉耶佛、史可普列、華沙、札格拉布",
"(GMT+01:00) 布魯塞爾、哥本哈根、馬德里、巴黎",
"(GMT+01:00) 阿姆斯特丹、柏林、伯恩、羅馬、斯德哥爾摩、維也納",
"(GMT+01:00) 溫得和克",
"(GMT+02:00) 赫爾辛基、基輔、索非亞、塔林、維爾紐斯",
"(GMT+02:00) 雅典、布佳勒斯特、伊斯坦堡",
"(GMT+02:00) 貝魯特",
"(GMT+02:00) 哈拉雷、普利托里亞",
"(GMT+02:00) 開羅",
"(GMT+02:00) 安曼",
"(GMT+02:00) 耶路撒冷",
"(GMT+02:00) 大馬士革",
"(GMT+02:00) 尼古西亞",
"(GMT+03:00) 明斯克、加里寧格勒",
"(GMT+03:00) 巴格達",
"(GMT+03:00) 奈洛比",
"(GMT+03:00) 科威特、利雅德",
"(GMT+03:30) 德黑蘭",
"(GMT+04:00) 莫斯科、聖彼得堡、伏爾加格勒",
"(GMT+04:00) 巴庫",
"(GMT+04:00) 阿布達比、馬斯喀特",
"(GMT+04:00) 第比利斯",
"(GMT+04:00) 葉里溫",
"(GMT+04:00) 路易港",
"(GMT+04:30) 喀布爾",
"(GMT+05:00) 伊斯蘭馬巴德、喀拉蚩、塔什干",
"(GMT+05:30) 金奈、加爾各答、孟買、新德里",
"(GMT+05:30) 斯里蘭卡",
"(GMT+05:45) 加德滿都",
"(GMT+06:00) 阿斯塔那、達卡",
"(GMT+06:00) 葉卡捷琳堡",
"(GMT+06:30) 仰光",
"(GMT+07:00) 曼谷、河內、雅加達",
"(GMT+07:00) 新西伯利亞",
"(GMT+08:00) 北京、重慶、香港、烏魯木齊",
"(GMT+08:00) 台北",
"(GMT+08:00) 烏蘭巴托",
"(GMT+08:00) 伯斯",
"(GMT+08:00) 吉隆坡、新加坡",
"(GMT+08:00) 克拉斯諾亞爾斯克",
"(GMT+09:00) 大阪、札幌、東京",
"(GMT+09:00) 首爾",
"(GMT+09:00) 伊爾庫次克",
"(GMT+09:30) 阿得萊德",
"(GMT+09:30) 達爾文",
"(GMT+10:00) 霍巴特",
"(GMT+10:00) 布里斯班",
"(GMT+10:00) 坎培拉、墨爾本、雪梨",
"(GMT+10:00) 關島、摩爾斯比港",
"(GMT+10:00) 亞庫次克",
"(GMT+11:00) 所羅門群島、新喀裡多尼亞",
"(GMT+11:00) 海參威",
"(GMT+12:00) 斐濟",
"(GMT+12:00) 奧克蘭、威靈頓",
"(GMT+12:00) 馬加丹",
"(GMT+13:00) 努瓜婁發",
"(GMT+13:00) 薩摩亞",
""
);

var O_LANG_TIMEZONE_START = 0;

var pop_msg = new Array (
"請求失敗",
""
);

var PMSG_REQUEST_FAILED = 0;

