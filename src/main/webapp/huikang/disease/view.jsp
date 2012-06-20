<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="service.jsp" %>
<jsp:useBean id="disease" class="com.up72.huikang.model.Disease" scope="page" />

<div id="" style="">
                  <table cellspacing="0" cellpadding="0" border="0" class="tableform">
                    <tr>
                      <td style="vertical-align:top;">
                        <div class="divform">
                          <table cellspacing="0" cellpadding="0" border="0" class="oddt_basic">
                            <tr>
                              <td style="vertical-align:top;"><h5><%=Disease.TABLE_ALIAS%>信息</h5>
                                <div class="division">
                                  <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                      <th><%=Disease.ALIAS_CODE%>：</th>
                                      <td><c:out value='${disease.code}'/></td>
                                      <th><%=Disease.ALIAS_PARENT_ID%>：</th>
                                      <td><c:out value='${disease.parentId}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Disease.ALIAS_ROOT_ID%>：</th>
                                      <td><c:out value='${disease.rootId}'/></td>
                                      <th><%=Disease.ALIAS_PATH%>：</th>
                                      <td><c:out value='${disease.path}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Disease.ALIAS_NAME%>：</th>
                                      <td><c:out value='${disease.name}'/></td>
                                      <th><%=Disease.ALIAS_VALIDABLE%>：</th>
                                      <td><c:out value='${disease.validable}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Disease.ALIAS_GB_NAME%>：</th>
                                      <td><c:out value='${disease.gbName}'/></td>
                                      <th><%=Disease.ALIAS_TYPE%>：</th>
                                      <td><c:out value='${disease.type}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Disease.ALIAS_DIAGNOSE_RULE%>：</th>
                                      <td><c:out value='${disease.diagnoseRule}'/></td>
                                      <th><%=Disease.ALIAS_URGENT_RULE%>：</th>
                                      <td><c:out value='${disease.urgentRule}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Disease.ALIAS_RISK_RULE%>：</th>
                                      <td><c:out value='${disease.riskRule}'/></td>
                                      <th><%=Disease.ALIAS_NORMAL_RULE%>：</th>
                                      <td><c:out value='${disease.normalRule}'/></td>
                                    </tr>
                                    <tr>
                                      <th><%=Disease.ALIAS_URL%>：</th>
                                      <td><c:out value='${disease.url}'/></td>
                                    </tr>
                                  </table>
                                </div></td>
                            </tr>
                          </table>
                      </div></td>
                    </tr>
                  </table>
                </div>
