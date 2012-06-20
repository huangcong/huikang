<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="healthRecord" class="com.up72.huikang.model.HealthRecord" scope="request" />
<%@include file="service.jsp" %>



<div class="pb_edit">
<form id="huikang_healthRecord_edit_form" action="${CTX}/huikang/healthRecord/do.jsp" method="post">
<input type="hidden" id="method" name="method" value="${MD_E}"/>

	<input type="hidden" id="id" name="id" value="${healthRecord.id}"/>

<%//=$select("categoryId",$d.find("select id,name from Category"),String.valueOf(healthRecord.getCategoryId()))%>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="pb_frm">
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=HealthRecord.ALIAS_PATIENT_ID%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${healthRecord.patientId}" name="patientId" id="patientId" class="required  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=HealthRecord.ALIAS_WORK_ORDER_ID%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${healthRecord.workOrderId}" name="workOrderId" id="workOrderId" class="required  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=HealthRecord.ALIAS_BEGIN_DATE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${healthRecord.beginDateString}" onclick="WdatePicker({dateFmt:'<%=HealthRecord.FORMAT_BEGIN_DATE%>'})" id="beginDateString" name="beginDateString"  maxlength="0" class="required  txt_ipt ipt_over" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=HealthRecord.ALIAS_END_DATE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${healthRecord.endDateString}" onclick="WdatePicker({dateFmt:'<%=HealthRecord.FORMAT_END_DATE%>'})" id="endDateString" name="endDateString"  maxlength="0" class="required  txt_ipt ipt_over" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=HealthRecord.ALIAS_ITEM%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${healthRecord.item}" name="item" id="item" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=HealthRecord.ALIAS_PLACE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${healthRecord.place}" name="place" id="place" class="required  txt_ipt ipt_over" maxlength="200" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=HealthRecord.ALIAS_FREQUENCY%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${healthRecord.frequency}" name="frequency" id="frequency" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=HealthRecord.ALIAS_DOSE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${healthRecord.dose}" name="dose" id="dose" class="required  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=HealthRecord.ALIAS_CONFIDENCE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${healthRecord.confidence}" name="confidence" id="confidence" class="required digits  txt_ipt ipt_over" maxlength="10" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=HealthRecord.ALIAS_RESULT%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${healthRecord.result}" name="result" id="result" class="required  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=HealthRecord.ALIAS_SORT%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${healthRecord.sort}" name="sort" id="sort" class="required digits  txt_ipt ipt_over" maxlength="10" />
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
		$("#huikang_healthRecord_edit_form").validate({
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



