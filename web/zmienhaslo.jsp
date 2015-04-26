<%-- 
    Document   : zmienhaslo
    Created on : 2015-04-25, 19:10:03
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
    <form method="post" action="zmieniono.jsp">
        Podaj swoje stare hasło: <br />
        <input type="text" name="starehaslo" /><br />
        Podaj swoje nowe hasło: <br />
        <input type="text" name="nowehaslo" /><br />
        <input type="submit" value="Zmien haslo">
    </form>
    <form method="post" action="logowanie.jsp">
        <input type="submit" value="Wroc">
    </form>    
    </center></body>
</html>
