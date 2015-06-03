<%-- 
    Document   : newuser
    Created on : 2015-06-01, 18:44:41
    Author     : Kasper
--%>

<%@page import="oracle.jdbc.internal.OraclePreparedStatement"%>
<%@page import="oracle.jdbc.OracleResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <%@page import = "java.sql.*" %>
    <%@ page import="java.util.*" %>
    <jsp:useBean id="idHandler" class="foo.Login" scope="request">
    <jsp:setProperty name="idHandler" property="login" value="<%=request.getParameter("login")%>"/>
    <jsp:setProperty name="idHandler" property="haslo" value="<%=request.getParameter("haslo")%>"/>
    </jsp:useBean>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kurnik</title>
    </head>
    <body>
    <%
    String select = request.getParameter("akceptuje");
    if(select.equals("nie")){
      %><jsp:forward page="zmieniono.jsp"/><%  
    }
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@172.16.177.201:1521:XE", "KAPRAK", "kaprak");
    Statement stmt = conn.createStatement();
    String sql="select  U.NICK from UZYTKOWNIK U";
    ResultSet rs = stmt.executeQuery(sql); 
    try{
        if(rs!=null){ 
            while(rs.next()){
                if(idHandler.getLogin().trim().equals(rs.getString("NICK").trim())){
                    %><jsp:forward page="zmieniono.jsp"/><%
                }
            }
        }
        sql = "insert into uzytkownik(nick, haslo) values('"+idHandler.getLogin()+"','"+idHandler.getHaslo()+"')";
        rs = stmt.executeQuery(sql);
    }catch(SQLException e)
    {
        %><jsp:forward page="index.jsp"/><%
        e.printStackTrace();
    }
    stmt.close();
    rs.close();
    conn.close();
    stmt=null;
    rs=null;
    conn=null;
    %>
    <jsp:forward page="zarejestrowany.jsp"/>
    </body>
</html>
