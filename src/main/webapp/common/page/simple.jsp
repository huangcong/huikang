<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg" %>
<ul>


<pg:prev>
  <a href="<%= pageUrl %>"><nobr><img src="/images/pg-left-br.jpg" /></nobr></a>
</pg:prev>
<pg:pages>
   <a href="<%= pageUrl %>"><%= pageNumber %></a> 
</pg:pages>
<pg:next>
  <a href="<%= pageUrl %>"><nobr><img src="/images/pg-right-br.jpg" /></nobr></a>
</pg:next>


