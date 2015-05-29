<%-- 
    Document   : logowanie
    Created on : 2015-04-25, 18:42:49
    Author     : Kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="idHandler" class="foo.Login" scope="request">
<jsp:setProperty name="idHandler" property="*"/>
</jsp:useBean>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kurnik</title>
    </head>
    <body>
        <form method="post" action="index.jsp">
            <input type="submit" value="Wyloguj" style="float: right;">
        </form>
        <form method="post" action="zmienhaslo.jsp">
            <input type="submit" value="Zmien haslo" style="float: right;">
            <align: left><h1>Witaj <%= session.getAttribute("Name") %> </h1></br></br></align:>
        </form>
       <form method="post" action="stworzpokoj.jsp">
           <p align="center"><input type="submit" value="Stworz pokoj"></p>
        </form> 
        <%////////%>
        <%
             if(request.getParameter("buttonName") != null) {
      %>
      <SCRIPT LANGUAGE="JavaScript">
            <!--
      confirm('Zaproszenie do gry od Gracz1')
      --> 
        </SCRIPT>
      <%}%>
        <FORM NAME="form1" METHOD="POST">
            <INPUT TYPE="HIDDEN" NAME="buttonName">
            <INPUT TYPE="BUTTON" VALUE="Otrzymaj zaproszenie" ONCLICK="button1()">   
        </FORM>
    <SCRIPT LANGUAGE="JavaScript">
            <!--
            function button1()
            {
                document.form1.buttonName.value = "button 1"
                form1.submit()
            }    
            
             --> 
        </SCRIPT>
    </body>
</html>
