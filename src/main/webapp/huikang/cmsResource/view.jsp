<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="cmsResource" class="com.up72.huikang.model.CmsResource" scope="page" />

<div id="" style="">
                  <table cellspacing="0" cellpadding="0" border="0" class="tableform">
                    <tr>
                      <td style="vertical-align:top;">
                        <div class="divform">
                          <table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
                            <tr>
                              <td style="vertical-align:top;"><h5><%=CmsResource.TABLE_ALIAS%>信息</h5>
                                <div class="division">
                                  <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                      <th><%=CmsResource.ALIAS_CATEOGYR_ID%>：</th>
                                      <td><c:out value='${cmsResource.cateogyrId}'/></td>
                                      <th><%=CmsResource.ALIAS_TITLE%>：</th>
                                      <td><c:out value='${cmsResource.title}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=CmsResource.ALIAS_SUB_TITLE%>：</th>
                                      <td><c:out value='${cmsResource.subTitle}'/></td>
                                      <th><%=CmsResource.ALIAS_KEY_WORD%>：</th>
                                      <td><c:out value='${cmsResource.keyWord}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=CmsResource.ALIAS_AUTHOR%>：</th>
                                      <td><c:out value='${cmsResource.author}'/></td>
                                      <th><%=CmsResource.ALIAS_SOURCE%>：</th>
                                      <td><c:out value='${cmsResource.source}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=CmsResource.ALIAS_CONTENT%>：</th>
                                      <td><c:out value='${cmsResource.content}'/></td>
                                      <th><%=CmsResource.ALIAS_IMG_NUM%>：</th>
                                      <td><c:out value='${cmsResource.imgNum}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=CmsResource.ALIAS_VIEW_NUM%>：</th>
                                      <td><c:out value='${cmsResource.viewNum}'/></td>
                                      <th><%=CmsResource.ALIAS_FILE_PATH%>：</th>
                                      <td><c:out value='${cmsResource.filePath}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=CmsResource.ALIAS_IMG_PATH%>：</th>
                                      <td><c:out value='${cmsResource.imgPath}'/></td>
                                      <th><%=CmsResource.ALIAS_ADD_TIME%>：</th>
                                      <td><c:out value='${cmsResource.addTimeString}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=CmsResource.ALIAS_UPDATE_TIME%>：</th>
                                      <td><c:out value='${cmsResource.updateTimeString}'/></td>
                                      <th><%=CmsResource.ALIAS_SORT%>：</th>
                                      <td><c:out value='${cmsResource.sort}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=CmsResource.ALIAS_CATEGORY_PATH%>：</th>
                                      <td><c:out value='${cmsResource.categoryPath}'/></td>
                                    </tr>
                                  </table>
                                </div></td>
                            </tr>
                          </table>
                      </div></td>
                    </tr>
                  </table>
                </div>
