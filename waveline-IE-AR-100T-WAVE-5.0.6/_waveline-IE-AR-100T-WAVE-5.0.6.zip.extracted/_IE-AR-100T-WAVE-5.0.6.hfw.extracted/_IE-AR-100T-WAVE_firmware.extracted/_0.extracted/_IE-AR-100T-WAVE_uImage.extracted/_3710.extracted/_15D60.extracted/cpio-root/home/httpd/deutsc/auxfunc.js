  
function isValidIP(ip){
	isValidIP(ip,"");
}

function isValidIP(ip,name) {
    var numbers=ip.split(".");
    var result=true;
    var head="";
    if (typeof(name) == "undefined") var name="";
    if (name.length>0) head=name+": ";
    if(numbers.length !=4) {
      alert(head+unescape("Dies ist keine IP-Adresse. Bitte %FCberpr%FCfen!"));
      result=false;
    } else {
      for(i=0;i<numbers.length;++i) {
        if(isNaN(numbers[i]) || (numbers[i]=="") || (numbers[i]<0) || (numbers[i]>255)) {
          alert(head+unescape("Dies ist keine IP-Adresse. Bitte %FCberpr%FCfen!"));
          result=false;
	  break;
	}
      }

      if(result && (numbers[3] == 0)) { // if result is false alert only one error
        alert(head+unescape("Falsche IP-Adresse f%FCr einen Host. Dies ist eine Netzwerkadresse (x.x.x.0)!"));
        result=false;
      }

      if(result && (numbers[3] == 255)) {
        alert(head+unescape("Falsche IP-Adresse f%FCr einen Host. Dies ist eine Broadcast-Adresse (x.x.x.255)!"));
        result=false;
      }

      if(result && (numbers[0] >= 224)) {
        alert(head+unescape("Falsche IP-Adresse f%FCr einen Host. Dies ist eine Multicast-Adresse!"));
        result=false;
      }

      if(result && (numbers[0] == 127)) {
        alert(head+unescape("Falsche IP-Adresse f%FCr einen Host. 127.x.x.x ist ein reservierter Adressbereich!"));
        result=false;
      }
    }

    return result;
  }

  function isValidNet(ip) {
		isValidNet(ip,"");
  }

  function isValidNet(ip,name) {
    var numbers=ip.split(".");
    var result=true;
    var head="";
    if (typeof(name) == "undefined") var name="";
    if (name.length>0) head=name+": ";     
    if(numbers.length !=4) {
      alert(head+unescape("Dies ist keine IP-Netzwerk-Adresse. Bitte %FCberpr%FCfen!"));
      result=false;
    } else {
      for(i=0;i<numbers.length;++i) {
        if(isNaN(numbers[i]) || (numbers[i]=="") || (numbers[i]<0) || (numbers[i]>255)) {
          alert(head+unescape("Dies ist keine IP-Netzwerk-Adresse. Bitte %FCberpr%FCfen!"));
          result=false;
	        break;
	}
      }

      if(result && ((numbers[3] % 2) != 0)) { // if result is false alert only one error
        alert(head+unescape("Falsche IP-Adresse f%FCr ein Netzwerk."));
        result=false;
      }

      if(result && (numbers[0] >= 224)) {
        alert(head+unescape("Falsche IP-Adresse f%FCr ein Netzwerk. Dies ist eine Multicast-Adresse!"));
        result=false;
      }

      if(result && (numbers[0] == 127)) {
        alert(head+unescape("Falsche IP-Adresse f%FCr ein Netzwerk. 127.x.x.x ist ein reservierter Adressbereich!"));
        result=false;
      }
    }

    return result;
  }

  function isValidMask(mask) {
    var result=true;
    return result;
  }

  function getSig(mask) {
    var result=0;
    var n=1;
    var numbers=mask.split(".")
    var i=0;
    while (i<4 && n!=0) {
      if(numbers[i]>254) { n = 8; }
      else { if(numbers[i]>253) { n = 7; }
             else { if(numbers[i]>251) { n = 6; }
                    else { if(numbers[i]>247) { n = 5; }
                           else { if(numbers[i]>239) { n = 4; }
                                  else { if(numbers[i]>223) { n = 3; }
                                         else { if(numbers[i]>191) { n = 2; }
                                                else { if(numbers[i]>127) { n = 1; }
                                                       else { n=0; }}}}}}}}
      i++;
      result += n;
      if (n<8) n=0;
    }
    return result;
  }

  