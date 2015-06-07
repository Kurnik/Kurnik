<%-- 
    Document   : prestatki
    Created on : 2015-06-06, 18:06:41
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
        <%
        String[][] flota;
        flota=new String[10][10];
        for(int i=0; i<flota.length; i++){
            for(int j=0; j<flota[i].length; j++){
                flota[i][j]="blue";
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
            <th><%=i+1%></th> <%for(int j=0; j<flota[i].length; j++){%>  <td style="background-color:<%=flota[i][j]%>"></td>   <%}%>
        </tr> 
        <%}%>
        
        <p><form method="GET" action="sprawdzstatki.jsp">
        1 jednomasztowiec: <br />
        <input type="text" name="pj" /><br /> 
        2 jednomasztowiec: <br />
        <input type="text" name="dj" /><br /> 
        3 jednomasztowiec: <br />
        <input type="text" name="tj" /><br /> 
        4 jednomasztowiec: <br />
        <input type="text" name="cj" /><br /> 
        1 dwumasztowiec: <br />
        <input type="text" name="pd" /><br /> 
        2 dwumasztowiec: <br />
        <input type="text" name="dd" /><br />
        3 dwumasztowiec: <br />
        <input type="text" name="td" /><br />
        1 trójmasztowiec: <br />
        <input type="text" name="pt" /><br /> 
        2 trójmasztowiec: <br />
        <input type="text" name="dt" /><br />
        1 czteromasztowiec: <br />
        <input type="text" name="pc" /><br />
        <input type="submit" value="Zatwierdz">
    </form></p>
    </body>
</html>
