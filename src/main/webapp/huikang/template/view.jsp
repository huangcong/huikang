<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="template" class="com.up72.huikang.model.Template" scope="page" />

<div id="" style="">
                  <table cellspacing="0" cellpadding="0" border="0" class="tableform">
                    <tr>
                      <td style="vertical-align:top;">
                        <div class="divform">
                          <table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
                            <tr>
                              <td style="vertical-align:top;"><h5><%=Template.TABLE_ALIAS%>信息</h5>
                                <div class="division">
                                  <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                      <th><%=Template.ALIAS_NAME%>：</th>
                                      <td><c:out value='${template.name}'/></td>
                                      <th><%=Template.ALIAS_CONTENT%>：</th>
                                      <td><c:out value='${template.content}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Template.ALIAS_MODELS%>：</th>
                                      <td><c:out value='${template.models}'/></td>
                                      <th><%=Template.ALIAS_TYPE%>：</th>
                                      <td><c:out value='${template.type}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Template.ALIAS_ENABLE%>：</th>
                                      <td><c:out value='${template.enable}'/></td>
                                      <th><%=Template.ALIAS_CREATE_TIME%>：</th>
                                      <td><c:out value='${template.createTimeString}'/></td>
                                    </tr>
                                  </table>
                                </div></td>
                            </tr>
                          </table>
                      </div></td>
                    </tr>
                  </table>
                </div>
