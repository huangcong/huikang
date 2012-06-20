<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.up72.huikang.model.Dictionary"%>
<jsp:useBean id="dictionary" class="com.up72.huikang.model.Dictionary"
	scope="request" />
<%@include file="service.jsp"%>
<div class="pb_edit">
<c:if test="${dictionary.id != null}">
编辑${dictionary.name}节点
</c:if>
<c:if test="${dictionary.id == null}">
为<c:if test="${parent != null}">${parent.name}</c:if><c:if test="${parent == null}">根</c:if>节点添加子节点
</c:if>
	<form id="huikang_dictionary_edit_form"
		action="${CTX}/huikang/dictionary/do.jsp" method="post">
		<input type="hidden" id="method" name="method" value="${MD_E}" />
		<input type="hidden" id="id" name="id" value="${dictionary.id}" />
		<input type="hidden" id="dictionaryId" name="dictionaryId"
			value="${dictionary.dictionaryId}"/>
		<table width="100%" border="0" cellspacing="0" cellpadding="0"
			class="pb_frm">
			<tr class="pb_frmtr">
				<th class="pb_frmth">
					<label><%=Dictionary.ALIAS_NAME%>:
					</label>
				</th>
				<td class="pb_frmtd">
					<input value="${dictionary.name}" name="name" id="name"
						class=" txt_ipt ipt_over" maxlength="200" />

				</td>
			</tr>
			<tr class="pb_frmtr">
				<th class="pb_frmth">
					<label><%=Dictionary.ALIAS_REF_CODE%>:
					</label>
				</th>
				<td class="pb_frmtd">
					<input value="${dictionary.refCode}" name="refCode" id="refCode"
						class=" txt_ipt ipt_over" maxlength="200" />

				</td>
			</tr>
			<tr class="pb_frmtr">
				<th class="pb_frmth">
					<label><%=Dictionary.ALIAS_VALUE%>:
					</label>
				</th>
				<td class="pb_frmtd">
					<input value="${dictionary.value}" name="value" id="value"
						class=" txt_ipt ipt_over" maxlength="200" />
				</td>
			</tr>
			<tr class="pb_frmtr">
				<th class="pb_frmth">
					<label><%=Dictionary.ALIAS_SORT%>:
					</label>
				</th>
				<td class="pb_frmtd">
					<input value="${dictionary.sort}" name="sort" id="sort"
						class="digits  txt_ipt ipt_over" maxlength="10" />

				</td>
			</tr>
			<tr class="pb_frmtr">
				<th class="pb_frmth">
					<label><%=Dictionary.ALIAS_DESCRIPTION%>:
					</label>
				</th>
				<td class="pb_frmtd">
					<textarea id="description" name="description">${dictionary.description}</textarea>
				</td>
			</tr>
		</table>
		<div class="pb_sub">
			<div class="btn btn_sub" title="提交">
				<input id="submitButton" name="submitButton" type="submit"
					value="提交" />
			</div>
			<div class="btn btn_cel" title="重 置">
				<input type="reset" id="reset_button" value="重 置" />
			</div>
		</div>
	</form>
</div>
