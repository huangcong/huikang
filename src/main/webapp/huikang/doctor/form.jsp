<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="doctor" class="com.up72.huikang.model.Doctor" scope="request" />
<%@include file="service.jsp" %>



<div class="pb_edit">
<form id="huikang_doctor_edit_form" action="${CTX}/huikang/doctor/do.jsp" method="post">
<input type="hidden" id="method" name="method" value="${MD_E}"/>

	<input type="hidden" id="id" name="id" value="${doctor.id}"/>

<%//=$select("categoryId",$d.find("select id,name from Category"),String.valueOf(doctor.getCategoryId()))%>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="pb_frm">
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Doctor.ALIAS_USER_NAME%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${doctor.userName}" name="userName" id="userName" class="required  txt_ipt ipt_over" maxlength="100" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Doctor.ALIAS_PASSWORD%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${doctor.password}" name="password" id="password" class="required  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Doctor.ALIAS_REAL_NAME%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${doctor.realName}" name="realName" id="realName" class="required  txt_ipt ipt_over" maxlength="100" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Doctor.ALIAS_BIRTHDAY%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${doctor.birthday}" name="birthday" id="birthday" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Doctor.ALIAS_SEX%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${doctor.sex}" name="sex" id="sex" class="required digits  txt_ipt ipt_over" maxlength="3" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Doctor.ALIAS_ADDRESS%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${doctor.address}" name="address" id="address" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Doctor.ALIAS_PHONE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${doctor.phone}" name="phone" id="phone" class="required phone  txt_ipt ipt_over" maxlength="20" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Doctor.ALIAS_MOBILE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${doctor.mobile}" name="mobile" id="mobile" class="required mobile  txt_ipt ipt_over" maxlength="20" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Doctor.ALIAS_EMAIL%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${doctor.email}" name="email" id="email" class="required email  txt_ipt ipt_over" maxlength="200" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Doctor.ALIAS_MAIN_TYPE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${doctor.mainType}" name="mainType" id="mainType" class="required  txt_ipt ipt_over" maxlength="45" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Doctor.ALIAS_NATION%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${doctor.nation}" name="nation" id="nation" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Doctor.ALIAS_MARRIAGE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${doctor.marriage}" name="marriage" id="marriage" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Doctor.ALIAS_COMPANY%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${doctor.company}" name="company" id="company" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Doctor.ALIAS_WORK_GROUP_ID%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${doctor.workGroupId}" name="workGroupId" id="workGroupId" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Doctor.ALIAS_SITE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${doctor.site}" name="site" id="site" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Doctor.ALIAS_EMAIL_VALID%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${doctor.emailValid}" name="emailValid" id="emailValid" class="required email digits  txt_ipt ipt_over" maxlength="3" />
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
		$("#huikang_doctor_edit_form").validate({
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



