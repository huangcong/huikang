<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="workOrder" class="com.up72.huikang.model.WorkOrder" scope="request" />
<%@include file="service.jsp" %>



<div class="pb_edit">
<form id="huikang_workOrder_edit_form" action="${CTX}/huikang/workOrder/do.jsp" method="post">
<input type="hidden" id="method" name="method" value="${MD_E}"/>

	<input type="hidden" id="id" name="id" value="${workOrder.id}"/>

<%//=$select("categoryId",$d.find("select id,name from Category"),String.valueOf(workOrder.getCategoryId()))%>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="pb_frm">
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=WorkOrder.ALIAS_PATIENT_ID%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${workOrder.patientId}" name="patientId" id="patientId" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=WorkOrder.ALIAS_LEVEL%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${workOrder.level}" name="level" id="level" class="required  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=WorkOrder.ALIAS_STATUS%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${workOrder.status}" name="status" id="status" class="required  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=WorkOrder.ALIAS_SOURCE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${workOrder.source}" name="source" id="source" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=WorkOrder.ALIAS_DOCTOR_ID%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${workOrder.doctorId}" name="doctorId" id="doctorId" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=WorkOrder.ALIAS_DISEASES%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${workOrder.diseases}" name="diseases" id="diseases" class="required  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=WorkOrder.ALIAS_CREATE_TIME%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${workOrder.createTimeString}" onclick="WdatePicker({dateFmt:'<%=WorkOrder.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required  txt_ipt ipt_over" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=WorkOrder.ALIAS_UPDATE_TIME%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${workOrder.updateTimeString}" onclick="WdatePicker({dateFmt:'<%=WorkOrder.FORMAT_UPDATE_TIME%>'})" id="updateTimeString" name="updateTimeString"  maxlength="0" class="required  txt_ipt ipt_over" />
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
		$("#huikang_workOrder_edit_form").validate({
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



