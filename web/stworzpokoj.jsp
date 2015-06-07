<%-- 
    Document   : stworzpokoj
    Created on : 2015-04-25, 19:22:18
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
        <form method="get" action="savetype.jsp">
            </br></br>
            Wybierz gre:</br>
            Statki<input type="radio" name="gra" value="Statki" checked="checked"></br>
            Warcaby<input type="radio" name="gra" value="Warcaby"> </br> 
        <input type="submit" value="Stworz pokoj">
    </form>
        <form method="post" action="logowanie.jsp">
        <input type="submit" value="Wroc">
    </form> 
    </center></body>
</html>
