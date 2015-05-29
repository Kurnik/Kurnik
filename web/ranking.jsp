<%-- 
    Document   : ranking
    Created on : 2015-04-25, 18:04:49
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
    <%@page import = "java.sql.*" %>
    <%
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@172.16.177.241:1521:XE", "KAPRAK", "kaprak");
    Statement stmt = conn.createStatement();
    String sql="select U.ID_UZYTKOWNIK, U.NICK, R.RANKING_WARCABY, R.RANKING_STATKI from UZYTKOWNIK U Join RANKING R ON U.ID_RANKING=R.ID_RANKING WHERE ID_UZYTKOWNIK>0";
    ResultSet rs = stmt.executeQuery(sql);
    
    try{
    if(rs!=null)
    { 
    %>
    <table border="5" align="center" width="50%" height="80%">
        <caption align="ustawienie">Rankingi:</caption>
        <tr>
            <th width="10%"> Nr </th>    <th width="30%"> Login </th>	<th width="30%"> Statki </th>	<th width="30%"> Warcaby </th>
        </tr>
        <%
        while(rs.next()){
        %>
        <tr>
            <td><%=rs.getString("id_uzytkownik")%></td>	<td><%=rs.getString("NICK")%></td>	<td><%=rs.getString("ranking_statki")%></td>	<td><%=rs.getString("ranking_statki")%></td>
        </tr>
    <% 
    }
    }
    }catch(SQLException e)
    {
        e.printStackTrace();
    }
    stmt.close();
    rs.close();
    conn.close();
    stmt=null;
    rs=null;
    conn=null;
    
    %>
    
    </table>
    <form method="post" action="index.jsp">
                <input type="submit" value="Wroc">
    </center></body>
</html>
