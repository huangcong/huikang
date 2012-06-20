<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="contacter" class="com.up72.huikang.model.Contacter" scope="request" />
<%@include file="service.jsp" %>



<div class="pb_edit">
<form id="huikang_contacter_edit_form" action="${CTX}/huikang/contacter/do.jsp" method="post">
<input type="hidden" id="method" name="method" value="${MD_E}"/>

	<input type="hidden" id="id" name="id" value="${contacter.id}"/>

<%//=$select("categoryId",$d.find("select id,name from Category"),String.valueOf(contacter.getCategoryId()))%>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="pb_frm">
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Contacter.ALIAS_PATIENT_ID%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${contacter.patientId}" name="patientId" id="patientId" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Contacter.ALIAS_NAME%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${contacter.name}" name="name" id="name" class="required  txt_ipt ipt_over" maxlength="100" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Contacter.ALIAS_SEX%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${contacter.sex}" name="sex" id="sex" class="required digits  txt_ipt ipt_over" maxlength="3" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Contacter.ALIAS_EMAIL%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${contacter.email}" name="email" id="email" class="required email  txt_ipt ipt_over" maxlength="100" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Contacter.ALIAS_PHONE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${contacter.phone}" name="phone" id="phone" class="required phone  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Contacter.ALIAS_MOBILE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${contacter.mobile}" name="mobile" id="mobile" class="required mobile  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Contacter.ALIAS_COMPANY%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${contacter.company}" name="company" id="company" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Contacter.ALIAS_MAIN_TYPE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${contacter.mainType}" name="mainType" id="mainType" class="required  txt_ipt ipt_over" maxlength="45" />
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
		$("#huikang_contacter_edit_form").validate({
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



