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
              <td class="func"><a onclick="show('${CTX}/huikang/cmsResource/do.jsp?method=${MD_F}','<%=CmsResource.TABLE_ALIAS%>添加',600)" href="javascript:;" class="sysiconBtn addorder">添加</a></td>
            </tr>
          </table>
        </div></td>
      <td><div class="op_area">
          <table cellspacing="0" cellpadding="0" border="0" width="100%">
            <tr>
              <td class="functop"><h3>默认操作区</h3></td>
            </tr>
            <tr>
              <td class="func"><span  onclick="doBatchDelete('${ctx}/huikang/cmsResource/do.jsp','items',document.forms.huikang_cmsResource_page_form)" class="sysiconBtn delete">删除</span><a  onclick="showConfirm('/pages/admin/huikang/cmsResource/batch_edit.jsp','批量编辑',500,300,function(){alert('编辑成功')},function(){alert('取消编辑')})"  class="sysiconBtn edit">批量编辑</a></td>
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
							<td class="tdLabel"><%=CmsResource.ALIAS_CATEOGYR_ID%>：</td>		
							<td>
								<input value="${query.cateogyrId}" id="cateogyrId" name="cateogyrId" maxlength="19"  class="digits "/>
							</td>
							<td class="tdLabel"><%=CmsResource.ALIAS_TITLE%>：</td>		
							<td>
								<input value="${query.title}" id="title" name="title" maxlength="500"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=CmsResource.ALIAS_SUB_TITLE%>：</td>		
							<td>
								<input value="${query.subTitle}" id="subTitle" name="subTitle" maxlength="500"  class=""/>
							</td>
							<td class="tdLabel"><%=CmsResource.ALIAS_KEY_WORD%>：</td>		
							<td>
								<input value="${query.keyWord}" id="keyWord" name="keyWord" maxlength="1000"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=CmsResource.ALIAS_AUTHOR%>：</td>		
							<td>
								<input value="${query.author}" id="author" name="author" maxlength="45"  class=""/>
							</td>
							<td class="tdLabel"><%=CmsResource.ALIAS_SOURCE%>：</td>		
							<td>
								<input value="${query.source}" id="source" name="source" maxlength="45"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=CmsResource.ALIAS_CONTENT%>：</td>		
							<td>
								<input value="${query.content}" id="content" name="content" maxlength="2147483647"  class=""/>
							</td>
							<td class="tdLabel"><%=CmsResource.ALIAS_IMG_NUM%>：</td>		
							<td>
								<input value="${query.imgNum}" id="imgNum" name="imgNum" maxlength="10"  class="digits "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=CmsResource.ALIAS_VIEW_NUM%>：</td>		
							<td>
								<input value="${query.viewNum}" id="viewNum" name="viewNum" maxlength="10"  class="digits "/>
							</td>
							<td class="tdLabel"><%=CmsResource.ALIAS_FILE_PATH%>：</td>		
							<td>
								<input value="${query.filePath}" id="filePath" name="filePath" maxlength="255"  class=""/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=CmsResource.ALIAS_IMG_PATH%>：</td>		
							<td>
								<input value="${query.imgPath}" id="imgPath" name="imgPath" maxlength="255"  class=""/>
							</td>
							<td class="tdLabel"><%=CmsResource.ALIAS_ADD_TIME%>：</td>		
							<td>
								<input value="<fmt:formatDate value='${query.addTimeBegin}' pattern='<%=CmsResource.FORMAT_ADD_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=CmsResource.FORMAT_ADD_TIME%>'})" id="addTimeBegin" name="addTimeBegin"   />
								<input value="<fmt:formatDate value='${query.addTimeEnd}' pattern='<%=CmsResource.FORMAT_ADD_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=CmsResource.FORMAT_ADD_TIME%>'})" id="addTimeEnd" name="addTimeEnd"   />
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=CmsResource.ALIAS_UPDATE_TIME%>：</td>		
							<td>
								<input value="<fmt:formatDate value='${query.updateTimeBegin}' pattern='<%=CmsResource.FORMAT_UPDATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=CmsResource.FORMAT_UPDATE_TIME%>'})" id="updateTimeBegin" name="updateTimeBegin"   />
								<input value="<fmt:formatDate value='${query.updateTimeEnd}' pattern='<%=CmsResource.FORMAT_UPDATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=CmsResource.FORMAT_UPDATE_TIME%>'})" id="updateTimeEnd" name="updateTimeEnd"   />
							</td>
							<td class="tdLabel"><%=CmsResource.ALIAS_SORT%>：</td>		
							<td>
								<input value="${query.sort}" id="sort" name="sort" maxlength="10"  class="digits "/>
							</td>
						</tr>	
						<tr>	
							<td class="tdLabel"><%=CmsResource.ALIAS_CATEGORY_PATH%>：</td>		
							<td>
								<input value="${query.categoryPath}" id="categoryPath" name="categoryPath" maxlength="255"  class=""/>
							</td>
						</tr>	
				 </table> -->
				 
				 
				  <table>
						<tr>	
							<td class="tdLabel">
							<select id="searchColumn" name="searchColumn" onchange="syncValue(this,'#searchColumnSel')">
								 <option value="cateogyrId" <c:if test="${'cateogyrId' eq searchColumn}"> selected</c:if>><%=CmsResource.ALIAS_CATEOGYR_ID%></option>
								 <option value="title" <c:if test="${'title' eq searchColumn}"> selected</c:if>><%=CmsResource.ALIAS_TITLE%></option>
								 <option value="subTitle" <c:if test="${'subTitle' eq searchColumn}"> selected</c:if>><%=CmsResource.ALIAS_SUB_TITLE%></option>
								 <option value="keyWord" <c:if test="${'keyWord' eq searchColumn}"> selected</c:if>><%=CmsResource.ALIAS_KEY_WORD%></option>
								 <option value="author" <c:if test="${'author' eq searchColumn}"> selected</c:if>><%=CmsResource.ALIAS_AUTHOR%></option>
								 <option value="source" <c:if test="${'source' eq searchColumn}"> selected</c:if>><%=CmsResource.ALIAS_SOURCE%></option>
								 <option value="content" <c:if test="${'content' eq searchColumn}"> selected</c:if>><%=CmsResource.ALIAS_CONTENT%></option>
								 <option value="imgNum" <c:if test="${'imgNum' eq searchColumn}"> selected</c:if>><%=CmsResource.ALIAS_IMG_NUM%></option>
								 <option value="viewNum" <c:if test="${'viewNum' eq searchColumn}"> selected</c:if>><%=CmsResource.ALIAS_VIEW_NUM%></option>
								 <option value="filePath" <c:if test="${'filePath' eq searchColumn}"> selected</c:if>><%=CmsResource.ALIAS_FILE_PATH%></option>
								 <option value="imgPath" <c:if test="${'imgPath' eq searchColumn}"> selected</c:if>><%=CmsResource.ALIAS_IMG_PATH%></option>
								 <option value="addTime" <c:if test="${'addTime' eq searchColumn}"> selected</c:if>><%=CmsResource.ALIAS_ADD_TIME%></option>
								 <option value="updateTime" <c:if test="${'updateTime' eq searchColumn}"> selected</c:if>><%=CmsResource.ALIAS_UPDATE_TIME%></option>
								 <option value="sort" <c:if test="${'sort' eq searchColumn}"> selected</c:if>><%=CmsResource.ALIAS_SORT%></option>
								 <option value="categoryPath" <c:if test="${'categoryPath' eq searchColumn}"> selected</c:if>><%=CmsResource.ALIAS_CATEGORY_PATH%></option>
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
								 <option <c:if test="${'cateogyrId' eq searchColumn}"> selected</c:if> value="cateogyrId"><%=CmsResource.ALIAS_CATEOGYR_ID%></option>
								 <option <c:if test="${'title' eq searchColumn}"> selected</c:if> value="title"><%=CmsResource.ALIAS_TITLE%></option>
								 <option <c:if test="${'subTitle' eq searchColumn}"> selected</c:if> value="subTitle"><%=CmsResource.ALIAS_SUB_TITLE%></option>
								 <option <c:if test="${'keyWord' eq searchColumn}"> selected</c:if> value="keyWord"><%=CmsResource.ALIAS_KEY_WORD%></option>
								 <option <c:if test="${'author' eq searchColumn}"> selected</c:if> value="author"><%=CmsResource.ALIAS_AUTHOR%></option>
								 <option <c:if test="${'source' eq searchColumn}"> selected</c:if> value="source"><%=CmsResource.ALIAS_SOURCE%></option>
								 <option <c:if test="${'content' eq searchColumn}"> selected</c:if> value="content"><%=CmsResource.ALIAS_CONTENT%></option>
								 <option <c:if test="${'imgNum' eq searchColumn}"> selected</c:if> value="imgNum"><%=CmsResource.ALIAS_IMG_NUM%></option>
								 <option <c:if test="${'viewNum' eq searchColumn}"> selected</c:if> value="viewNum"><%=CmsResource.ALIAS_VIEW_NUM%></option>
								 <option <c:if test="${'filePath' eq searchColumn}"> selected</c:if> value="filePath"><%=CmsResource.ALIAS_FILE_PATH%></option>
								 <option <c:if test="${'imgPath' eq searchColumn}"> selected</c:if> value="imgPath"><%=CmsResource.ALIAS_IMG_PATH%></option>
								 <option <c:if test="${'addTime' eq searchColumn}"> selected</c:if> value="addTime"><%=CmsResource.ALIAS_ADD_TIME%></option>
								 <option <c:if test="${'updateTime' eq searchColumn}"> selected</c:if> value="updateTime"><%=CmsResource.ALIAS_UPDATE_TIME%></option>
								 <option <c:if test="${'sort' eq searchColumn}"> selected</c:if> value="sort"><%=CmsResource.ALIAS_SORT%></option>
								 <option <c:if test="${'categoryPath' eq searchColumn}"> selected</c:if> value="categoryPath"><%=CmsResource.ALIAS_CATEGORY_PATH%></option>
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