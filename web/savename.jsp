<%-- 
    Document   : savename
    Created on : 2015-04-26, 17:15:16
    Author     : Kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<HTML>
<BODY>
    <%
   //String name = request.getParameter( "login" );
  // session.setAttribute( "Name", name );
%>
<%
   // String redirectURL = "logowanie.jsp";
   // response.sendRedirect(redirectURL);
%>

<%@ page import="java.util.*" %>
<jsp:useBean id="idHandler" class="foo.Login" scope="request">
<jsp:setProperty name="idHandler" property="login" value="<%=request.getParameter("login")%>"/>
<jsp:setProperty name="idHandler" property="haslo" value="<%=request.getParameter("haslo")%>"/>
</jsp:useBean>

<% 
   if (idHandler.authenticate()) {
%>
<jsp:forward page="logowanie.jsp"/>
<%
   }  else {
%>
<jsp:forward page="zmieniono.jsp"/>
<%
   }
%>
</BODY>
</HTML
