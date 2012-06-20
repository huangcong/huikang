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
              <td class="func"><a onclick="show('${CTX}/huikang/template/do.jsp?method=${MD_F}','<%=Template.TABLE_ALIAS%>添加',600)" href="javascript:;" class="sysiconBtn addorder">添加</a></td>
            </tr>
          </table>
        </div></td>
      <td><div class="op_area">
          <table cellspacing="0" cellpadding="0" border="0" width="100%">
            <tr>
              <td class="functop"><h3>默认操作区</h3></td>
            </tr>
            <tr>
              <td class="func"><span  onclick="doBatchDelete('${ctx}/huikang/template/do.jsp','items',document.forms.huikang_template_page_form)" class="sysiconBtn delete">删除</span><a  onclick="showConfirm('/pages/admin/huikang/template/batch_edit.jsp','批量编辑',500,300,function(){alert('编辑成功')},function(){alert('取消编辑')})"  class="sysiconBtn edit">批量编辑</a></td>
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
							<td class="tdLabel"><%=Template.ALIAS_NAME%>：</td>		
							<td>
								<input value="${query.name}" id="name" name="name" maxlength="200"  class=""/>
							</td>
							<td class="tdLabel"><%=Template.ALIAS_CONTENT%>：</td>		
							<td>
								<input value="${query.content}" id="content" name="content" maxlength="2147483647"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Template.ALIAS_MODELS%>：</td>		
							<td>
								<input value="${query.models}" id="models" name="models" maxlength="500"  class=""/>
							</td>
							<td class="tdLabel"><%=Template.ALIAS_TYPE%>：</td>		
							<td>
								<input value="${query.type}" id="type" name="type" maxlength="45"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=Template.ALIAS_ENABLE%>：</td>		
							<td>
								<input value="${query.enable}" id="enable" name="enable" maxlength="3"  class="digits "/>
							</td>
							<td class="tdLabel"><%=Template.ALIAS_CREATE_TIME%>：</td>		
							<td>
								<input value="<fmt:formatDate value='${query.createTimeBegin}' pattern='<%=Template.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Template.FORMAT_CREATE_TIME%>'})" id="createTimeBegin" name="createTimeBegin"   />
								<input value="<fmt:formatDate value='${query.createTimeEnd}' pattern='<%=Template.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Template.FORMAT_CREATE_TIME%>'})" id="createTimeEnd" name="createTimeEnd"   />
							</td>
						</tr>	
				 </table> -->
				 
				 
				  <table>
						<tr>	
							<td class="tdLabel">
							<select id="searchColumn" name="searchColumn" onchange="syncValue(this,'#searchColumnSel')">
								 <option value="name" <c:if test="${'name' eq searchColumn}"> selected</c:if>><%=Template.ALIAS_NAME%></option>
								 <option value="content" <c:if test="${'content' eq searchColumn}"> selected</c:if>><%=Template.ALIAS_CONTENT%></option>
								 <option value="models" <c:if test="${'models' eq searchColumn}"> selected</c:if>><%=Template.ALIAS_MODELS%></option>
								 <option value="type" <c:if test="${'type' eq searchColumn}"> selected</c:if>><%=Template.ALIAS_TYPE%></option>
								 <option value="enable" <c:if test="${'enable' eq searchColumn}"> selected</c:if>><%=Template.ALIAS_ENABLE%></option>
								 <option value="createTime" <c:if test="${'createTime' eq searchColumn}"> selected</c:if>><%=Template.ALIAS_CREATE_TIME%></option>
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
								 <option <c:if test="${'name' eq searchColumn}"> selected</c:if> value="name"><%=Template.ALIAS_NAME%></option>
								 <option <c:if test="${'content' eq searchColumn}"> selected</c:if> value="content"><%=Template.ALIAS_CONTENT%></option>
								 <option <c:if test="${'models' eq searchColumn}"> selected</c:if> value="models"><%=Template.ALIAS_MODELS%></option>
								 <option <c:if test="${'type' eq searchColumn}"> selected</c:if> value="type"><%=Template.ALIAS_TYPE%></option>
								 <option <c:if test="${'enable' eq searchColumn}"> selected</c:if> value="enable"><%=Template.ALIAS_ENABLE%></option>
								 <option <c:if test="${'createTime' eq searchColumn}"> selected</c:if> value="createTime"><%=Template.ALIAS_CREATE_TIME%></option>
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