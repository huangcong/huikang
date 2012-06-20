<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="schedule" class="com.up72.huikang.model.Schedule" scope="request" />
<%@include file="service.jsp" %>



<div class="pb_edit">
<form id="huikang_schedule_edit_form" action="${CTX}/huikang/schedule/do.jsp" method="post">
<input type="hidden" id="method" name="method" value="${MD_E}"/>

	<input type="hidden" id="id" name="id" value="${schedule.id}"/>

<%//=$select("categoryId",$d.find("select id,name from Category"),String.valueOf(schedule.getCategoryId()))%>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="pb_frm">
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Schedule.ALIAS_DOCTOR_ID%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${schedule.doctorId}" name="doctorId" id="doctorId" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Schedule.ALIAS_TITLE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${schedule.title}" name="title" id="title" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Schedule.ALIAS_CONTENT%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${schedule.content}" name="content" id="content" class="required  txt_ipt ipt_over" maxlength="65535" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Schedule.ALIAS_ADDRESS%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${schedule.address}" name="address" id="address" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Schedule.ALIAS_TYPE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${schedule.type}" name="type" id="type" class="required  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Schedule.ALIAS_LECTURER_IDS%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${schedule.lecturerIds}" name="lecturerIds" id="lecturerIds" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Schedule.ALIAS_LECTURER_NAMES%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${schedule.lecturerNames}" name="lecturerNames" id="lecturerNames" class="required  txt_ipt ipt_over" maxlength="1000" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Schedule.ALIAS_MAX_NUM%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${schedule.maxNum}" name="maxNum" id="maxNum" class="required digits  txt_ipt ipt_over" maxlength="10" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Schedule.ALIAS_MIN_NUM%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${schedule.minNum}" name="minNum" id="minNum" class="required digits  txt_ipt ipt_over" maxlength="10" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Schedule.ALIAS_INVITE_NUM%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${schedule.inviteNum}" name="inviteNum" id="inviteNum" class="required digits  txt_ipt ipt_over" maxlength="10" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Schedule.ALIAS_WORK_ORDER_ID%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${schedule.workOrderId}" name="workOrderId" id="workOrderId" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Schedule.ALIAS_SCHEDULE_DATE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${schedule.scheduleDateString}" onclick="WdatePicker({dateFmt:'<%=Schedule.FORMAT_SCHEDULE_DATE%>'})" id="scheduleDateString" name="scheduleDateString"  maxlength="0" class="required  txt_ipt ipt_over" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Schedule.ALIAS_CREATE_TIME%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${schedule.createTimeString}" onclick="WdatePicker({dateFmt:'<%=Schedule.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required  txt_ipt ipt_over" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Schedule.ALIAS_START_TIME%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${schedule.startTimeString}" onclick="WdatePicker({dateFmt:'<%=Schedule.FORMAT_START_TIME%>'})" id="startTimeString" name="startTimeString"  maxlength="0" class="required  txt_ipt ipt_over" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Schedule.ALIAS_END_TIME%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${schedule.endTimeString}" onclick="WdatePicker({dateFmt:'<%=Schedule.FORMAT_END_TIME%>'})" id="endTimeString" name="endTimeString"  maxlength="0" class="required  txt_ipt ipt_over" />
		<span class="required">*</span>
		</td>
	</tr>	
</table>

<div class="pb_sub">
	<div class="btn btn_sub" title="提交">
		<input id="submitButton" name="submitButton" type="submit" value="提交" />
	</div>
	<div class="btn btn_cel" title="重 置">
		<input type="reset" id="reset_button" value="重 置" />
	</div>
	<div class="btn btn_cel" title="关 闭">
		<input type="button" id="reset_button" value="关 闭" onclick="closeBox();" />
	</div>
</div>
</form>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$("#huikang_schedule_edit_form").validate({
				/*
				// ajax提交方式
				submitHandler:function(form){   
					form.submit();
				},
				*/
				errorPlacement: function(error, element) {
					error.appendTo(element.parent());
				}
		});	
	});
</script>



