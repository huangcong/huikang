<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="disease" class="com.up72.huikang.model.Disease" scope="request" />
<%@include file="service.jsp" %>



<div class="pb_edit">
<form id="huikang_disease_edit_form" action="${CTX}/huikang/disease/do.jsp" method="post">
<input type="hidden" id="method" name="method" value="${MD_E}"/>

	<input type="hidden" id="id" name="id" value="${disease.id}"/>

<%//=$select("categoryId",$d.find("select id,name from Category"),String.valueOf(disease.getCategoryId()))%>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="pb_frm">
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Disease.ALIAS_CODE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${disease.code}" name="code" id="code" class="required  txt_ipt ipt_over" maxlength="50" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Disease.ALIAS_PARENT_ID%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${disease.parentId}" name="parentId" id="parentId" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Disease.ALIAS_ROOT_ID%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${disease.rootId}" name="rootId" id="rootId" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Disease.ALIAS_PATH%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${disease.path}" name="path" id="path" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Disease.ALIAS_NAME%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${disease.name}" name="name" id="name" class="required  txt_ipt ipt_over" maxlength="100" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Disease.ALIAS_VALIDABLE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${disease.validable}" name="validable" id="validable" class="required digits  txt_ipt ipt_over" maxlength="3" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Disease.ALIAS_GB_NAME%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${disease.gbName}" name="gbName" id="gbName" class="required  txt_ipt ipt_over" maxlength="100" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Disease.ALIAS_TYPE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${disease.type}" name="type" id="type" class="required digits  txt_ipt ipt_over" maxlength="19" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Disease.ALIAS_DIAGNOSE_RULE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${disease.diagnoseRule}" name="diagnoseRule" id="diagnoseRule" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Disease.ALIAS_URGENT_RULE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${disease.urgentRule}" name="urgentRule" id="urgentRule" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Disease.ALIAS_RISK_RULE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${disease.riskRule}" name="riskRule" id="riskRule" class="required  txt_ipt ipt_over" maxlength="500" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Disease.ALIAS_NORMAL_RULE%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${disease.normalRule}" name="normalRule" id="normalRule" class="required  txt_ipt ipt_over" maxlength="255" />
		<span class="required">*</span>
		</td>
	</tr>	
	 <tr class="pb_frmtr">
		<th class="pb_frmth"><label><%=Disease.ALIAS_URL%>:</label></th>	
		 <td class="pb_frmtd">
		<input value="${disease.url}" name="url" id="url" class="required url  txt_ipt ipt_over" maxlength="45" />
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
		$("#huikang_disease_edit_form").validate({
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



