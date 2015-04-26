<%-- 
    Document   : rejestracja
    Created on : 2015-04-25, 17:49:00
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
       <center>
    <form method="post" action="zarejestruj.jsp">
        Podaj swój login: <br />
        <input type="text" name="login" /><br /> 
        Podaj swoje hasło: <br />
        <input type="text" name="haslo" /><br /> 
        Podaj swoj email <br />
        <input type="text" name="email" /><br /> 
        Akceptuje regulamin </br>
        tak<input type="radio" name="akceptuje" value="tak">
        nie<input type="radio" name="akceptuje" value="nie" checked="checked">
        </br></br>  
        <input type="submit" value="Rejestruj"></form></br>
        <form method="post" action="index.jsp">
        <input type="submit" value="Wroc">
    </form></center>
    </body>
</html>
