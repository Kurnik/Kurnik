<%-- 
    Document   : gra
    Created on : 2015-04-26, 20:42:01
    Author     : Kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="foo.warcaby" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kurnik</title>
    </head>
    <body>
    <form method="post" action="logowanie.jsp">
    <input type="submit" value="Poddaj sie">
        <center>
        <%
        String[][] flota, strzaly;
        flota=new String[10][10];
        strzaly=new String[10][10];
        for(int i=0; i<flota.length; i++){
            for(int j=0; j<flota[i].length; j++){
                flota[i][j]="blue";
                strzaly[i][j]="blue";
            }
        }
        %>
        <h1><%= session.getAttribute("typ")%></h1></center>
        
        <style>
        table{
            table-layout:fixed;
        }
        </style>
        <table border="5" align="left" width="40%" height="40%">
        <caption align="ustawienie">Twoja flota:</caption>
        <tr>
            <th>   </th> <th> A </th> <th> B </th> <th> C </th> <th> D </th> </th> <th> E </th> <th> F </th> <th> G </th> <th> H </th> <th> I </th> <th> J </th>
        </tr>
        <%for(int i=0; i<flota.length; i++){%>
        <tr>
            <th><%=i+1%></th> <%for(int j=0; j<flota[i].length; j++){%>  <td style="background-color:<%=flota[i][j]%>"></td>   <%}%>
        </tr> 
        <%}%>
        
        <table border="5" align="right" width="40%" height="40%">
        <caption align="ustawienie">Twoje strzay:</caption>
        <tr>
            <th>   </th> <th> A </th> <th> B </th> <th> C </th> <th> D </th> </th> <th> E </th> <th> F </th> <th> G </th> <th> H </th> <th> I </th> <th> J </th>
        </tr>
        <%for(int i=0; i<strzaly.length; i++){%>
        <tr>
            <th><%=i+1%></th> <%for(int j=0; j<strzaly[i].length; j++){%>  <td style="background-color:<%=strzaly[i][j]%>"></td>   <%}%>
        </tr> 
        <%}%>
        
    </form> 
    </body>
</html>
