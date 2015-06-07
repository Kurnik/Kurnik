<%-- 
    Document   : index
    Created on : 2015-04-25, 16:54:19
    Author     : Kasper
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kurnik</title>
    </head>
<body> <center>
    </br></br>
    <p><form method="GET" action="savename.jsp">
        Podaj swój login: <br />
        <input type="text" name="login" /><br /> 
        Podaj swoje hasło: <br />
        <input type="text" name="haslo" /><br /> 
        
        <input type="submit" value="Zaloguj">
    </form></p>
    <form method=post" action="rejestracja.jsp">
        <input type="submit" value="Utworz nowe konto">
    </form>
    </br>
    <form method=post" action="ranking.jsp">
        <input type="submit" value="Ranking">
    </form>
    <frameset cols="150,*"> 
  
</center>
</body
</html>
