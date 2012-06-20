<!--//--><![CDATA[//><!--
function ShowSub(id_num,num){
	for(var i = 0;i <= 18;i++){
		if(GetObj("S_Menu_" + id_num + i)){GetObj("S_Menu_" + id_num + i).className = '';}
		if(GetObj("S_Cont_" + id_num + i)){GetObj("S_Cont_" + id_num + i).style.display = 'none';}
	}
	if(GetObj("S_Menu_" + id_num + num)){GetObj("S_Menu_" + id_num + num).className = 'tmhover';}
	if(GetObj("S_Cont_" + id_num + num)){GetObj("S_Cont_" + id_num + num).style.display = 'block';}
	if(num == 1){
		location.href='/huikang/mailReceiver/do.jsp?method=medicalRecords';
	}else if(num == 2){
		location.href='/huikang/healthRecord/do.jsp?method=healthRecord';
	}
}
function GetObj(objName){
	if(document.getElementById){
		return eval('document.getElementById("' + objName + '")');
	}else{
		return eval('document.all.' + objName);
	}
}
//--><!]]>


function workList_tag(index){
	for(var i = 1; i <=3; i++){
		$('#tag_' + i).attr("class", "");
		$('#cont_' + i).hide();
	}
	if(index ==1 ){
		location.href = '/huikang/workOrder/do.jsp?method=workList&type=1';
	}else if(index == 2){
		location.href = '/huikang/workOrder/do.jsp?method=workList&type=2';
	}else if(index == 3){
		location.href = '/huikang/workOrder/do.jsp?method=workList&type=3';
	}
	$('#tag_' + index).attr("class", "tmhover");
	$('#cont_' + index).show();
}

function current_memu(index){
	$(".left_menu li").each(function(){
		if(("S_Menu_1" + index) == $(this).attr("id")){
			$(this).attr("class","tmhover");
		}else{
			$(this).attr("class","");
		} 
	});
	//$("#S_Menu_1" + index	)
}