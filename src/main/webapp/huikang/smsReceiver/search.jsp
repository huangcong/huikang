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
              <td class="func"><a onclick="show('${CTX}/huikang/smsReceiver/do.jsp?method=${MD_F}','<%=SmsReceiver.TABLE_ALIAS%>添加',600)" href="javascript:;" class="sysiconBtn addorder">添加</a></td>
            </tr>
          </table>
        </div></td>
      <td><div class="op_area">
          <table cellspacing="0" cellpadding="0" border="0" width="100%">
            <tr>
              <td class="functop"><h3>默认操作区</h3></td>
            </tr>
            <tr>
              <td class="func"><span  onclick="doBatchDelete('${ctx}/huikang/smsReceiver/do.jsp','items',document.forms.huikang_smsReceiver_page_form)" class="sysiconBtn delete">删除</span><a  onclick="showConfirm('/pages/admin/huikang/smsReceiver/batch_edit.jsp','批量编辑',500,300,function(){alert('编辑成功')},function(){alert('取消编辑')})"  class="sysiconBtn edit">批量编辑</a></td>
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
							<td class="tdLabel"><%=SmsReceiver.ALIAS_SMS_ID%>：</td>		
							<td>
								<input value="${query.smsId}" id="smsId" name="smsId" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=SmsReceiver.ALIAS_RECEIVE_ID%>：</td>		
							<td>
								<input value="${query.receiveId}" id="receiveId" name="receiveId" maxlength="19"  class="digits "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=SmsReceiver.ALIAS_WORK_ORDER_ID%>：</td>		
							<td>
								<input value="${query.workOrderId}" id="workOrderId" name="workOrderId" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=SmsReceiver.ALIAS_RECEIVE_NAME%>：</td>		
							<td>
								<input value="${query.receiveName}" id="receiveName" name="receiveName" maxlength="500"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=SmsReceiver.ALIAS_RECEIVE_SMS%>：</td>		
							<td>
								<input value="${query.receiveSms}" id="receiveSms" name="receiveSms" maxlength="500"  class=""/>
							</td>
							<td class="tdLabel"><%=SmsReceiver.ALIAS_CREATE_TIME%>：</td>		
							<td>
								<input value="<fmt:formatDate value='${query.createTimeBegin}' pattern='<%=SmsReceiver.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=SmsReceiver.FORMAT_CREATE_TIME%>'})" id="createTimeBegin" name="createTimeBegin"   />
								<input value="<fmt:formatDate value='${query.createTimeEnd}' pattern='<%=SmsReceiver.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=SmsReceiver.FORMAT_CREATE_TIME%>'})" id="createTimeEnd" name="createTimeEnd"   />
							</td>
						</tr>	
				 </table> -->
				 
				 
				  <table>
						<tr>	
							<td class="tdLabel">
							<select id="searchColumn" name="searchColumn" onchange="syncValue(this,'#searchColumnSel')">
								 <option value="smsId" <c:if test="${'smsId' eq searchColumn}"> selected</c:if>><%=SmsReceiver.ALIAS_SMS_ID%></option>
								 <option value="receiveId" <c:if test="${'receiveId' eq searchColumn}"> selected</c:if>><%=SmsReceiver.ALIAS_RECEIVE_ID%></option>
								 <option value="workOrderId" <c:if test="${'workOrderId' eq searchColumn}"> selected</c:if>><%=SmsReceiver.ALIAS_WORK_ORDER_ID%></option>
								 <option value="receiveName" <c:if test="${'receiveName' eq searchColumn}"> selected</c:if>><%=SmsReceiver.ALIAS_RECEIVE_NAME%></option>
								 <option value="receiveSms" <c:if test="${'receiveSms' eq searchColumn}"> selected</c:if>><%=SmsReceiver.ALIAS_RECEIVE_SMS%></option>
								 <option value="createTime" <c:if test="${'createTime' eq searchColumn}"> selected</c:if>><%=SmsReceiver.ALIAS_CREATE_TIME%></option>
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
								 <option <c:if test="${'smsId' eq searchColumn}"> selected</c:if> value="smsId"><%=SmsReceiver.ALIAS_SMS_ID%></option>
								 <option <c:if test="${'receiveId' eq searchColumn}"> selected</c:if> value="receiveId"><%=SmsReceiver.ALIAS_RECEIVE_ID%></option>
								 <option <c:if test="${'workOrderId' eq searchColumn}"> selected</c:if> value="workOrderId"><%=SmsReceiver.ALIAS_WORK_ORDER_ID%></option>
								 <option <c:if test="${'receiveName' eq searchColumn}"> selected</c:if> value="receiveName"><%=SmsReceiver.ALIAS_RECEIVE_NAME%></option>
								 <option <c:if test="${'receiveSms' eq searchColumn}"> selected</c:if> value="receiveSms"><%=SmsReceiver.ALIAS_RECEIVE_SMS%></option>
								 <option <c:if test="${'createTime' eq searchColumn}"> selected</c:if> value="createTime"><%=SmsReceiver.ALIAS_CREATE_TIME%></option>
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