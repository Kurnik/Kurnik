<%-- 
    Document   : pokoj
    Created on : 2015-04-25, 19:28:44
    Author     : Kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        
      <%
             if(request.getParameter("buttonName") != null) {
      %>
      </br></br>Wyslano zaproszenie do: <%= request.getParameter("loginznajomego") %>
      <FORM NAME="form2" METHOD="POST">
      <INPUT TYPE="HIDDEN" NAME="button">
      <INPUT TYPE="BUTTON" VALUE="Gracz przyjmuje zaproszenie" ONCLICK="button2()">
      </FORM>
      <%}%>
    <FORM NAME="form1" METHOD="POST">
            <select name="loginznajomego">
		<option>Gracz1</option>
		<option>Gracz2</option>
	</select>
            <INPUT TYPE="HIDDEN" NAME="buttonName">
            <INPUT TYPE="BUTTON" VALUE="Zapros" ONCLICK="button1()">   
        </FORM>
    <form method="post" action="logowanie.jsp">
        <input type="submit" value="Wyjdz z pokoju">
    </form> 
    
        <%
        if(request.getParameter("button") != null) {%>
        <form method="post" action="gra.jsp">
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
