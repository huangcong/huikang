<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="workGroup" class="com.up72.huikang.model.WorkGroup" scope="page" />

<div id="" style="">
                  <table cellspacing="0" cellpadding="0" border="0" class="tableform">
                    <tr>
                      <td style="vertical-align:top;">
                        <div class="divform">
                          <table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
                            <tr>
                              <td style="vertical-align:top;"><h5><%=WorkGroup.TABLE_ALIAS%>信息</h5>
                                <div class="division">
                                  <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                      <th><%=WorkGroup.ALIAS_NAME%>：</th>
                                      <td><c:out value='${workGroup.name}'/></td>
                                      <th><%=WorkGroup.ALIAS_WORK_GROUP_ID%>：</th>
                                      <td><c:out value='${workGroup.workGroupId}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=WorkGroup.ALIAS_DESCRPTION%>：</th>
                                      <td><c:out value='${workGroup.descrption}'/></td>
                                      <th><%=WorkGroup.ALIAS_SORT%>：</th>
                                      <td><c:out value='${workGroup.sort}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=WorkGroup.ALIAS_ENABLE%>：</th>
                                      <td><c:out value='${workGroup.enable}'/></td>
                                    </tr>
                                  </table>
                                </div></td>
                            </tr>
                          </table>
                      </div></td>
                    </tr>
                  </table>
                </div>
