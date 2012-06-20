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
              <td class="func"><a onclick="show('${CTX}/huikang/workOrder/do.jsp?method=${MD_F}','<%=WorkOrder.TABLE_ALIAS%>添加',600)" href="javascript:;" class="sysiconBtn addorder">添加</a></td>
            </tr>
          </table>
        </div></td>
      <td><div class="op_area">
          <table cellspacing="0" cellpadding="0" border="0" width="100%">
            <tr>
              <td class="functop"><h3>默认操作区</h3></td>
            </tr>
            <tr>
              <td class="func"><span  onclick="doBatchDelete('${ctx}/huikang/workOrder/do.jsp','items',document.forms.huikang_workOrder_page_form)" class="sysiconBtn delete">删除</span><a  onclick="showConfirm('/pages/admin/huikang/workOrder/batch_edit.jsp','批量编辑',500,300,function(){alert('编辑成功')},function(){alert('取消编辑')})"  class="sysiconBtn edit">批量编辑</a></td>
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
							<td class="tdLabel"><%=WorkOrder.ALIAS_PATIENT_ID%>：</td>		
							<td>
								<input value="${query.patientId}" id="patientId" name="patientId" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=WorkOrder.ALIAS_LEVEL%>：</td>		
							<td>
								<input value="${query.level}" id="level" name="level" maxlength="45"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=WorkOrder.ALIAS_STATUS%>：</td>		
							<td>
								<input value="${query.status}" id="status" name="status" maxlength="45"  class=""/>
							</td>
							<td class="tdLabel"><%=WorkOrder.ALIAS_SOURCE%>：</td>		
							<td>
								<input value="${query.source}" id="source" name="source" maxlength="19"  class="digits "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=WorkOrder.ALIAS_DOCTOR_ID%>：</td>		
							<td>
								<input value="${query.doctorId}" id="doctorId" name="doctorId" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=WorkOrder.ALIAS_DISEASES%>：</td>		
							<td>
								<input value="${query.diseases}" id="diseases" name="diseases" maxlength="45"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=WorkOrder.ALIAS_CREATE_TIME%>：</td>		
							<td>
								<input value="<fmt:formatDate value='${query.createTimeBegin}' pattern='<%=WorkOrder.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=WorkOrder.FORMAT_CREATE_TIME%>'})" id="createTimeBegin" name="createTimeBegin"   />
								<input value="<fmt:formatDate value='${query.createTimeEnd}' pattern='<%=WorkOrder.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=WorkOrder.FORMAT_CREATE_TIME%>'})" id="createTimeEnd" name="createTimeEnd"   />
							</td>
							<td class="tdLabel"><%=WorkOrder.ALIAS_UPDATE_TIME%>：</td>		
							<td>
								<input value="<fmt:formatDate value='${query.updateTimeBegin}' pattern='<%=WorkOrder.FORMAT_UPDATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=WorkOrder.FORMAT_UPDATE_TIME%>'})" id="updateTimeBegin" name="updateTimeBegin"   />
								<input value="<fmt:formatDate value='${query.updateTimeEnd}' pattern='<%=WorkOrder.FORMAT_UPDATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=WorkOrder.FORMAT_UPDATE_TIME%>'})" id="updateTimeEnd" name="updateTimeEnd"   />
							</td>
						</tr>	
				 </table> -->
				 
				 
				  <table>
						<tr>	
							<td class="tdLabel">
							<select id="searchColumn" name="searchColumn" onchange="syncValue(this,'#searchColumnSel')">
								 <option value="patientId" <c:if test="${'patientId' eq searchColumn}"> selected</c:if>><%=WorkOrder.ALIAS_PATIENT_ID%></option>
								 <option value="level" <c:if test="${'level' eq searchColumn}"> selected</c:if>><%=WorkOrder.ALIAS_LEVEL%></option>
								 <option value="status" <c:if test="${'status' eq searchColumn}"> selected</c:if>><%=WorkOrder.ALIAS_STATUS%></option>
								 <option value="source" <c:if test="${'source' eq searchColumn}"> selected</c:if>><%=WorkOrder.ALIAS_SOURCE%></option>
								 <option value="doctorId" <c:if test="${'doctorId' eq searchColumn}"> selected</c:if>><%=WorkOrder.ALIAS_DOCTOR_ID%></option>
								 <option value="diseases" <c:if test="${'diseases' eq searchColumn}"> selected</c:if>><%=WorkOrder.ALIAS_DISEASES%></option>
								 <option value="createTime" <c:if test="${'createTime' eq searchColumn}"> selected</c:if>><%=WorkOrder.ALIAS_CREATE_TIME%></option>
								 <option value="updateTime" <c:if test="${'updateTime' eq searchColumn}"> selected</c:if>><%=WorkOrder.ALIAS_UPDATE_TIME%></option>
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
								 <option <c:if test="${'patientId' eq searchColumn}"> selected</c:if> value="patientId"><%=WorkOrder.ALIAS_PATIENT_ID%></option>
								 <option <c:if test="${'level' eq searchColumn}"> selected</c:if> value="level"><%=WorkOrder.ALIAS_LEVEL%></option>
								 <option <c:if test="${'status' eq searchColumn}"> selected</c:if> value="status"><%=WorkOrder.ALIAS_STATUS%></option>
								 <option <c:if test="${'source' eq searchColumn}"> selected</c:if> value="source"><%=WorkOrder.ALIAS_SOURCE%></option>
								 <option <c:if test="${'doctorId' eq searchColumn}"> selected</c:if> value="doctorId"><%=WorkOrder.ALIAS_DOCTOR_ID%></option>
								 <option <c:if test="${'diseases' eq searchColumn}"> selected</c:if> value="diseases"><%=WorkOrder.ALIAS_DISEASES%></option>
								 <option <c:if test="${'createTime' eq searchColumn}"> selected</c:if> value="createTime"><%=WorkOrder.ALIAS_CREATE_TIME%></option>
								 <option <c:if test="${'updateTime' eq searchColumn}"> selected</c:if> value="updateTime"><%=WorkOrder.ALIAS_UPDATE_TIME%></option>
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