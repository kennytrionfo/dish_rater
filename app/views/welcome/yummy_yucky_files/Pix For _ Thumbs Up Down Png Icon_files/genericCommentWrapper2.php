var IDCommentScript=document.createElement("script");IDCommentScript.type="text/javascript";IDCommentScript.src = "http://intensedebate.com/comment/3bce96a0b0088004dab644fe10745aa9/generic/368151955";var theScripts=document.getElementsByTagName("script");if(document.readyState&&document.readyState!='complete'){if(window.addEventListener){window.addEventListener("load",attachScript,false);}else if(window.attachEvent){window.attachEvent('onload',attachScript);}}else attachScript();function attachScript(){if(typeof(idcomments_div)=="undefined"){if(document.getElementById('idc-container')){document.getElementById('idc-container').parentNode.insertBefore(IDCommentScript,document.getElementById('idc-container'));}else{var found=false;for(var i=0;i<theScripts.length;i++){if(theScripts[i].src.indexOf('genericCommentWrapper.js')>=0||theScripts[i].src.indexOf('genericCommentWrapperV2.js')>=0){var found=true;var theDiv=document.createElement("div");theDiv.id="idc-container";theScripts[i].parentNode.insertBefore(theDiv,theScripts[i]);theScripts[i].parentNode.insertBefore(IDCommentScript,theScripts[i]);break;}}if(found==false){setTimeout("attachScript(IDCommentScript);",100);}}}else{if(document.getElementById(idcomments_div)){var theDiv=document.createElement("div");theDiv.id="idc-container";document.getElementById(idcomments_div).appendChild(theDiv);document.getElementById(idcomments_div).appendChild(IDCommentScript);}else{alert("A div with id '"+idcomments_div+"' could not be found.  Please double check this is set correctly.");}}}