<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="service.jsp"%>
<table cellspacing="0" cellpadding="0" border="0" class="tableform">
	<tr>
		<td style="vertical-align: top;">
			<div class="divform">
				<table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
					<tr>
						<td style="vertical-align: top;">
							<h5><%=Dictionary.TABLE_ALIAS%>
							</h5>
							<div class="division">
								<table cellspacing="0" cellpadding="0" border="0">
									<tr>
										<th><%=Dictionary.ALIAS_NAME%>：
										</th>
										<td>
											<c:out value='${dictionary.name}' />
										</td>
										<th><%=Dictionary.ALIAS_REF_CODE%>：
										</th>
										<td>
											<c:out value='${dictionary.refCode}' />
										</td>
									</tr>
									<tr>
										<th><%=Dictionary.ALIAS_SORT%>：
										</th>
										<td>
											<c:out value='${dictionary.sort}' />
										</td>
										<th><%=Dictionary.ALIAS_DESCRIPTION%>：
										</th>
										<td>
											<c:out value='${dictionary.description}' />
										</td>
									</tr>
									<tr>
										<th><%=Dictionary.ALIAS_DICTIONARY_ID%>：
										</th>
										<td>
											<c:out value='${dictionary.dictionaryId}' />
										</td>
										<th><%=Dictionary.ALIAS_VALUE%>：
										</th>
										<td>
											<c:out value='${dictionary.value}' />
										</td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</td>
	</tr>
</table>
</div>
<script type="text/javascript">
current_memu(14);
</script>