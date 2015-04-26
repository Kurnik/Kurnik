<%-- 
    Document   : gra
    Created on : 2015-04-26, 20:42:01
    Author     : Kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kurnik</title>
    </head>
    <body><center>
        <h1><%= session.getAttribute("typ")%></h1></center>
        <form method="post" action="logowanie.jsp">
        <input type="submit" value="Poddaj sie">
    </form> 
    </body>
</html>
