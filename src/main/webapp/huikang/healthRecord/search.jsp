<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>

<div class="search mainHead">
  <table cellspacing="0" cellpadding="0" border="0" width="100%">
    <tr>
      <td><div class="op_area">
          <table cellspacing="2" cellpadding="0" border="0" width="100%">
            <tr>
              <td class="functop">&nbsp;
			  
			  </td>
            </tr>
            <tr>
              <td class="func"><a onclick="show('${CTX}/huikang/healthRecord/do.jsp?method=${MD_F}','<%=HealthRecord.TABLE_ALIAS%>添加',600)" href="javascript:;" class="sysiconBtn addorder">添加</a></td>
            </tr>
          </table>
        </div></td>
      <td><div class="op_area">
          <table cellspacing="0" cellpadding="0" border="0" width="100%">
            <tr>
              <td class="functop"><h3>默认操作区</h3></td>
            </tr>
            <tr>
              <td class="func"><span  onclick="doBatchDelete('${ctx}/huikang/healthRecord/do.jsp','items',document.forms.huikang_healthRecord_page_form)" class="sysiconBtn delete">删除</span><a  onclick="showConfirm('/pages/admin/huikang/healthRecord/batch_edit.jsp','批量编辑',500,300,function(){alert('编辑成功')},function(){alert('取消编辑')})"  class="sysiconBtn edit">批量编辑</a></td>
            </tr>
          </table>
        </div></td>
      <td><div class="op_area">
          <table cellspacing="0" cellpadding="0" border="0" width="100%">
            <tr>
              <td class="functop"><h3>导入导出</h3></td>
            </tr>
            <tr>
              <td class="func"><span style="padding-left:4px;" class="sysiconBtn arrow_down" onclick="$('#export_button_rel').toggle();bindCloseAction(['#export_button_rel']);">导出</span> 
                <!--导出层-->
                <div style="display:none;" id="export_button_rel" class="dropMenu"><span class="menuitem">csv-逗号分隔的文本文件...</span><span class="menuitem">txt-制表符分隔的文本文件...</span><span class="menuitem">xls-Excel文件...</span></div>
                
                <!--end导出层-->
			  </td>
            </tr>
          </table>
        </div></td>
      <td><!--filter-->
        
        <div class="op_area">
          <table>
            <tr>
              <td class="functop"><h3>搜索<span id="advance_search_button" rel="#search_button_rel" class="prepend_1 arrow_down lnk" onclick="$('#search_button_rel').toggle();bindCloseAction(['#search_button_rel']);">高级搜索</span></h3></td>
            </tr>
            <tr>
              <td class="func">
			 
                  <!--高级搜索层-->
                  <div id="search_button_rel" style="display:none; position:absolute;" class="finder_filter_pos">
                    <div class="finder_filter_body">
                    <!--  <table>
						<tr>	
							<td class="tdLabel"><%=HealthRecord.ALIAS_PATIENT_ID%>：</td>		
							<td>
								<input value="${query.patientId}" id="patientId" name="patientId" maxlength="45"  class=""/>
							</td>
							<td class="tdLabel"><%=HealthRecord.ALIAS_WORK_ORDER_ID%>：</td>		
							<td>
								<input value="${query.workOrderId}" id="workOrderId" name="workOrderId" maxlength="45"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=HealthRecord.ALIAS_BEGIN_DATE%>：</td>		
							<td>
								<input value="<fmt:formatDate value='${query.beginDateBegin}' pattern='<%=HealthRecord.FORMAT_BEGIN_DATE%>'/>" onclick="WdatePicker({dateFmt:'<%=HealthRecord.FORMAT_BEGIN_DATE%>'})" id="beginDateBegin" name="beginDateBegin"   />
								<input value="<fmt:formatDate value='${query.beginDateEnd}' pattern='<%=HealthRecord.FORMAT_BEGIN_DATE%>'/>" onclick="WdatePicker({dateFmt:'<%=HealthRecord.FORMAT_BEGIN_DATE%>'})" id="beginDateEnd" name="beginDateEnd"   />
							</td>
							<td class="tdLabel"><%=HealthRecord.ALIAS_END_DATE%>：</td>		
							<td>
								<input value="<fmt:formatDate value='${query.endDateBegin}' pattern='<%=HealthRecord.FORMAT_END_DATE%>'/>" onclick="WdatePicker({dateFmt:'<%=HealthRecord.FORMAT_END_DATE%>'})" id="endDateBegin" name="endDateBegin"   />
								<input value="<fmt:formatDate value='${query.endDateEnd}' pattern='<%=HealthRecord.FORMAT_END_DATE%>'/>" onclick="WdatePicker({dateFmt:'<%=HealthRecord.FORMAT_END_DATE%>'})" id="endDateEnd" name="endDateEnd"   />
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=HealthRecord.ALIAS_ITEM%>：</td>		
							<td>
								<input value="${query.item}" id="item" name="item" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=HealthRecord.ALIAS_PLACE%>：</td>		
							<td>
								<input value="${query.place}" id="place" name="place" maxlength="200"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=HealthRecord.ALIAS_FREQUENCY%>：</td>		
							<td>
								<input value="${query.frequency}" id="frequency" name="frequency" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=HealthRecord.ALIAS_DOSE%>：</td>		
							<td>
								<input value="${query.dose}" id="dose" name="dose" maxlength="45"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=HealthRecord.ALIAS_CONFIDENCE%>：</td>		
							<td>
								<input value="${query.confidence}" id="confidence" name="confidence" maxlength="10"  class="digits "/>
							</td>
							<td class="tdLabel"><%=HealthRecord.ALIAS_RESULT%>：</td>		
							<td>
								<input value="${query.result}" id="result" name="result" maxlength="45"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=HealthRecord.ALIAS_SORT%>：</td>		
							<td>
								<input value="${query.sort}" id="sort" name="sort" maxlength="10"  class="digits "/>
							</td>
						</tr>	
				 </table> -->
				 
				 
				  <table>
						<tr>	
							<td class="tdLabel">
							<select id="searchColumn" name="searchColumn" onchange="syncValue(this,'#searchColumnSel')">
								 <option value="patientId" <c:if test="${'patientId' eq searchColumn}"> selected</c:if>><%=HealthRecord.ALIAS_PATIENT_ID%></option>
								 <option value="workOrderId" <c:if test="${'workOrderId' eq searchColumn}"> selected</c:if>><%=HealthRecord.ALIAS_WORK_ORDER_ID%></option>
								 <option value="beginDate" <c:if test="${'beginDate' eq searchColumn}"> selected</c:if>><%=HealthRecord.ALIAS_BEGIN_DATE%></option>
								 <option value="endDate" <c:if test="${'endDate' eq searchColumn}"> selected</c:if>><%=HealthRecord.ALIAS_END_DATE%></option>
								 <option value="item" <c:if test="${'item' eq searchColumn}"> selected</c:if>><%=HealthRecord.ALIAS_ITEM%></option>
								 <option value="place" <c:if test="${'place' eq searchColumn}"> selected</c:if>><%=HealthRecord.ALIAS_PLACE%></option>
								 <option value="frequency" <c:if test="${'frequency' eq searchColumn}"> selected</c:if>><%=HealthRecord.ALIAS_FREQUENCY%></option>
								 <option value="dose" <c:if test="${'dose' eq searchColumn}"> selected</c:if>><%=HealthRecord.ALIAS_DOSE%></option>
								 <option value="confidence" <c:if test="${'confidence' eq searchColumn}"> selected</c:if>><%=HealthRecord.ALIAS_CONFIDENCE%></option>
								 <option value="result" <c:if test="${'result' eq searchColumn}"> selected</c:if>><%=HealthRecord.ALIAS_RESULT%></option>
								 <option value="sort" <c:if test="${'sort' eq searchColumn}"> selected</c:if>><%=HealthRecord.ALIAS_SORT%></option>
                          </select>：</td>		
							<td>
								<input id="searchColumnValue" value="${searchColumnValue}" onkeyup="syncValue(this,'#searchColumnSelValue')" class="keywords" name="searchColumnValue" style="width:160px;">
							</td>
						</tr>	
				 </table> 
				 <input type="submit" class="sysiconBtnNoIcon"  value="查询" />
                    </div>
                  </div>
                  <!--end高级搜索层-->
                  
                  <div class="finder_filter_active">
                    <table cellspacing="0" cellpadding="0" border="0" width="100%">
                      <tr>
                        <td><select id="searchColumnSel" name="searchColumnSel"  onchange="syncValue(this,'#searchColumn')">
								 <option <c:if test="${'patientId' eq searchColumn}"> selected</c:if> value="patientId"><%=HealthRecord.ALIAS_PATIENT_ID%></option>
								 <option <c:if test="${'workOrderId' eq searchColumn}"> selected</c:if> value="workOrderId"><%=HealthRecord.ALIAS_WORK_ORDER_ID%></option>
								 <option <c:if test="${'beginDate' eq searchColumn}"> selected</c:if> value="beginDate"><%=HealthRecord.ALIAS_BEGIN_DATE%></option>
								 <option <c:if test="${'endDate' eq searchColumn}"> selected</c:if> value="endDate"><%=HealthRecord.ALIAS_END_DATE%></option>
								 <option <c:if test="${'item' eq searchColumn}"> selected</c:if> value="item"><%=HealthRecord.ALIAS_ITEM%></option>
								 <option <c:if test="${'place' eq searchColumn}"> selected</c:if> value="place"><%=HealthRecord.ALIAS_PLACE%></option>
								 <option <c:if test="${'frequency' eq searchColumn}"> selected</c:if> value="frequency"><%=HealthRecord.ALIAS_FREQUENCY%></option>
								 <option <c:if test="${'dose' eq searchColumn}"> selected</c:if> value="dose"><%=HealthRecord.ALIAS_DOSE%></option>
								 <option <c:if test="${'confidence' eq searchColumn}"> selected</c:if> value="confidence"><%=HealthRecord.ALIAS_CONFIDENCE%></option>
								 <option <c:if test="${'result' eq searchColumn}"> selected</c:if> value="result"><%=HealthRecord.ALIAS_RESULT%></option>
								 <option <c:if test="${'sort' eq searchColumn}"> selected</c:if> value="sort"><%=HealthRecord.ALIAS_SORT%></option>
                          </select></td>
                        <td><input id="searchColumnInputCreate" name="searchColumnSelValue" value="${searchColumnValue}" onkeyup="syncValue(this,'#searchColumnValue')" class="keywords"  style="width:160px;"></td>
                        <td><input type="submit" class="sysiconBtnNoIcon"  value="查询" /></td>
                      </tr>
                    </table>
                  </div>
                </td>
            </tr>
          </table>
        </div></td>
    </tr>
  </table>
</div>
<script type="text/javascript">
$("#searchColumnInputCreate").attr("name",$("#searchColumn").val());
</script>