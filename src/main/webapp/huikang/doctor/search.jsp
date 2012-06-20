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
              <td class="func"><a onclick="show('${CTX}/huikang/doctor/do.jsp?method=${MD_F}','<%=Doctor.TABLE_ALIAS%>添加',600)" href="javascript:;" class="sysiconBtn addorder">添加</a></td>
            </tr>
          </table>
        </div></td>
      <td><div class="op_area">
          <table cellspacing="0" cellpadding="0" border="0" width="100%">
            <tr>
              <td class="functop"><h3>默认操作区</h3></td>
            </tr>
            <tr>
              <td class="func"><span  onclick="doBatchDelete('${ctx}/huikang/doctor/do.jsp','items',document.forms.huikang_doctor_page_form)" class="sysiconBtn delete">删除</span><a  onclick="showConfirm('/pages/admin/huikang/doctor/batch_edit.jsp','批量编辑',500,300,function(){alert('编辑成功')},function(){alert('取消编辑')})"  class="sysiconBtn edit">批量编辑</a></td>
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
							<td class="tdLabel"><%=Doctor.ALIAS_USER_NAME%>：</td>		
							<td>
								<input value="${query.userName}" id="userName" name="userName" maxlength="100"  class=""/>
							</td>
							<td class="tdLabel"><%=Doctor.ALIAS_PASSWORD%>：</td>		
							<td>
								<input value="${query.password}" id="password" name="password" maxlength="45"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Doctor.ALIAS_REAL_NAME%>：</td>		
							<td>
								<input value="${query.realName}" id="realName" name="realName" maxlength="100"  class=""/>
							</td>
							<td class="tdLabel"><%=Doctor.ALIAS_BIRTHDAY%>：</td>		
							<td>
								<input value="${query.birthday}" id="birthday" name="birthday" maxlength="19"  class="digits "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Doctor.ALIAS_SEX%>：</td>		
							<td>
								<input value="${query.sex}" id="sex" name="sex" maxlength="3"  class="digits "/>
							</td>
							<td class="tdLabel"><%=Doctor.ALIAS_ADDRESS%>：</td>		
							<td>
								<input value="${query.address}" id="address" name="address" maxlength="500"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Doctor.ALIAS_PHONE%>：</td>		
							<td>
								<input value="${query.phone}" id="phone" name="phone" maxlength="20"  class="phone "/>
							</td>
							<td class="tdLabel"><%=Doctor.ALIAS_MOBILE%>：</td>		
							<td>
								<input value="${query.mobile}" id="mobile" name="mobile" maxlength="20"  class="mobile "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Doctor.ALIAS_EMAIL%>：</td>		
							<td>
								<input value="${query.email}" id="email" name="email" maxlength="200"  class="email "/>
							</td>
							<td class="tdLabel"><%=Doctor.ALIAS_MAIN_TYPE%>：</td>		
							<td>
								<input value="${query.mainType}" id="mainType" name="mainType" maxlength="45"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Doctor.ALIAS_NATION%>：</td>		
							<td>
								<input value="${query.nation}" id="nation" name="nation" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=Doctor.ALIAS_MARRIAGE%>：</td>		
							<td>
								<input value="${query.marriage}" id="marriage" name="marriage" maxlength="19"  class="digits "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Doctor.ALIAS_COMPANY%>：</td>		
							<td>
								<input value="${query.company}" id="company" name="company" maxlength="500"  class=""/>
							</td>
							<td class="tdLabel"><%=Doctor.ALIAS_WORK_GROUP_ID%>：</td>		
							<td>
								<input value="${query.workGroupId}" id="workGroupId" name="workGroupId" maxlength="19"  class="digits "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Doctor.ALIAS_SITE%>：</td>		
							<td>
								<input value="${query.site}" id="site" name="site" maxlength="500"  class=""/>
							</td>
							<td class="tdLabel"><%=Doctor.ALIAS_EMAIL_VALID%>：</td>		
							<td>
								<input value="${query.emailValid}" id="emailValid" name="emailValid" maxlength="3"  class="email digits "/>
							</td>
						</tr>	
				 </table> -->
				 
				 
				  <table>
						<tr>	
							<td class="tdLabel">
							<select id="searchColumn" name="searchColumn" onchange="syncValue(this,'#searchColumnSel')">
								 <option value="userName" <c:if test="${'userName' eq searchColumn}"> selected</c:if>><%=Doctor.ALIAS_USER_NAME%></option>
								 <option value="password" <c:if test="${'password' eq searchColumn}"> selected</c:if>><%=Doctor.ALIAS_PASSWORD%></option>
								 <option value="realName" <c:if test="${'realName' eq searchColumn}"> selected</c:if>><%=Doctor.ALIAS_REAL_NAME%></option>
								 <option value="birthday" <c:if test="${'birthday' eq searchColumn}"> selected</c:if>><%=Doctor.ALIAS_BIRTHDAY%></option>
								 <option value="sex" <c:if test="${'sex' eq searchColumn}"> selected</c:if>><%=Doctor.ALIAS_SEX%></option>
								 <option value="address" <c:if test="${'address' eq searchColumn}"> selected</c:if>><%=Doctor.ALIAS_ADDRESS%></option>
								 <option value="phone" <c:if test="${'phone' eq searchColumn}"> selected</c:if>><%=Doctor.ALIAS_PHONE%></option>
								 <option value="mobile" <c:if test="${'mobile' eq searchColumn}"> selected</c:if>><%=Doctor.ALIAS_MOBILE%></option>
								 <option value="email" <c:if test="${'email' eq searchColumn}"> selected</c:if>><%=Doctor.ALIAS_EMAIL%></option>
								 <option value="mainType" <c:if test="${'mainType' eq searchColumn}"> selected</c:if>><%=Doctor.ALIAS_MAIN_TYPE%></option>
								 <option value="nation" <c:if test="${'nation' eq searchColumn}"> selected</c:if>><%=Doctor.ALIAS_NATION%></option>
								 <option value="marriage" <c:if test="${'marriage' eq searchColumn}"> selected</c:if>><%=Doctor.ALIAS_MARRIAGE%></option>
								 <option value="company" <c:if test="${'company' eq searchColumn}"> selected</c:if>><%=Doctor.ALIAS_COMPANY%></option>
								 <option value="workGroupId" <c:if test="${'workGroupId' eq searchColumn}"> selected</c:if>><%=Doctor.ALIAS_WORK_GROUP_ID%></option>
								 <option value="site" <c:if test="${'site' eq searchColumn}"> selected</c:if>><%=Doctor.ALIAS_SITE%></option>
								 <option value="emailValid" <c:if test="${'emailValid' eq searchColumn}"> selected</c:if>><%=Doctor.ALIAS_EMAIL_VALID%></option>
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
								 <option <c:if test="${'userName' eq searchColumn}"> selected</c:if> value="userName"><%=Doctor.ALIAS_USER_NAME%></option>
								 <option <c:if test="${'password' eq searchColumn}"> selected</c:if> value="password"><%=Doctor.ALIAS_PASSWORD%></option>
								 <option <c:if test="${'realName' eq searchColumn}"> selected</c:if> value="realName"><%=Doctor.ALIAS_REAL_NAME%></option>
								 <option <c:if test="${'birthday' eq searchColumn}"> selected</c:if> value="birthday"><%=Doctor.ALIAS_BIRTHDAY%></option>
								 <option <c:if test="${'sex' eq searchColumn}"> selected</c:if> value="sex"><%=Doctor.ALIAS_SEX%></option>
								 <option <c:if test="${'address' eq searchColumn}"> selected</c:if> value="address"><%=Doctor.ALIAS_ADDRESS%></option>
								 <option <c:if test="${'phone' eq searchColumn}"> selected</c:if> value="phone"><%=Doctor.ALIAS_PHONE%></option>
								 <option <c:if test="${'mobile' eq searchColumn}"> selected</c:if> value="mobile"><%=Doctor.ALIAS_MOBILE%></option>
								 <option <c:if test="${'email' eq searchColumn}"> selected</c:if> value="email"><%=Doctor.ALIAS_EMAIL%></option>
								 <option <c:if test="${'mainType' eq searchColumn}"> selected</c:if> value="mainType"><%=Doctor.ALIAS_MAIN_TYPE%></option>
								 <option <c:if test="${'nation' eq searchColumn}"> selected</c:if> value="nation"><%=Doctor.ALIAS_NATION%></option>
								 <option <c:if test="${'marriage' eq searchColumn}"> selected</c:if> value="marriage"><%=Doctor.ALIAS_MARRIAGE%></option>
								 <option <c:if test="${'company' eq searchColumn}"> selected</c:if> value="company"><%=Doctor.ALIAS_COMPANY%></option>
								 <option <c:if test="${'workGroupId' eq searchColumn}"> selected</c:if> value="workGroupId"><%=Doctor.ALIAS_WORK_GROUP_ID%></option>
								 <option <c:if test="${'site' eq searchColumn}"> selected</c:if> value="site"><%=Doctor.ALIAS_SITE%></option>
								 <option <c:if test="${'emailValid' eq searchColumn}"> selected</c:if> value="emailValid"><%=Doctor.ALIAS_EMAIL_VALID%></option>
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