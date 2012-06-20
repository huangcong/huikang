<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="cmsCategory" class="com.up72.huikang.model.CmsCategory" scope="page" />

<div id="" style="">
                  <table cellspacing="0" cellpadding="0" border="0" class="tableform">
                    <tr>
                      <td style="vertical-align:top;">
                        <div class="divform">
                          <table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
                            <tr>
                              <td style="vertical-align:top;"><h5><%=CmsCategory.TABLE_ALIAS%>信息</h5>
                                <div class="division">
                                  <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                      <th><%=CmsCategory.ALIAS_CMS_CATEGORY_ID%>：</th>
                                      <td><c:out value='${cmsCategory.cmsCategoryId}'/></td>
                                      <th><%=CmsCategory.ALIAS_ROOT_CATEGORY_ID%>：</th>
                                      <td><c:out value='${cmsCategory.rootCategoryId}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=CmsCategory.ALIAS_NAME%>：</th>
                                      <td><c:out value='${cmsCategory.name}'/></td>
                                      <th><%=CmsCategory.ALIAS_IMG_PATH%>：</th>
                                      <td><c:out value='${cmsCategory.imgPath}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=CmsCategory.ALIAS_DESCRIPTION%>：</th>
                                      <td><c:out value='${cmsCategory.description}'/></td>
                                      <th><%=CmsCategory.ALIAS_PATH%>：</th>
                                      <td><c:out value='${cmsCategory.path}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=CmsCategory.ALIAS_LEVEL%>：</th>
                                      <td><c:out value='${cmsCategory.level}'/></td>
                                      <th><%=CmsCategory.ALIAS_ENABLE%>：</th>
                                      <td><c:out value='${cmsCategory.enable}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=CmsCategory.ALIAS_SORT%>：</th>
                                      <td><c:out value='${cmsCategory.sort}'/></td>
                                    </tr>
                                  </table>
                                </div></td>
                            </tr>
                          </table>
                      </div></td>
                    </tr>
                  </table>
                </div>
