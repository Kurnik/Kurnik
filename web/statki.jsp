<%-- 
    Document   : statki
    Created on : 2015-06-07, 14:44:46
    Author     : Kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ page import="java.util.*" %>
        <jsp:useBean id="statki" class="foo.statki" scope="session"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kurnik</title>
    </head>
    <body>
        <%
            String kolor="white";
        int[][] flota, strzaly;
        flota=statki.rysuj();
        strzaly= new int[10][10];
         for(int i=0; i<10; i++){
             for(int j=0; j<10; j++){
                 strzaly[i][j]=0;
             
             }
         }
        %>
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
            <th><%=i+1%></th> <%for(int j=0; j<flota[i].length; j++){
                switch(flota[i][j]){
                case 0:
                    kolor="blue";
                    break;
                case 1:
                    kolor="black";
                    break;
            }
            %>  <td style="background-color:<%=kolor%>"></td>   <%}%>
        </tr> 
        <%}%>
        
        <table border="5" align="right" width="40%" height="40%">
        <caption align="ustawienie">Twoje strzaly:</caption>
        <tr>
            <th>   </th> <th> A </th> <th> B </th> <th> C </th> <th> D </th> </th> <th> E </th> <th> F </th> <th> G </th> <th> H </th> <th> I </th> <th> J </th>
        </tr>
        <%for(int i=0; i<strzaly.length; i++){%>
        <tr>
            <th><%=i+1%></th> <%for(int j=0; j<strzaly[i].length; j++){
                switch(strzaly[i][j]){
                case 0:
                    kolor="blue";
                    break;
                case 1:
                    kolor="black";
                    break;
            }
            %>  <td style="background-color:<%=kolor%>"></td>   <%}%>
        </tr> 
        <%}%>
        
        <p><form method="GET" action="sprawdzruch.jsp">
        
        Strzal: <br />
        <input type="text" name="strzal" /><br />
        <input type="submit" value="Strzelaj">
    </form></p>
        
    </body>
</html>
