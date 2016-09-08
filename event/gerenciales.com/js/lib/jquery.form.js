(function(a){function b(){var a="[jquery.form] "+Array.prototype.join.call(arguments,"");if(window.console&&window.console.log){window.console.log(a)}else if(window.opera&&window.opera.postError){window.opera.postError(a)}}a.fn.ajaxSubmit=function(c){function t(e){function A(c){if(n.aborted||z){return}try{x=u(m)}catch(d){b("cannot access response document: ",d);c=t}if(c===s&&n){n.abort("timeout");return}else if(c==t&&n){n.abort("server abort");return}if(!x||x.location.href==i.iframeSrc){if(!q)return}m.detachEvent?m.detachEvent("onload",A):m.removeEventListener("load",A,false);var e="success",f;try{if(q){throw"timeout"}var g=i.dataType=="xml"||x.XMLDocument||a.isXMLDoc(x);b("isXml="+g);if(!g&&window.opera&&(x.body==null||x.body.innerHTML=="")){if(--y){b("requeing onLoad callback, DOM not available");setTimeout(A,250);return}}var h=x.body?x.body:x.documentElement;n.responseText=h?h.innerHTML:null;n.responseXML=x.XMLDocument?x.XMLDocument:x;if(g)i.dataType="xml";n.getResponseHeader=function(a){var b={"content-type":i.dataType};return b[a]};if(h){n.status=Number(h.getAttribute("status"))||n.status;n.statusText=h.getAttribute("statusText")||n.statusText}var k=i.dataType||"";var o=/(json|script|text)/.test(k.toLowerCase());if(o||i.textarea){var p=x.getElementsByTagName("textarea")[0];if(p){n.responseText=p.value;n.status=Number(p.getAttribute("status"))||n.status;n.statusText=p.getAttribute("statusText")||n.statusText}else if(o){var v=x.getElementsByTagName("pre")[0];var C=x.getElementsByTagName("body")[0];if(v){n.responseText=v.textContent?v.textContent:v.innerHTML}else if(C){n.responseText=C.innerHTML}}}else if(i.dataType=="xml"&&!n.responseXML&&n.responseText!=null){n.responseXML=B(n.responseText)}try{w=D(n,i.dataType,i)}catch(c){e="parsererror";n.error=f=c||e}}catch(c){b("error caught: ",c);e="error";n.error=f=c||e}if(n.aborted){b("upload aborted");e=null}if(n.status){e=n.status>=200&&n.status<300||n.status===304?"success":"error"}if(e==="success"){i.success&&i.success.call(i.context,w,"success",n);j&&a.event.trigger("ajaxSuccess",[n,i])}else if(e){if(f==undefined)f=n.statusText;i.error&&i.error.call(i.context,n,e,f);j&&a.event.trigger("ajaxError",[n,i,f])}j&&a.event.trigger("ajaxComplete",[n,i]);if(j&&!--a.active){a.event.trigger("ajaxStop")}i.complete&&i.complete.call(i.context,n,e);z=true;if(i.timeout)clearTimeout(r);setTimeout(function(){if(!i.iframeTarget)l.remove();n.responseXML=null},100)}function v(){function h(){try{var a=u(m).readyState;b("state = "+a);if(a.toLowerCase()=="uninitialized")setTimeout(h,50)}catch(c){b("Server abort: ",c," (",c.name,")");A(t);r&&clearTimeout(r);r=undefined}}var c=g.attr("target"),e=g.attr("action");f.setAttribute("target",k);if(!d){f.setAttribute("method","POST")}if(e!=i.url){f.setAttribute("action",i.url)}if(!i.skipEncodingOverride&&(!d||/post/i.test(d))){g.attr({encoding:"multipart/form-data",enctype:"multipart/form-data"})}if(i.timeout){r=setTimeout(function(){q=true;A(s)},i.timeout)}var j=[];try{if(i.extraData){for(var n in i.extraData){j.push(a('<input type="hidden" name="'+n+'" />').attr("value",i.extraData[n]).appendTo(f)[0])}}if(!i.iframeTarget){l.appendTo("body");m.attachEvent?m.attachEvent("onload",A):m.addEventListener("load",A,false)}setTimeout(h,15);f.submit()}finally{f.setAttribute("action",e);if(c){f.setAttribute("target",c)}else{g.removeAttr("target")}a(j).remove()}}function u(a){var b=a.contentWindow?a.contentWindow.document:a.contentDocument?a.contentDocument:a.document;return b}var f=g[0],h,i,j,k,l,m,n,o,p,q,r;if(e){for(h=0;h<e.length;h++){a(f[e[h].name]).attr("disabled",false)}}if(a(":input[name=submit],:input[id=submit]",f).length){alert('Error: Form elements must not have name or id of "submit".');return}i=a.extend(true,{},a.ajaxSettings,c);i.context=i.context||i;k="jqFormIO"+(new Date).getTime();if(i.iframeTarget){l=a(i.iframeTarget);p=l.attr("name");if(p==null)l.attr("name",k);else k=p}else{l=a('<iframe name="'+k+'" src="'+i.iframeSrc+'" />');l.css({position:"absolute",top:"-1000px",left:"-1000px"})}m=l[0];n={aborted:0,responseText:null,responseXML:null,status:0,statusText:"n/a",getAllResponseHeaders:function(){},getResponseHeader:function(){},setRequestHeader:function(){},abort:function(c){var d=c==="timeout"?"timeout":"aborted";b("aborting upload... "+d);this.aborted=1;l.attr("src",i.iframeSrc);n.error=d;i.error&&i.error.call(i.context,n,d,c);j&&a.event.trigger("ajaxError",[n,i,d]);i.complete&&i.complete.call(i.context,n,d)}};j=i.global;if(j&&!(a.active++)){a.event.trigger("ajaxStart")}if(j){a.event.trigger("ajaxSend",[n,i])}if(i.beforeSend&&i.beforeSend.call(i.context,n,i)===false){if(i.global){a.active--}return}if(n.aborted){return}o=f.clk;if(o){p=o.name;if(p&&!o.disabled){i.extraData=i.extraData||{};i.extraData[p]=o.value;if(o.type=="image"){i.extraData[p+".x"]=f.clk_x;i.extraData[p+".y"]=f.clk_y}}}var s=1;var t=2;if(i.forceSync){v()}else{setTimeout(v,10)}var w,x,y=50,z;var B=a.parseXML||function(a,b){if(window.ActiveXObject){b=new ActiveXObject("Microsoft.XMLDOM");b.async="false";b.loadXML(a)}else{b=(new DOMParser).parseFromString(a,"text/xml")}return b&&b.documentElement&&b.documentElement.nodeName!="parsererror"?b:null};var C=a.parseJSON||function(a){return window["eval"]("("+a+")")};var D=function(b,c,d){var e=b.getResponseHeader("content-type")||"",f=c==="xml"||!c&&e.indexOf("xml")>=0,g=f?b.responseXML:b.responseText;if(f&&g.documentElement.nodeName==="parsererror"){a.error&&a.error("parsererror")}if(d&&d.dataFilter){g=d.dataFilter(g,c)}if(typeof g==="string"){if(c==="json"||!c&&e.indexOf("json")>=0){g=C(g)}else if(c==="script"||!c&&e.indexOf("javascript")>=0){a.globalEval(g)}}return g}}if(!this.length){b("ajaxSubmit: skipping submit process - no element selected");return this}var d,e,f,g=this;if(typeof c=="function"){c={success:c}}d=this.attr("method");e=this.attr("action");f=typeof e==="string"?a.trim(e):"";f=f||window.location.href||"";if(f){f=(f.match(/^([^#]+)/)||[])[1]}c=a.extend(true,{url:f,success:a.ajaxSettings.success,type:d||"GET",iframeSrc:/^https/i.test(window.location.href||"")?"javascript:false":"about:blank"},c);var h={};this.trigger("form-pre-serialize",[this,c,h]);if(h.veto){b("ajaxSubmit: submit vetoed via form-pre-serialize trigger");return this}if(c.beforeSerialize&&c.beforeSerialize(this,c)===false){b("ajaxSubmit: submit aborted via beforeSerialize callback");return this}var i,j,k=this.formToArray(c.semantic);if(c.data){c.extraData=c.data;for(i in c.data){if(c.data[i]instanceof Array){for(var l in c.data[i]){k.push({name:i,value:c.data[i][l]})}}else{j=c.data[i];j=a.isFunction(j)?j():j;k.push({name:i,value:j})}}}if(c.beforeSubmit&&c.beforeSubmit(k,this,c)===false){b("ajaxSubmit: submit aborted via beforeSubmit callback");return this}this.trigger("form-submit-validate",[k,this,c,h]);if(h.veto){b("ajaxSubmit: submit vetoed via form-submit-validate trigger");return this}var m=a.param(k);if(c.type.toUpperCase()=="GET"){c.url+=(c.url.indexOf("?")>=0?"&":"?")+m;c.data=null}else{c.data=m}var n=[];if(c.resetForm){n.push(function(){g.resetForm()})}if(c.clearForm){n.push(function(){g.clearForm()})}if(!c.dataType&&c.target){var o=c.success||function(){};n.push(function(b){var d=c.replaceTarget?"replaceWith":"html";a(c.target)[d](b).each(o,arguments)})}else if(c.success){n.push(c.success)}c.success=function(a,b,d){var e=c.context||c;for(var f=0,h=n.length;f<h;f++){n[f].apply(e,[a,b,d||g,g])}};var p=a("input:file",this).length>0;var q="multipart/form-data";var r=g.attr("enctype")==q||g.attr("encoding")==q;if(c.iframe!==false&&(p||c.iframe||r)){if(c.closeKeepAlive){a.get(c.closeKeepAlive,function(){t(k)})}else{t(k)}}else{if(a.browser.msie&&d=="get"){var s=g[0].getAttribute("method");if(typeof s==="string")c.type=s}a.ajax(c)}this.trigger("form-submit-notify",[this,c]);return this};a.fn.ajaxForm=function(c){if(this.length===0){var d={s:this.selector,c:this.context};if(!a.isReady&&d.s){b("DOM not ready, queuing ajaxForm");a(function(){a(d.s,d.c).ajaxForm(c)});return this}b("terminating; zero elements found by selector"+(a.isReady?"":" (DOM not ready)"));return this}return this.ajaxFormUnbind().bind("submit.form-plugin",function(b){if(!b.isDefaultPrevented()){b.preventDefault();a(this).ajaxSubmit(c)}}).bind("click.form-plugin",function(b){var c=b.target;var d=a(c);if(!d.is(":submit,input:image")){var e=d.closest(":submit");if(e.length==0){return}c=e[0]}var f=this;f.clk=c;if(c.type=="image"){if(b.offsetX!=undefined){f.clk_x=b.offsetX;f.clk_y=b.offsetY}else if(typeof a.fn.offset=="function"){var g=d.offset();f.clk_x=b.pageX-g.left;f.clk_y=b.pageY-g.top}else{f.clk_x=b.pageX-c.offsetLeft;f.clk_y=b.pageY-c.offsetTop}}setTimeout(function(){f.clk=f.clk_x=f.clk_y=null},100)})};a.fn.ajaxFormUnbind=function(){return this.unbind("submit.form-plugin click.form-plugin")};a.fn.formToArray=function(b){var c=[];if(this.length===0){return c}var d=this[0];var e=b?d.getElementsByTagName("*"):d.elements;if(!e){return c}var f,g,h,i,j,k,l;for(f=0,k=e.length;f<k;f++){j=e[f];h=j.name;if(!h){continue}if(b&&d.clk&&j.type=="image"){if(!j.disabled&&d.clk==j){c.push({name:h,value:a(j).val()});c.push({name:h+".x",value:d.clk_x},{name:h+".y",value:d.clk_y})}continue}i=a.fieldValue(j,true);if(i&&i.constructor==Array){for(g=0,l=i.length;g<l;g++){c.push({name:h,value:i[g]})}}else if(i!==null&&typeof i!="undefined"){c.push({name:h,value:i})}}if(!b&&d.clk){var m=a(d.clk),n=m[0];h=n.name;if(h&&!n.disabled&&n.type=="image"){c.push({name:h,value:m.val()});c.push({name:h+".x",value:d.clk_x},{name:h+".y",value:d.clk_y})}}return c};a.fn.formSerialize=function(b){return a.param(this.formToArray(b))};a.fn.fieldSerialize=function(b){var c=[];this.each(function(){var d=this.name;if(!d){return}var e=a.fieldValue(this,b);if(e&&e.constructor==Array){for(var f=0,g=e.length;f<g;f++){c.push({name:d,value:e[f]})}}else if(e!==null&&typeof e!="undefined"){c.push({name:this.name,value:e})}});return a.param(c)};a.fn.fieldValue=function(b){for(var c=[],d=0,e=this.length;d<e;d++){var f=this[d];var g=a.fieldValue(f,b);if(g===null||typeof g=="undefined"||g.constructor==Array&&!g.length){continue}g.constructor==Array?a.merge(c,g):c.push(g)}return c};a.fieldValue=function(b,c){var d=b.name,e=b.type,f=b.tagName.toLowerCase();if(c===undefined){c=true}if(c&&(!d||b.disabled||e=="reset"||e=="button"||(e=="checkbox"||e=="radio")&&!b.checked||(e=="submit"||e=="image")&&b.form&&b.form.clk!=b||f=="select"&&b.selectedIndex==-1)){return null}if(f=="select"){var g=b.selectedIndex;if(g<0){return null}var h=[],i=b.options;var j=e=="select-one";var k=j?g+1:i.length;for(var l=j?g:0;l<k;l++){var m=i[l];if(m.selected){var n=m.value;if(!n){n=m.attributes&&m.attributes["value"]&&!m.attributes["value"].specified?m.text:m.value}if(j){return n}h.push(n)}}return h}return a(b).val()};a.fn.clearForm=function(){return this.each(function(){a("input,select,textarea",this).clearFields()})};a.fn.clearFields=a.fn.clearInputs=function(){var a=/^(?:color|date|datetime|email|month|number|password|range|search|tel|text|time|url|week)$/i;return this.each(function(){var b=this.type,c=this.tagName.toLowerCase();if(a.test(b)||c=="textarea"){this.value=""}else if(b=="checkbox"||b=="radio"){this.checked=false}else if(c=="select"){this.selectedIndex=-1}})};a.fn.resetForm=function(){return this.each(function(){if(typeof this.reset=="function"||typeof this.reset=="object"&&!this.reset.nodeType){this.reset()}})};a.fn.enable=function(a){if(a===undefined){a=true}return this.each(function(){this.disabled=!a})};a.fn.selected=function(b){if(b===undefined){b=true}return this.each(function(){var c=this.type;if(c=="checkbox"||c=="radio"){this.checked=b}else if(this.tagName.toLowerCase()=="option"){var d=a(this).parent("select");if(b&&d[0]&&d[0].type=="select-one"){d.find("option").selected(false)}this.selected=b}})};})(jQuery)