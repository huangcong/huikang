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
              <td class="func"><a onclick="show('${CTX}/huikang/patient/do.jsp?method=${MD_F}','<%=Patient.TABLE_ALIAS%>添加',600)" href="javascript:;" class="sysiconBtn addorder">添加</a></td>
            </tr>
          </table>
        </div></td>
      <td><div class="op_area">
          <table cellspacing="0" cellpadding="0" border="0" width="100%">
            <tr>
              <td class="functop"><h3>默认操作区</h3></td>
            </tr>
            <tr>
              <td class="func"><span  onclick="doBatchDelete('${ctx}/huikang/patient/do.jsp','items',document.forms.huikang_patient_page_form)" class="sysiconBtn delete">删除</span><a  onclick="showConfirm('/pages/admin/huikang/patient/batch_edit.jsp','批量编辑',500,300,function(){alert('编辑成功')},function(){alert('取消编辑')})"  class="sysiconBtn edit">批量编辑</a></td>
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
							<td class="tdLabel"><%=Patient.ALIAS_CODE%>：</td>		
							<td>
								<input value="${query.code}" id="code" name="code" maxlength="45"  class=""/>
							</td>
							<td class="tdLabel"><%=Patient.ALIAS_NAME%>：</td>		
							<td>
								<input value="${query.name}" id="name" name="name" maxlength="100"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Patient.ALIAS_BIRTHDAY%>：</td>		
							<td>
								<input value="${query.birthday}" id="birthday" name="birthday" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=Patient.ALIAS_SEX%>：</td>		
							<td>
								<input value="${query.sex}" id="sex" name="sex" maxlength="3"  class="digits "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Patient.ALIAS_ADDRESS%>：</td>		
							<td>
								<input value="${query.address}" id="address" name="address" maxlength="500"  class=""/>
							</td>
							<td class="tdLabel"><%=Patient.ALIAS_ZIP_CODE%>：</td>		
							<td>
								<input value="${query.zipCode}" id="zipCode" name="zipCode" maxlength="45"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Patient.ALIAS_DEGREE%>：</td>		
							<td>
								<input value="${query.degree}" id="degree" name="degree" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=Patient.ALIAS_PHONE%>：</td>		
							<td>
								<input value="${query.phone}" id="phone" name="phone" maxlength="45"  class="phone "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Patient.ALIAS_MOBILE%>：</td>		
							<td>
								<input value="${query.mobile}" id="mobile" name="mobile" maxlength="45"  class="mobile "/>
							</td>
							<td class="tdLabel"><%=Patient.ALIAS_EMAIL%>：</td>		
							<td>
								<input value="${query.email}" id="email" name="email" maxlength="200"  class="email "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Patient.ALIAS_MAIN_TYPE%>：</td>		
							<td>
								<input value="${query.mainType}" id="mainType" name="mainType" maxlength="45"  class=""/>
							</td>
							<td class="tdLabel"><%=Patient.ALIAS_NATION%>：</td>		
							<td>
								<input value="${query.nation}" id="nation" name="nation" maxlength="19"  class="digits "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Patient.ALIAS_MARRIAGE%>：</td>		
							<td>
								<input value="${query.marriage}" id="marriage" name="marriage" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=Patient.ALIAS_COMPANY%>：</td>		
							<td>
								<input value="${query.company}" id="company" name="company" maxlength="500"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Patient.ALIAS_CONTACTER1%>：</td>		
							<td>
								<input value="${query.contacter1}" id="contacter1" name="contacter1" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=Patient.ALIAS_CONTACTER2%>：</td>		
							<td>
								<input value="${query.contacter2}" id="contacter2" name="contacter2" maxlength="19"  class="digits "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Patient.ALIAS_SOURCE%>：</td>		
							<td>
								<input value="${query.source}" id="source" name="source" maxlength="45"  class=""/>
							</td>
							<td class="tdLabel"><%=Patient.ALIAS_REMARK%>：</td>		
							<td>
								<input value="${query.remark}" id="remark" name="remark" maxlength="65535"  class=""/>
							</td>
						</tr>	
				 </table> -->
				 
				 
				  <table>
						<tr>	
							<td class="tdLabel">
							<select id="searchColumn" name="searchColumn" onchange="syncValue(this,'#searchColumnSel')">
								 <option value="code" <c:if test="${'code' eq searchColumn}"> selected</c:if>><%=Patient.ALIAS_CODE%></option>
								 <option value="name" <c:if test="${'name' eq searchColumn}"> selected</c:if>><%=Patient.ALIAS_NAME%></option>
								 <option value="birthday" <c:if test="${'birthday' eq searchColumn}"> selected</c:if>><%=Patient.ALIAS_BIRTHDAY%></option>
								 <option value="sex" <c:if test="${'sex' eq searchColumn}"> selected</c:if>><%=Patient.ALIAS_SEX%></option>
								 <option value="address" <c:if test="${'address' eq searchColumn}"> selected</c:if>><%=Patient.ALIAS_ADDRESS%></option>
								 <option value="zipCode" <c:if test="${'zipCode' eq searchColumn}"> selected</c:if>><%=Patient.ALIAS_ZIP_CODE%></option>
								 <option value="degree" <c:if test="${'degree' eq searchColumn}"> selected</c:if>><%=Patient.ALIAS_DEGREE%></option>
								 <option value="phone" <c:if test="${'phone' eq searchColumn}"> selected</c:if>><%=Patient.ALIAS_PHONE%></option>
								 <option value="mobile" <c:if test="${'mobile' eq searchColumn}"> selected</c:if>><%=Patient.ALIAS_MOBILE%></option>
								 <option value="email" <c:if test="${'email' eq searchColumn}"> selected</c:if>><%=Patient.ALIAS_EMAIL%></option>
								 <option value="mainType" <c:if test="${'mainType' eq searchColumn}"> selected</c:if>><%=Patient.ALIAS_MAIN_TYPE%></option>
								 <option value="nation" <c:if test="${'nation' eq searchColumn}"> selected</c:if>><%=Patient.ALIAS_NATION%></option>
								 <option value="marriage" <c:if test="${'marriage' eq searchColumn}"> selected</c:if>><%=Patient.ALIAS_MARRIAGE%></option>
								 <option value="company" <c:if test="${'company' eq searchColumn}"> selected</c:if>><%=Patient.ALIAS_COMPANY%></option>
								 <option value="contacter1" <c:if test="${'contacter1' eq searchColumn}"> selected</c:if>><%=Patient.ALIAS_CONTACTER1%></option>
								 <option value="contacter2" <c:if test="${'contacter2' eq searchColumn}"> selected</c:if>><%=Patient.ALIAS_CONTACTER2%></option>
								 <option value="source" <c:if test="${'source' eq searchColumn}"> selected</c:if>><%=Patient.ALIAS_SOURCE%></option>
								 <option value="remark" <c:if test="${'remark' eq searchColumn}"> selected</c:if>><%=Patient.ALIAS_REMARK%></option>
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
								 <option <c:if test="${'code' eq searchColumn}"> selected</c:if> value="code"><%=Patient.ALIAS_CODE%></option>
								 <option <c:if test="${'name' eq searchColumn}"> selected</c:if> value="name"><%=Patient.ALIAS_NAME%></option>
								 <option <c:if test="${'birthday' eq searchColumn}"> selected</c:if> value="birthday"><%=Patient.ALIAS_BIRTHDAY%></option>
								 <option <c:if test="${'sex' eq searchColumn}"> selected</c:if> value="sex"><%=Patient.ALIAS_SEX%></option>
								 <option <c:if test="${'address' eq searchColumn}"> selected</c:if> value="address"><%=Patient.ALIAS_ADDRESS%></option>
								 <option <c:if test="${'zipCode' eq searchColumn}"> selected</c:if> value="zipCode"><%=Patient.ALIAS_ZIP_CODE%></option>
								 <option <c:if test="${'degree' eq searchColumn}"> selected</c:if> value="degree"><%=Patient.ALIAS_DEGREE%></option>
								 <option <c:if test="${'phone' eq searchColumn}"> selected</c:if> value="phone"><%=Patient.ALIAS_PHONE%></option>
								 <option <c:if test="${'mobile' eq searchColumn}"> selected</c:if> value="mobile"><%=Patient.ALIAS_MOBILE%></option>
								 <option <c:if test="${'email' eq searchColumn}"> selected</c:if> value="email"><%=Patient.ALIAS_EMAIL%></option>
								 <option <c:if test="${'mainType' eq searchColumn}"> selected</c:if> value="mainType"><%=Patient.ALIAS_MAIN_TYPE%></option>
								 <option <c:if test="${'nation' eq searchColumn}"> selected</c:if> value="nation"><%=Patient.ALIAS_NATION%></option>
								 <option <c:if test="${'marriage' eq searchColumn}"> selected</c:if> value="marriage"><%=Patient.ALIAS_MARRIAGE%></option>
								 <option <c:if test="${'company' eq searchColumn}"> selected</c:if> value="company"><%=Patient.ALIAS_COMPANY%></option>
								 <option <c:if test="${'contacter1' eq searchColumn}"> selected</c:if> value="contacter1"><%=Patient.ALIAS_CONTACTER1%></option>
								 <option <c:if test="${'contacter2' eq searchColumn}"> selected</c:if> value="contacter2"><%=Patient.ALIAS_CONTACTER2%></option>
								 <option <c:if test="${'source' eq searchColumn}"> selected</c:if> value="source"><%=Patient.ALIAS_SOURCE%></option>
								 <option <c:if test="${'remark' eq searchColumn}"> selected</c:if> value="remark"><%=Patient.ALIAS_REMARK%></option>
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