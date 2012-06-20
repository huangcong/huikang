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
              <td class="func"><a onclick="show('${CTX}/huikang/patientDisease/do.jsp?method=${MD_F}','<%=PatientDisease.TABLE_ALIAS%>添加',600)" href="javascript:;" class="sysiconBtn addorder">添加</a></td>
            </tr>
          </table>
        </div></td>
      <td><div class="op_area">
          <table cellspacing="0" cellpadding="0" border="0" width="100%">
            <tr>
              <td class="functop"><h3>默认操作区</h3></td>
            </tr>
            <tr>
              <td class="func"><span  onclick="doBatchDelete('${ctx}/huikang/patientDisease/do.jsp','items',document.forms.huikang_patientDisease_page_form)" class="sysiconBtn delete">删除</span><a  onclick="showConfirm('/pages/admin/huikang/patientDisease/batch_edit.jsp','批量编辑',500,300,function(){alert('编辑成功')},function(){alert('取消编辑')})"  class="sysiconBtn edit">批量编辑</a></td>
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
							<td class="tdLabel"><%=PatientDisease.ALIAS_PATIENT_ID%>：</td>		
							<td>
								<input value="${query.patientId}" id="patientId" name="patientId" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=PatientDisease.ALIAS_DISEASE_ID%>：</td>		
							<td>
								<input value="${query.diseaseId}" id="diseaseId" name="diseaseId" maxlength="19"  class="digits "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=PatientDisease.ALIAS_DIAGNOSE_TIME%>：</td>		
							<td>
								<input value="<fmt:formatDate value='${query.diagnoseTimeBegin}' pattern='<%=PatientDisease.FORMAT_DIAGNOSE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=PatientDisease.FORMAT_DIAGNOSE_TIME%>'})" id="diagnoseTimeBegin" name="diagnoseTimeBegin"   />
								<input value="<fmt:formatDate value='${query.diagnoseTimeEnd}' pattern='<%=PatientDisease.FORMAT_DIAGNOSE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=PatientDisease.FORMAT_DIAGNOSE_TIME%>'})" id="diagnoseTimeEnd" name="diagnoseTimeEnd"   />
							</td>
							<td class="tdLabel"><%=PatientDisease.ALIAS_DIAGNOSE_ADDRESS%>：</td>		
							<td>
								<input value="${query.diagnoseAddress}" id="diagnoseAddress" name="diagnoseAddress" maxlength="500"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=PatientDisease.ALIAS_FAMILY_HISTORY%>：</td>		
							<td>
								<input value="${query.familyHistory}" id="familyHistory" name="familyHistory" maxlength="3"  class="digits "/>
							</td>
							<td class="tdLabel"><%=PatientDisease.ALIAS_YEARS%>：</td>		
							<td>
								<input value="${query.years}" id="years" name="years" maxlength="10"  class="digits "/>
							</td>
						</tr>	
				 </table> -->
				 
				 
				  <table>
						<tr>	
							<td class="tdLabel">
							<select id="searchColumn" name="searchColumn" onchange="syncValue(this,'#searchColumnSel')">
								 <option value="patientId" <c:if test="${'patientId' eq searchColumn}"> selected</c:if>><%=PatientDisease.ALIAS_PATIENT_ID%></option>
								 <option value="diseaseId" <c:if test="${'diseaseId' eq searchColumn}"> selected</c:if>><%=PatientDisease.ALIAS_DISEASE_ID%></option>
								 <option value="diagnoseTime" <c:if test="${'diagnoseTime' eq searchColumn}"> selected</c:if>><%=PatientDisease.ALIAS_DIAGNOSE_TIME%></option>
								 <option value="diagnoseAddress" <c:if test="${'diagnoseAddress' eq searchColumn}"> selected</c:if>><%=PatientDisease.ALIAS_DIAGNOSE_ADDRESS%></option>
								 <option value="familyHistory" <c:if test="${'familyHistory' eq searchColumn}"> selected</c:if>><%=PatientDisease.ALIAS_FAMILY_HISTORY%></option>
								 <option value="years" <c:if test="${'years' eq searchColumn}"> selected</c:if>><%=PatientDisease.ALIAS_YEARS%></option>
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
								 <option <c:if test="${'patientId' eq searchColumn}"> selected</c:if> value="patientId"><%=PatientDisease.ALIAS_PATIENT_ID%></option>
								 <option <c:if test="${'diseaseId' eq searchColumn}"> selected</c:if> value="diseaseId"><%=PatientDisease.ALIAS_DISEASE_ID%></option>
								 <option <c:if test="${'diagnoseTime' eq searchColumn}"> selected</c:if> value="diagnoseTime"><%=PatientDisease.ALIAS_DIAGNOSE_TIME%></option>
								 <option <c:if test="${'diagnoseAddress' eq searchColumn}"> selected</c:if> value="diagnoseAddress"><%=PatientDisease.ALIAS_DIAGNOSE_ADDRESS%></option>
								 <option <c:if test="${'familyHistory' eq searchColumn}"> selected</c:if> value="familyHistory"><%=PatientDisease.ALIAS_FAMILY_HISTORY%></option>
								 <option <c:if test="${'years' eq searchColumn}"> selected</c:if> value="years"><%=PatientDisease.ALIAS_YEARS%></option>
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