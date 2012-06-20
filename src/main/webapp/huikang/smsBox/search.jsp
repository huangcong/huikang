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
              <td class="func"><a onclick="show('${CTX}/huikang/smsBox/do.jsp?method=${MD_F}','<%=SmsBox.TABLE_ALIAS%>添加',600)" href="javascript:;" class="sysiconBtn addorder">添加</a></td>
            </tr>
          </table>
        </div></td>
      <td><div class="op_area">
          <table cellspacing="0" cellpadding="0" border="0" width="100%">
            <tr>
              <td class="functop"><h3>默认操作区</h3></td>
            </tr>
            <tr>
              <td class="func"><span  onclick="doBatchDelete('${ctx}/huikang/smsBox/do.jsp','items',document.forms.huikang_smsBox_page_form)" class="sysiconBtn delete">删除</span><a  onclick="showConfirm('/pages/admin/huikang/smsBox/batch_edit.jsp','批量编辑',500,300,function(){alert('编辑成功')},function(){alert('取消编辑')})"  class="sysiconBtn edit">批量编辑</a></td>
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
							<td class="tdLabel"><%=SmsBox.ALIAS_SEND_ID%>：</td>		
							<td>
								<input value="${query.sendId}" id="sendId" name="sendId" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=SmsBox.ALIAS_SEND_NUM%>：</td>		
							<td>
								<input value="${query.sendNum}" id="sendNum" name="sendNum" maxlength="45"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=SmsBox.ALIAS_TEMPLATE_ID%>：</td>		
							<td>
								<input value="${query.templateId}" id="templateId" name="templateId" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=SmsBox.ALIAS_TEMPLATE_MODEL%>：</td>		
							<td>
								<input value="${query.templateModel}" id="templateModel" name="templateModel" maxlength="500"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=SmsBox.ALIAS_CONTENT%>：</td>		
							<td>
								<input value="${query.content}" id="content" name="content" maxlength="65535"  class=""/>
							</td>
							<td class="tdLabel"><%=SmsBox.ALIAS_TYPE%>：</td>		
							<td>
								<input value="${query.type}" id="type" name="type" maxlength="45"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=SmsBox.ALIAS_DELETED%>：</td>		
							<td>
								<input value="${query.deleted}" id="deleted" name="deleted" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=SmsBox.ALIAS_SEND_TIME%>：</td>		
							<td>
								<input value="<fmt:formatDate value='${query.sendTimeBegin}' pattern='<%=SmsBox.FORMAT_SEND_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=SmsBox.FORMAT_SEND_TIME%>'})" id="sendTimeBegin" name="sendTimeBegin"   />
								<input value="<fmt:formatDate value='${query.sendTimeEnd}' pattern='<%=SmsBox.FORMAT_SEND_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=SmsBox.FORMAT_SEND_TIME%>'})" id="sendTimeEnd" name="sendTimeEnd"   />
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=SmsBox.ALIAS_RESULT%>：</td>		
							<td>
								<input value="${query.result}" id="result" name="result" maxlength="45"  class=""/>
							</td>
						</tr>	
				 </table> -->
				 
				 
				  <table>
						<tr>	
							<td class="tdLabel">
							<select id="searchColumn" name="searchColumn" onchange="syncValue(this,'#searchColumnSel')">
								 <option value="sendId" <c:if test="${'sendId' eq searchColumn}"> selected</c:if>><%=SmsBox.ALIAS_SEND_ID%></option>
								 <option value="sendNum" <c:if test="${'sendNum' eq searchColumn}"> selected</c:if>><%=SmsBox.ALIAS_SEND_NUM%></option>
								 <option value="templateId" <c:if test="${'templateId' eq searchColumn}"> selected</c:if>><%=SmsBox.ALIAS_TEMPLATE_ID%></option>
								 <option value="templateModel" <c:if test="${'templateModel' eq searchColumn}"> selected</c:if>><%=SmsBox.ALIAS_TEMPLATE_MODEL%></option>
								 <option value="content" <c:if test="${'content' eq searchColumn}"> selected</c:if>><%=SmsBox.ALIAS_CONTENT%></option>
								 <option value="type" <c:if test="${'type' eq searchColumn}"> selected</c:if>><%=SmsBox.ALIAS_TYPE%></option>
								 <option value="deleted" <c:if test="${'deleted' eq searchColumn}"> selected</c:if>><%=SmsBox.ALIAS_DELETED%></option>
								 <option value="sendTime" <c:if test="${'sendTime' eq searchColumn}"> selected</c:if>><%=SmsBox.ALIAS_SEND_TIME%></option>
								 <option value="result" <c:if test="${'result' eq searchColumn}"> selected</c:if>><%=SmsBox.ALIAS_RESULT%></option>
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
								 <option <c:if test="${'sendId' eq searchColumn}"> selected</c:if> value="sendId"><%=SmsBox.ALIAS_SEND_ID%></option>
								 <option <c:if test="${'sendNum' eq searchColumn}"> selected</c:if> value="sendNum"><%=SmsBox.ALIAS_SEND_NUM%></option>
								 <option <c:if test="${'templateId' eq searchColumn}"> selected</c:if> value="templateId"><%=SmsBox.ALIAS_TEMPLATE_ID%></option>
								 <option <c:if test="${'templateModel' eq searchColumn}"> selected</c:if> value="templateModel"><%=SmsBox.ALIAS_TEMPLATE_MODEL%></option>
								 <option <c:if test="${'content' eq searchColumn}"> selected</c:if> value="content"><%=SmsBox.ALIAS_CONTENT%></option>
								 <option <c:if test="${'type' eq searchColumn}"> selected</c:if> value="type"><%=SmsBox.ALIAS_TYPE%></option>
								 <option <c:if test="${'deleted' eq searchColumn}"> selected</c:if> value="deleted"><%=SmsBox.ALIAS_DELETED%></option>
								 <option <c:if test="${'sendTime' eq searchColumn}"> selected</c:if> value="sendTime"><%=SmsBox.ALIAS_SEND_TIME%></option>
								 <option <c:if test="${'result' eq searchColumn}"> selected</c:if> value="result"><%=SmsBox.ALIAS_RESULT%></option>
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