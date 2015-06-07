<%-- 
    Document   : pokoj
    Created on : 2015-04-25, 19:28:44
    Author     : Kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<jsp:useBean id="user" class="foo.Login" scope="session"/>
<!DOCTYPE html>
<html>
    <head>
        <%
            int gracze=1;
            //String select = request.getParameter("gra");
            %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kurnik</title>
    </head>
    <body><center><h1>
        <%
            //if(select.equals("warcaby")){
            %>
             <%= session.getAttribute("typ")%>
        <%
            //}else{
            %>
                
        <%
            //}
            %>
        </h1>
        
     
      
      <%Class.forName("oracle.jdbc.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.1.12:1521:XE", "KAPRAK", "kaprak");
        Statement stmt = conn.createStatement();
        String sql="select * from uzytkownik where id_uzytkownik > 0";
        ResultSet rs = stmt.executeQuery(sql);%>
         <FORM NAME="form1" METHOD="POST">
            <select name="loginznajomego">
        <%if(rs!=null){ 
        while(rs.next()){%>   
        <option><%=rs.getString("nick")%></option>
		<%}}%>
	</select>
            <INPUT TYPE="HIDDEN" NAME="buttonName">
            <INPUT TYPE="BUTTON" VALUE="Zapros" ONCLICK="button1()">   
        </FORM>
    <form method="post" action="logowanie.jsp">
        <input type="submit" value="Wyjdz z pokoju">
    </form> 
    
         <%if(request.getParameter("buttonName") != null) {%>
         String sql2="insert into zapro (nick_1, nick_2) values(
      </br></br>Wyslano zaproszenie do: <%= request.getParameter("loginznajomego") %>
      <%}%>
        <%
        if(request.getParameter("button") != null) {%>
        <form method="post" action="prestatki.jsp">
            <input type="submit" enabled value="Start">
        </form>     
        <%}else{%>
        <form method="post" action="gra.jsp">
            <input type="submit" disabled value="Start">
        </form> 
        <%}%>
    
    <SCRIPT LANGUAGE="JavaScript">
            <!--
            function button1()
            {
                document.form1.buttonName.value = "button 1"
                form1.submit()
            }   
            function button2()
            {
                document.form2.button.value = "yes"
                form2.submit()
            }
            
             --> 
        </SCRIPT>
    </center></body>
</html>
