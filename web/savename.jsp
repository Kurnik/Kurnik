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
   String name = request.getParameter( "login" );
   session.setAttribute( "Name", name );
%>
<%
    String redirectURL = "logowanie.jsp";
    response.sendRedirect(redirectURL);
%>
</BODY>
</HTML
