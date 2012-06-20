// JavaScript Document

<!--//--><![CDATA[//><!--
function toggle(targetid){
     if (document.getElementById){
         target=document.getElementById(targetid);
             if (target.style.display=="block"){
                 target.style.display="none";
             } else {
                 target.style.display="block";
             }
     }
}


//--><!]]>


function selectAll(name){
	$("input[name=" + name + "]").each(function(index, domEle){
		$(domEle).attr("checked","checked");	
	});	
}

