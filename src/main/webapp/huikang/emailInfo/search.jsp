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
              <td class="func"><a onclick="show('${CTX}/huikang/emailInfo/do.jsp?method=${MD_F}','<%=EmailInfo.TABLE_ALIAS%>添加',600)" href="javascript:;" class="sysiconBtn addorder">添加</a></td>
            </tr>
          </table>
        </div></td>
      <td><div class="op_area">
          <table cellspacing="0" cellpadding="0" border="0" width="100%">
            <tr>
              <td class="functop"><h3>默认操作区</h3></td>
            </tr>
            <tr>
              <td class="func"><span  onclick="doBatchDelete('${ctx}/huikang/emailInfo/do.jsp','items',document.forms.huikang_emailInfo_page_form)" class="sysiconBtn delete">删除</span><a  onclick="showConfirm('/pages/admin/huikang/emailInfo/batch_edit.jsp','批量编辑',500,300,function(){alert('编辑成功')},function(){alert('取消编辑')})"  class="sysiconBtn edit">批量编辑</a></td>
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
							<td class="tdLabel"><%=EmailInfo.ALIAS_DOCTOR_ID%>：</td>		
							<td>
								<input value="${query.doctorId}" id="doctorId" name="doctorId" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=EmailInfo.ALIAS_EMAIL%>：</td>		
							<td>
								<input value="${query.email}" id="email" name="email" maxlength="200"  class="email "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=EmailInfo.ALIAS_SERVER%>：</td>		
							<td>
								<input value="${query.server}" id="server" name="server" maxlength="100"  class=""/>
							</td>
							<td class="tdLabel"><%=EmailInfo.ALIAS_PASSWORD%>：</td>		
							<td>
								<input value="${query.password}" id="password" name="password" maxlength="255"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=EmailInfo.ALIAS_AUTH%>：</td>		
							<td>
								<input value="${query.auth}" id="auth" name="auth" maxlength="3"  class="digits "/>
							</td>
							<td class="tdLabel"><%=EmailInfo.ALIAS_DELETED%>：</td>		
							<td>
								<input value="${query.deleted}" id="deleted" name="deleted" maxlength="3"  class="digits "/>
							</td>
						</tr>	
				 </table> -->
				 
				 
				  <table>
						<tr>	
							<td class="tdLabel">
							<select id="searchColumn" name="searchColumn" onchange="syncValue(this,'#searchColumnSel')">
								 <option value="doctorId" <c:if test="${'doctorId' eq searchColumn}"> selected</c:if>><%=EmailInfo.ALIAS_DOCTOR_ID%></option>
								 <option value="email" <c:if test="${'email' eq searchColumn}"> selected</c:if>><%=EmailInfo.ALIAS_EMAIL%></option>
								 <option value="server" <c:if test="${'server' eq searchColumn}"> selected</c:if>><%=EmailInfo.ALIAS_SERVER%></option>
								 <option value="password" <c:if test="${'password' eq searchColumn}"> selected</c:if>><%=EmailInfo.ALIAS_PASSWORD%></option>
								 <option value="auth" <c:if test="${'auth' eq searchColumn}"> selected</c:if>><%=EmailInfo.ALIAS_AUTH%></option>
								 <option value="deleted" <c:if test="${'deleted' eq searchColumn}"> selected</c:if>><%=EmailInfo.ALIAS_DELETED%></option>
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
								 <option <c:if test="${'doctorId' eq searchColumn}"> selected</c:if> value="doctorId"><%=EmailInfo.ALIAS_DOCTOR_ID%></option>
								 <option <c:if test="${'email' eq searchColumn}"> selected</c:if> value="email"><%=EmailInfo.ALIAS_EMAIL%></option>
								 <option <c:if test="${'server' eq searchColumn}"> selected</c:if> value="server"><%=EmailInfo.ALIAS_SERVER%></option>
								 <option <c:if test="${'password' eq searchColumn}"> selected</c:if> value="password"><%=EmailInfo.ALIAS_PASSWORD%></option>
								 <option <c:if test="${'auth' eq searchColumn}"> selected</c:if> value="auth"><%=EmailInfo.ALIAS_AUTH%></option>
								 <option <c:if test="${'deleted' eq searchColumn}"> selected</c:if> value="deleted"><%=EmailInfo.ALIAS_DELETED%></option>
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