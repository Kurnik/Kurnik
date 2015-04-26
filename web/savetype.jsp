<%-- 
    Document   : savetype
    Created on : 2015-04-26, 19:36:32
    Author     : Kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<HTML>
<BODY>
    <%
   String type = request.getParameter( "gra" );
   session.setAttribute( "typ", type );
%>
<%
    String redirectURL = "pokoj.jsp";
    response.sendRedirect(redirectURL);
%>
</BODY>
</HTML
