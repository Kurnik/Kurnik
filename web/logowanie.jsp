<%-- 
    Document   : logowanie
    Created on : 2015-04-25, 18:42:49
    Author     : Kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<jsp:useBean id="user" class="foo.Login" scope="session"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kurnik</title>
    </head>
    <body>
        <%response.setIntHeader("Refresh", 5);%>
        
        <%Class.forName("oracle.jdbc.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.1.12:1521:XE", "KAPRAK", "kaprak");
        Statement stmt = conn.createStatement();
        String sql="select * from zapro where nick_2='"+user.getLogin().trim()+"'";
        ResultSet rs = stmt.executeQuery(sql);
        if(rs!=null){ 
        while(rs.next()){
        if(rs.getString("nick_2").trim().equals(user.getLogin().trim())){%>
        <form method="post" action="index.jsp">
        <input type="submit" value="Akceptuj" style="float: right;">
        </form>        
          <%  }  
        }
        }
       %>
        <form method="post" action="index.jsp">
        <input type="submit" value="Wyloguj" style="float: right;">
        </form>
        <form method="post" action="zmienhaslo.jsp">
            <input type="submit" value="Zmien haslo" style="float: right;">
            <align: left><h1>Witaj <%= user.getLogin()%><%//session.getAttribute("Name") %> </h1></br></br></align:>
        </form>
       <form method="post" action="stworzpokoj.jsp">
           <p align="center"><input type="submit" value="Stworz pokoj"></p>
        </form> 
        <%////////%>
        
      
    </body>
</html>
