<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/common/function.jsp"%>
<form onsubmit="return onSubmit();" action="/huikang/healthRecord/do.jsp?method=save" method="post" id="health_record_form" name="health_record_form">
							<table cellspacing="0" cellpadding="0" border="0" align="center" style="width: 680px" class="list-input-table">
								<input type="hidden" name="recordId" id="recordId" value="${healthRecord.id }" />
								<tbody><tr>
									<td width="303" align="left">
										新增健康管理记录
									</td>
									<td width="97" align="right">
										请选择时间：
									</td>
									<td width="83" align="center" class="list-input">
										<input type="text" readonly="true" onfocus="WdatePicker({isShowWeek:true,el:'startDateStr1'})" name="startDateStr1" value="${healthRecord.beginDate }" id="startDateStr1">
									</td>
									<td width="39">
										<img onclick="WdatePicker({isShowWeek:true,el:'startDateStr1'});" src="/images/list-data-input-br.jpg">
									</td>
									<td width="30" align="center">
										至
									</td>
									<td width="83" align="center" class="list-input">
										<input type="text" readonly="true" onfocus="WdatePicker({isShowWeek:true,el:'endDateStr1'})" name="endDateStr1" value="${healthRecord.endDate }" id="endDateStr1">
									</td>
									<td width="39">
										<img onclick="WdatePicker({isShowWeek:true,el:'endDateStr1'});" src="/images/list-data-input-br.jpg">
									</td>
									<td width="6"></td>
								</tr>
							</tbody></table>
							<table width="96%" cellspacing="0" cellpadding="0" border="0" align="center">
								<tbody><tr>
									<td align="center">
										<table width="98%" cellspacing="0" cellpadding="0" border="0" align="center" class="work-list">
											<tbody><tr>
												<th width="6%">
													<a onclick="onClickAll()" href="javascript:;">全选</a>
												</th>
												<th width="9%">
													项目
												</th>
												<th width="14%">
													在哪进行
												</th>
												<th width="12%">
													频率
												</th>
												<th width="13%">
													多少量
												</th>
												<th width="27%">
													您有多少信心
													<span style="color: #FF0; cursor: pointer;" onclick="alert('信心低于7分，请调整设置！')">注意</span>
												</th>
											</tr>
											<c:forEach items="${dictionaryList}" var="dic">
											    <c:set var="refCode" value="${dic.refCode}"/>
											    <c:set var="name" value="${dic.name}"/>
											    <c:set var="currentPro" value="${healthRecord.itemMap[refCode]}" />
												<c:if test="${currentPro != null}">
													<tr>
													<td align="center">
														<input type="checkbox" value="${refCode }" id="checkboxList" name="checkboxList" checked="checked">
														<input type="hidden" value="1" id="${refCode }_sort" name="${refCode }_sort">
													</td>
													<td>
														${name }
													</td>
													<td>
														<input type="text" size="8" id="${refCode}_place" name="${refCode}_place" value="${currentPro.place }">
													</td>
													<td>
														<select id="${refCode}_frequency" name="${refCode}_frequency">
															<option value="0" <c:if test="${currentPro.frequency ==0 }">selected="selected"</c:if>>
																每日
															</option>
															<option value="1" <c:if test="${currentPro.frequency ==1 }">selected="selected"</c:if>>
																每餐
															</option>
															<option value="2" <c:if test="${currentPro.frequency ==2 }">selected="selected"</c:if>>
																每周
															</option>
															<option value="3" <c:if test="${currentPro.frequency ==3 }">selected="selected"</c:if>>
																每两周
															</option>
														</select>
													</td>
													<td>
														<input type="text" size="8" id="${refCode}_dose" name="${refCode}_dose" value="${currentPro.dose }">
													</td>
													<td>
														<input type="radio" value="7" id="${refCode}_confidence" name="${refCode}_confidence" <c:if test="${currentPro.confidence ==7 }">checked="checked"</c:if>>
														7分
														<input type="radio" value="8" id="${refCode}_confidence" name="${refCode}_confidence" <c:if test="${currentPro.confidence ==8 }">checked="checked"</c:if>>
														8分
														<input type="radio" value="9" id="${refCode}_confidence" name="${refCode}_confidence" <c:if test="${currentPro.confidence ==9 }">checked="checked"</c:if>>
														9分
														<input type="radio" value="10" id="${refCode}_confidence" name="${refCode}_confidence" <c:if test="${currentPro.confidence ==10 }">checked="checked"</c:if>>
														10分
													</td>
													</tr>
												</c:if>
												<c:if test="${currentPro == null}">
													<tr>
													<td align="center">
														<input type="checkbox" value="${refCode }" id="checkboxList" name="checkboxList">
															<input type="hidden" value="1" id="${refCode }_sort" name="${refCode }_sort">
													</td>
													<td>
														${name }
													</td>
													<td>
														<input type="text" size="8" id="${refCode}_place" name="${refCode}_place">
													</td>
													<td>
														<select id="${refCode}_frequency" name="${refCode}_frequency">
															<option value="0" selected="selected">
																每日
															</option>
															<option value="1">
																每餐
															</option>
															<option value="2">
																每周
															</option>
															<option value="3">
																每两周
															</option>
														</select>
													</td>
													<td>
														<input type="text" size="8" id="${refCode}_dose" name="${refCode}_dose">
													</td>
													<td>
														<input type="radio" value="7" id="${refCode}_confidence" name="${refCode}_confidence">
														7分
														<input type="radio" value="8" id="${refCode}_confidence" name="${refCode}_confidence">
														8分
														<input type="radio" value="9" id="${refCode}_confidence" name="${refCode}_confidence">
														9分
														<input type="radio" value="10" id="${refCode}_confidence" name="${refCode}_confidence">
														10分
													</td>
													</tr>
												</c:if>
											</c:forEach>
										</tbody></table>
									</td>
								</tr>
								<tr>
									<td>
										<table cellspacing="0" cellpadding="0" border="0" align="center">
											<tbody><tr>
												<td height="10"></td>
											</tr>
											<tr>
												<td align="center">
													<div class="br-blue">
														<a onclick="checkSubmit()" href="javascript:;"><span><strong><img style="vertical-align: middle;" src="/images/br-ok.gif">确认</strong> </span> </a>
													</div>
												</td>
											</tr>
										</tbody></table>
									</td>
								</tr>
							</tbody></table>
						</form>