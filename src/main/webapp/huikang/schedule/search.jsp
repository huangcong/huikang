<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.up72.huikang.model.Schedule"%>
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
              <td class="func"><a onclick="show('${CTX}/huikang/schedule/do.jsp?method=${MD_F}','<%=Schedule.TABLE_ALIAS%>添加',600)" href="javascript:;" class="sysiconBtn addorder">添加</a></td>
            </tr>
          </table>
        </div></td>
      <td><div class="op_area">
          <table cellspacing="0" cellpadding="0" border="0" width="100%">
            <tr>
              <td class="functop"><h3>默认操作区</h3></td>
            </tr>
            <tr>
              <td class="func"><span  onclick="doBatchDelete('${ctx}/huikang/schedule/do.jsp','items',document.forms.huikang_schedule_page_form)" class="sysiconBtn delete">删除</span><a  onclick="showConfirm('/pages/admin/huikang/schedule/batch_edit.jsp','批量编辑',500,300,function(){alert('编辑成功')},function(){alert('取消编辑')})"  class="sysiconBtn edit">批量编辑</a></td>
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
							<td class="tdLabel"><%=Schedule.ALIAS_DOCTOR_ID%>：</td>		
							<td>
								<input value="${query.doctorId}" id="doctorId" name="doctorId" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=Schedule.ALIAS_TITLE%>：</td>		
							<td>
								<input value="${query.title}" id="title" name="title" maxlength="500"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Schedule.ALIAS_CONTENT%>：</td>		
							<td>
								<input value="${query.content}" id="content" name="content" maxlength="65535"  class=""/>
							</td>
							<td class="tdLabel"><%=Schedule.ALIAS_ADDRESS%>：</td>		
							<td>
								<input value="${query.address}" id="address" name="address" maxlength="500"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Schedule.ALIAS_TYPE%>：</td>		
							<td>
								<input value="${query.type}" id="type" name="type" maxlength="45"  class=""/>
							</td>
							<td class="tdLabel"><%=Schedule.ALIAS_LECTURER_IDS%>：</td>		
							<td>
								<input value="${query.lecturerIds}" id="lecturerIds" name="lecturerIds" maxlength="500"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Schedule.ALIAS_LECTURER_NAMES%>：</td>		
							<td>
								<input value="${query.lecturerNames}" id="lecturerNames" name="lecturerNames" maxlength="1000"  class=""/>
							</td>
							<td class="tdLabel"><%=Schedule.ALIAS_MAX_NUM%>：</td>		
							<td>
								<input value="${query.maxNum}" id="maxNum" name="maxNum" maxlength="10"  class="digits "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Schedule.ALIAS_MIN_NUM%>：</td>		
							<td>
								<input value="${query.minNum}" id="minNum" name="minNum" maxlength="10"  class="digits "/>
							</td>
							<td class="tdLabel"><%=Schedule.ALIAS_INVITE_NUM%>：</td>		
							<td>
								<input value="${query.inviteNum}" id="inviteNum" name="inviteNum" maxlength="10"  class="digits "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Schedule.ALIAS_WORK_ORDER_ID%>：</td>		
							<td>
								<input value="${query.workOrderId}" id="workOrderId" name="workOrderId" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=Schedule.ALIAS_SCHEDULE_DATE%>：</td>		
							<td>
								<input value="<fmt:formatDate value='${query.scheduleDateBegin}' pattern='<%=Schedule.FORMAT_SCHEDULE_DATE%>'/>" onclick="WdatePicker({dateFmt:'<%=Schedule.FORMAT_SCHEDULE_DATE%>'})" id="scheduleDateBegin" name="scheduleDateBegin"   />
								<input value="<fmt:formatDate value='${query.scheduleDateEnd}' pattern='<%=Schedule.FORMAT_SCHEDULE_DATE%>'/>" onclick="WdatePicker({dateFmt:'<%=Schedule.FORMAT_SCHEDULE_DATE%>'})" id="scheduleDateEnd" name="scheduleDateEnd"   />
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Schedule.ALIAS_CREATE_TIME%>：</td>		
							<td>
								<input value="<fmt:formatDate value='${query.createTimeBegin}' pattern='<%=Schedule.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Schedule.FORMAT_CREATE_TIME%>'})" id="createTimeBegin" name="createTimeBegin"   />
								<input value="<fmt:formatDate value='${query.createTimeEnd}' pattern='<%=Schedule.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Schedule.FORMAT_CREATE_TIME%>'})" id="createTimeEnd" name="createTimeEnd"   />
							</td>
							<td class="tdLabel"><%=Schedule.ALIAS_START_TIME%>：</td>		
							<td>
								<input value="<fmt:formatDate value='${query.startTimeBegin}' pattern='<%=Schedule.FORMAT_START_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Schedule.FORMAT_START_TIME%>'})" id="startTimeBegin" name="startTimeBegin"   />
								<input value="<fmt:formatDate value='${query.startTimeEnd}' pattern='<%=Schedule.FORMAT_START_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Schedule.FORMAT_START_TIME%>'})" id="startTimeEnd" name="startTimeEnd"   />
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Schedule.ALIAS_END_TIME%>：</td>		
							<td>
								<input value="<fmt:formatDate value='${query.endTimeBegin}' pattern='<%=Schedule.FORMAT_END_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Schedule.FORMAT_END_TIME%>'})" id="endTimeBegin" name="endTimeBegin"   />
								<input value="<fmt:formatDate value='${query.endTimeEnd}' pattern='<%=Schedule.FORMAT_END_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Schedule.FORMAT_END_TIME%>'})" id="endTimeEnd" name="endTimeEnd"   />
							</td>
						</tr>	
				 </table> -->
				 
				 
				  <table>
						<tr>	
							<td class="tdLabel">
							<select id="searchColumn" name="searchColumn" onchange="syncValue(this,'#searchColumnSel')">
								 <option value="doctorId" <c:if test="${'doctorId' eq searchColumn}"> selected</c:if>><%=Schedule.ALIAS_DOCTOR_ID%></option>
								 <option value="title" <c:if test="${'title' eq searchColumn}"> selected</c:if>><%=Schedule.ALIAS_TITLE%></option>
								 <option value="content" <c:if test="${'content' eq searchColumn}"> selected</c:if>><%=Schedule.ALIAS_CONTENT%></option>
								 <option value="address" <c:if test="${'address' eq searchColumn}"> selected</c:if>><%=Schedule.ALIAS_ADDRESS%></option>
								 <option value="type" <c:if test="${'type' eq searchColumn}"> selected</c:if>><%=Schedule.ALIAS_TYPE%></option>
								 <option value="lecturerIds" <c:if test="${'lecturerIds' eq searchColumn}"> selected</c:if>><%=Schedule.ALIAS_LECTURER_IDS%></option>
								 <option value="lecturerNames" <c:if test="${'lecturerNames' eq searchColumn}"> selected</c:if>><%=Schedule.ALIAS_LECTURER_NAMES%></option>
								 <option value="maxNum" <c:if test="${'maxNum' eq searchColumn}"> selected</c:if>><%=Schedule.ALIAS_MAX_NUM%></option>
								 <option value="minNum" <c:if test="${'minNum' eq searchColumn}"> selected</c:if>><%=Schedule.ALIAS_MIN_NUM%></option>
								 <option value="inviteNum" <c:if test="${'inviteNum' eq searchColumn}"> selected</c:if>><%=Schedule.ALIAS_INVITE_NUM%></option>
								 <option value="workOrderId" <c:if test="${'workOrderId' eq searchColumn}"> selected</c:if>><%=Schedule.ALIAS_WORK_ORDER_ID%></option>
								 <option value="scheduleDate" <c:if test="${'scheduleDate' eq searchColumn}"> selected</c:if>><%=Schedule.ALIAS_SCHEDULE_DATE%></option>
								 <option value="createTime" <c:if test="${'createTime' eq searchColumn}"> selected</c:if>><%=Schedule.ALIAS_CREATE_TIME%></option>
								 <option value="startTime" <c:if test="${'startTime' eq searchColumn}"> selected</c:if>><%=Schedule.ALIAS_START_TIME%></option>
								 <option value="endTime" <c:if test="${'endTime' eq searchColumn}"> selected</c:if>><%=Schedule.ALIAS_END_TIME%></option>
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
								 <option <c:if test="${'doctorId' eq searchColumn}"> selected</c:if> value="doctorId"><%=Schedule.ALIAS_DOCTOR_ID%></option>
								 <option <c:if test="${'title' eq searchColumn}"> selected</c:if> value="title"><%=Schedule.ALIAS_TITLE%></option>
								 <option <c:if test="${'content' eq searchColumn}"> selected</c:if> value="content"><%=Schedule.ALIAS_CONTENT%></option>
								 <option <c:if test="${'address' eq searchColumn}"> selected</c:if> value="address"><%=Schedule.ALIAS_ADDRESS%></option>
								 <option <c:if test="${'type' eq searchColumn}"> selected</c:if> value="type"><%=Schedule.ALIAS_TYPE%></option>
								 <option <c:if test="${'lecturerIds' eq searchColumn}"> selected</c:if> value="lecturerIds"><%=Schedule.ALIAS_LECTURER_IDS%></option>
								 <option <c:if test="${'lecturerNames' eq searchColumn}"> selected</c:if> value="lecturerNames"><%=Schedule.ALIAS_LECTURER_NAMES%></option>
								 <option <c:if test="${'maxNum' eq searchColumn}"> selected</c:if> value="maxNum"><%=Schedule.ALIAS_MAX_NUM%></option>
								 <option <c:if test="${'minNum' eq searchColumn}"> selected</c:if> value="minNum"><%=Schedule.ALIAS_MIN_NUM%></option>
								 <option <c:if test="${'inviteNum' eq searchColumn}"> selected</c:if> value="inviteNum"><%=Schedule.ALIAS_INVITE_NUM%></option>
								 <option <c:if test="${'workOrderId' eq searchColumn}"> selected</c:if> value="workOrderId"><%=Schedule.ALIAS_WORK_ORDER_ID%></option>
								 <option <c:if test="${'scheduleDate' eq searchColumn}"> selected</c:if> value="scheduleDate"><%=Schedule.ALIAS_SCHEDULE_DATE%></option>
								 <option <c:if test="${'createTime' eq searchColumn}"> selected</c:if> value="createTime"><%=Schedule.ALIAS_CREATE_TIME%></option>
								 <option <c:if test="${'startTime' eq searchColumn}"> selected</c:if> value="startTime"><%=Schedule.ALIAS_START_TIME%></option>
								 <option <c:if test="${'endTime' eq searchColumn}"> selected</c:if> value="endTime"><%=Schedule.ALIAS_END_TIME%></option>
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