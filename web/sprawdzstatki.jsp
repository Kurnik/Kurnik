<%-- 
    Document   : sprawdzstatki
    Created on : 2015-06-07, 14:42:59
    Author     : Kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kurnik</title>
    </head>
    <body>
        <%@ page import="java.util.*" %>
        <jsp:useBean id="statki" class="foo.statki" scope="session"/>
        <jsp:setProperty name="statki" property="*"/>
    


<% 
   if (statki.authenticate()==true) {
%>
<jsp:forward page="statki.jsp"/>
<%
   }  else {
%>
<jsp:forward page="prestatki.jsp"/>
<%
   }
%>
    </body>
</html>
