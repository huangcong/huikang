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
              <td class="func"><a onclick="show('${CTX}/huikang/disease/do.jsp?method=${MD_F}','<%=Disease.TABLE_ALIAS%>添加',600)" href="javascript:;" class="sysiconBtn addorder">添加</a></td>
            </tr>
          </table>
        </div></td>
      <td><div class="op_area">
          <table cellspacing="0" cellpadding="0" border="0" width="100%">
            <tr>
              <td class="functop"><h3>默认操作区</h3></td>
            </tr>
            <tr>
              <td class="func"><span  onclick="doBatchDelete('${ctx}/huikang/disease/do.jsp','items',document.forms.huikang_disease_page_form)" class="sysiconBtn delete">删除</span><a  onclick="showConfirm('/pages/admin/huikang/disease/batch_edit.jsp','批量编辑',500,300,function(){alert('编辑成功')},function(){alert('取消编辑')})"  class="sysiconBtn edit">批量编辑</a></td>
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
							<td class="tdLabel"><%=Disease.ALIAS_CODE%>：</td>		
							<td>
								<input value="${query.code}" id="code" name="code" maxlength="50"  class=""/>
							</td>
							<td class="tdLabel"><%=Disease.ALIAS_PARENT_ID%>：</td>		
							<td>
								<input value="${query.parentId}" id="parentId" name="parentId" maxlength="19"  class="digits "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Disease.ALIAS_ROOT_ID%>：</td>		
							<td>
								<input value="${query.rootId}" id="rootId" name="rootId" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=Disease.ALIAS_PATH%>：</td>		
							<td>
								<input value="${query.path}" id="path" name="path" maxlength="500"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Disease.ALIAS_NAME%>：</td>		
							<td>
								<input value="${query.name}" id="name" name="name" maxlength="100"  class=""/>
							</td>
							<td class="tdLabel"><%=Disease.ALIAS_VALIDABLE%>：</td>		
							<td>
								<input value="${query.validable}" id="validable" name="validable" maxlength="3"  class="digits "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Disease.ALIAS_GB_NAME%>：</td>		
							<td>
								<input value="${query.gbName}" id="gbName" name="gbName" maxlength="100"  class=""/>
							</td>
							<td class="tdLabel"><%=Disease.ALIAS_TYPE%>：</td>		
							<td>
								<input value="${query.type}" id="type" name="type" maxlength="19"  class="digits "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Disease.ALIAS_DIAGNOSE_RULE%>：</td>		
							<td>
								<input value="${query.diagnoseRule}" id="diagnoseRule" name="diagnoseRule" maxlength="500"  class=""/>
							</td>
							<td class="tdLabel"><%=Disease.ALIAS_URGENT_RULE%>：</td>		
							<td>
								<input value="${query.urgentRule}" id="urgentRule" name="urgentRule" maxlength="500"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Disease.ALIAS_RISK_RULE%>：</td>		
							<td>
								<input value="${query.riskRule}" id="riskRule" name="riskRule" maxlength="500"  class=""/>
							</td>
							<td class="tdLabel"><%=Disease.ALIAS_NORMAL_RULE%>：</td>		
							<td>
								<input value="${query.normalRule}" id="normalRule" name="normalRule" maxlength="255"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Disease.ALIAS_URL%>：</td>		
							<td>
								<input value="${query.url}" id="url" name="url" maxlength="45"  class="url "/>
							</td>
						</tr>	
				 </table> -->
				 
				 
				  <table>
						<tr>	
							<td class="tdLabel">
							<select id="searchColumn" name="searchColumn" onchange="syncValue(this,'#searchColumnSel')">
								 <option value="code" <c:if test="${'code' eq searchColumn}"> selected</c:if>><%=Disease.ALIAS_CODE%></option>
								 <option value="parentId" <c:if test="${'parentId' eq searchColumn}"> selected</c:if>><%=Disease.ALIAS_PARENT_ID%></option>
								 <option value="rootId" <c:if test="${'rootId' eq searchColumn}"> selected</c:if>><%=Disease.ALIAS_ROOT_ID%></option>
								 <option value="path" <c:if test="${'path' eq searchColumn}"> selected</c:if>><%=Disease.ALIAS_PATH%></option>
								 <option value="name" <c:if test="${'name' eq searchColumn}"> selected</c:if>><%=Disease.ALIAS_NAME%></option>
								 <option value="validable" <c:if test="${'validable' eq searchColumn}"> selected</c:if>><%=Disease.ALIAS_VALIDABLE%></option>
								 <option value="gbName" <c:if test="${'gbName' eq searchColumn}"> selected</c:if>><%=Disease.ALIAS_GB_NAME%></option>
								 <option value="type" <c:if test="${'type' eq searchColumn}"> selected</c:if>><%=Disease.ALIAS_TYPE%></option>
								 <option value="diagnoseRule" <c:if test="${'diagnoseRule' eq searchColumn}"> selected</c:if>><%=Disease.ALIAS_DIAGNOSE_RULE%></option>
								 <option value="urgentRule" <c:if test="${'urgentRule' eq searchColumn}"> selected</c:if>><%=Disease.ALIAS_URGENT_RULE%></option>
								 <option value="riskRule" <c:if test="${'riskRule' eq searchColumn}"> selected</c:if>><%=Disease.ALIAS_RISK_RULE%></option>
								 <option value="normalRule" <c:if test="${'normalRule' eq searchColumn}"> selected</c:if>><%=Disease.ALIAS_NORMAL_RULE%></option>
								 <option value="url" <c:if test="${'url' eq searchColumn}"> selected</c:if>><%=Disease.ALIAS_URL%></option>
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
								 <option <c:if test="${'code' eq searchColumn}"> selected</c:if> value="code"><%=Disease.ALIAS_CODE%></option>
								 <option <c:if test="${'parentId' eq searchColumn}"> selected</c:if> value="parentId"><%=Disease.ALIAS_PARENT_ID%></option>
								 <option <c:if test="${'rootId' eq searchColumn}"> selected</c:if> value="rootId"><%=Disease.ALIAS_ROOT_ID%></option>
								 <option <c:if test="${'path' eq searchColumn}"> selected</c:if> value="path"><%=Disease.ALIAS_PATH%></option>
								 <option <c:if test="${'name' eq searchColumn}"> selected</c:if> value="name"><%=Disease.ALIAS_NAME%></option>
								 <option <c:if test="${'validable' eq searchColumn}"> selected</c:if> value="validable"><%=Disease.ALIAS_VALIDABLE%></option>
								 <option <c:if test="${'gbName' eq searchColumn}"> selected</c:if> value="gbName"><%=Disease.ALIAS_GB_NAME%></option>
								 <option <c:if test="${'type' eq searchColumn}"> selected</c:if> value="type"><%=Disease.ALIAS_TYPE%></option>
								 <option <c:if test="${'diagnoseRule' eq searchColumn}"> selected</c:if> value="diagnoseRule"><%=Disease.ALIAS_DIAGNOSE_RULE%></option>
								 <option <c:if test="${'urgentRule' eq searchColumn}"> selected</c:if> value="urgentRule"><%=Disease.ALIAS_URGENT_RULE%></option>
								 <option <c:if test="${'riskRule' eq searchColumn}"> selected</c:if> value="riskRule"><%=Disease.ALIAS_RISK_RULE%></option>
								 <option <c:if test="${'normalRule' eq searchColumn}"> selected</c:if> value="normalRule"><%=Disease.ALIAS_NORMAL_RULE%></option>
								 <option <c:if test="${'url' eq searchColumn}"> selected</c:if> value="url"><%=Disease.ALIAS_URL%></option>
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