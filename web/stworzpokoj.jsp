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
        <form method="post" action="gra.jsp">
            </br></br>
            Wybierz gre:</br>
            Statki<input type="radio" name="gra" value="statki" checked="checked"></br>
        Warcaby<input type="radio" name="gra" value="warcaby"> </br> 
        <input type="submit" value="Stworz pokoj">
    </form>
    </center></body>
</html>
