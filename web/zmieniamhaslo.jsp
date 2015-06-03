<%-- 
    Document   : zmieniamhaslo
    Created on : 2015-06-03, 11:30:14
    Author     : Kasper.Obarski
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="foo.Login" scope="session"/>
<%
   String starehaslo = request.getParameter( "starehaslo" );
   session.setAttribute( "starehaslo", starehaslo );
   String nowehaslo = request.getParameter( "nowehaslo" );
   session.setAttribute( "nowehaslo", nowehaslo );
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kurnik</title>
    </head>
    <body>
    <%@page import = "java.sql.*" %>
    <%=user.getLogin()%>
    <%=user.getHaslo()%>
    <%=session.getAttribute("starehaslo")%>
    <%=session.getAttribute("nowehaslo")%>
    <%    
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@172.16.177.201:1521:XE", "KAPRAK", "kaprak");
    Statement stmt = conn.createStatement();
    String sql="select nick, haslo from uzytkownik where nick='"+user.getLogin()+"'";
    ResultSet rs = stmt.executeQuery(sql);
    try{
        
        
    if(rs!=null){
        //while(rs.next()){
        rs.next();
        if(rs.getString("haslo").trim().equals(session.getAttribute("starehaslo"))){
            sql = "update uzytkownik set haslo='"+session.getAttribute("nowehaslo")+"' where nick='"+user.getLogin()+"'";
            rs = stmt.executeQuery(sql);
        }else{
          %><jsp:forward page="logowanie.jsp"/><%  
        }
        //}
    }
    }catch(SQLException e){
        %><jsp:forward page="ranking.jsp"/><%
        //e.printStackTrace();
        
    }
    
    %>
    <jsp:forward page="zmieniono.jsp"/>
    </body>
</html>
