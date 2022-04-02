function isValidIP(ip) {
var result=true;

var numbers=ip.split(".");

if(numbers.length !=4) {
  alert("Invalid IP address for a host. Please check!");
  result=false;
} else {
  for(i=0;i<numbers.length;++i) {
    if(isNaN(numbers[i]) || (numbers[i]<0) || (numbers[i]>255)) {
      alert("Invalid IP address for a host. Please check!");
      result=false;
      break;
    }
  }

  if(numbers[3] == 0) {
    alert("Invalid IP address for a host. You specified a network address (x.x.x.0)!");
    result=false;
  }

  if(numbers[3] == 255) {
    alert("Invalid IP address for a host. You specified a broadcast address (x.x.x.255)!");
    result=false;
  }

  if(numbers[0] >= 224) {
    alert("Invalid IP address for a host. You specified a multicast address!");
    result=false;
  }

  if(numbers[0] == 127) {
    alert("Invalid IP-Address for a host. 127.x.x.x is reserved!");
    result=false;
  }
}

return result;
}


  function isValidNet(ip) {
    var numbers=ip.split(".");
    var result=true;
        
    if(numbers.length !=4) {
      alert("Invalid IP address. Please check!");
      result=false;
    } else {
      for(i=0;i<numbers.length;++i) {
        if(isNaN(numbers[i]) || (numbers[i]=="") || (numbers[i]<0) || (numbers[i]>255)) {
          alert("Invalid IP address. Please check!");
          result=false;
	  break;
	} 
      }
      
      if(result && ((numbers[3] % 2) != 0)) { // if result is false alert only one error
        alert("Invalid network IP address.");
        result=false;
      }
    
      if(result && (numbers[0] >= 224)) {
        alert("Invalid network IP address. You specified a multicast address!");
        result=false;
      }
      
      if(result && (numbers[0] == 127)) {
        alert("Invalid network IP address. 127.x.x.x is reserved!");
        result=false;
      }
    }
    
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

  