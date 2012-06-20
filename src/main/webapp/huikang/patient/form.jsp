<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="patient" class="com.up72.huikang.model.Patient" scope="request" />
<%@include file="service.jsp" %>



<div class="pb_edit">
<form id="huikang_patient_edit_form" action="${CTX}/huikang/patient/do.jsp" method="post">
<input type="hidden" id="method" name="method" value="${MD_E}"/>

	<input type="hidden" id="id" name="id" value="${patient.id}"/>

<%//=$select("categoryId",$d.find("select id,name from Category"),String.valueOf(patient.getCategoryId()))%>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="pb_frm">
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Patient.ALIAS_CODE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patient.code}" name="code" id="code" class="required  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Patient.ALIAS_NAME%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patient.name}" name="name" id="name" class="required  txt_ipt ipt_over" maxlength="100" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Patient.ALIAS_BIRTHDAY%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patient.birthday}" name="birthday" id="birthday" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Patient.ALIAS_SEX%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patient.sex}" name="sex" id="sex" class="required digits  txt_ipt ipt_over" maxlength="3" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Patient.ALIAS_ADDRESS%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patient.address}" name="address" id="address" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Patient.ALIAS_ZIP_CODE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patient.zipCode}" name="zipCode" id="zipCode" class="required  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Patient.ALIAS_DEGREE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patient.degree}" name="degree" id="degree" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Patient.ALIAS_PHONE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patient.phone}" name="phone" id="phone" class="required phone  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Patient.ALIAS_MOBILE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patient.mobile}" name="mobile" id="mobile" class="required mobile  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Patient.ALIAS_EMAIL%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patient.email}" name="email" id="email" class="required email  txt_ipt ipt_over" maxlength="200" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Patient.ALIAS_MAIN_TYPE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patient.mainType}" name="mainType" id="mainType" class="required  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Patient.ALIAS_NATION%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patient.nation}" name="nation" id="nation" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Patient.ALIAS_MARRIAGE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patient.marriage}" name="marriage" id="marriage" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Patient.ALIAS_COMPANY%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patient.company}" name="company" id="company" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Patient.ALIAS_CONTACTER1%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patient.contacter1}" name="contacter1" id="contacter1" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Patient.ALIAS_CONTACTER2%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patient.contacter2}" name="contacter2" id="contacter2" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Patient.ALIAS_SOURCE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patient.source}" name="source" id="source" class="required  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Patient.ALIAS_REMARK%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${patient.remark}" name="remark" id="remark" class="required  txt_ipt ipt_over" maxlength="65535" />
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
		$("#huikang_patient_edit_form").validate({
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



