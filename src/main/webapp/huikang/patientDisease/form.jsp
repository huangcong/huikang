<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="patientDisease" class="com.up72.huikang.model.PatientDisease" scope="request" />
<%@include file="service.jsp" %>



<div class="pb_edit">
<form id="huikang_patientDisease_edit_form" action="${CTX}/huikang/patientDisease/do.jsp" method="post">
<input type="hidden" id="method" name="method" value="${MD_E}"/>

	<input type="hidden" id="id" name="id" value="${patientDisease.id}"/>

<%//=$select("categoryId",$d.find("select id,name from Category"),String.valueOf(patientDisease.getCategoryId()))%>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="pb_frm">
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=PatientDisease.ALIAS_PATIENT_ID%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patientDisease.patientId}" name="patientId" id="patientId" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=PatientDisease.ALIAS_DISEASE_ID%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patientDisease.diseaseId}" name="diseaseId" id="diseaseId" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=PatientDisease.ALIAS_DIAGNOSE_TIME%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patientDisease.diagnoseTimeString}" onclick="WdatePicker({dateFmt:'<%=PatientDisease.FORMAT_DIAGNOSE_TIME%>'})" id="diagnoseTimeString" name="diagnoseTimeString"  maxlength="0" class="required  txt_ipt ipt_over" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=PatientDisease.ALIAS_DIAGNOSE_ADDRESS%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patientDisease.diagnoseAddress}" name="diagnoseAddress" id="diagnoseAddress" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=PatientDisease.ALIAS_FAMILY_HISTORY%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patientDisease.familyHistory}" name="familyHistory" id="familyHistory" class="required digits  txt_ipt ipt_over" maxlength="3" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=PatientDisease.ALIAS_YEARS%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patientDisease.years}" name="years" id="years" class="required digits  txt_ipt ipt_over" maxlength="10" />
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
		$("#huikang_patientDisease_edit_form").validate({
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



