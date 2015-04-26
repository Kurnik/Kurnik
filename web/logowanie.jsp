<%-- 
    Document   : logowanie
    Created on : 2015-04-25, 18:42:49
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
        <form method="post" action="index.jsp">
            <input type="submit" value="Wyloguj" style="float: right;">
        </form>
        <form method="post" action="zmienhaslo.jsp">
            <input type="submit" value="Zmien haslo" style="float: right;">
            <align: left><h1>Witaj <%= session.getAttribute("Name") %> </h1></br></br></align:>
        </form>
       <form method="post" action="stworzpokoj.jsp">
           <p align="center"><input type="submit" value="Stworz pokoj"></p>
        </form> 
    </body>
</html>
