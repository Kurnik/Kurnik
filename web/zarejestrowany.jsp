<%-- 
    Document   : zarejestruj
    Created on : 2015-04-25, 18:20:36
    Author     : Kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            String select = request.getParameter("akceptuje"); 
            %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kurnik</title>
    </head>
    <body><center>
        <%
            if(select.equals("tak")){
            %>
            </br></br>Konto utworzone</br>
            <form method="post" action="index.jsp">
                <input type="submit" value="Wroc">
        <%
            }else{   
            %>
            </br></br>Akceptuj regulamin</br>
            <form method="post" action="rejestracja.jsp">
                <input type="submit" value="Wroc">
        <%
            }
            %>
            
    </center></body>
</html>
