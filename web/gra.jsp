<%-- 
    Document   : gra
    Created on : 2015-04-25, 19:28:44
    Author     : Kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            String message = "";
            message = "Wslano zaproszenie do ";
            String select = request.getParameter("gra");
            if(request.getParameter("buttonName") != null) {
            message+=request.getParameter("loginznajomego").toString();%>
            <%=message%>
           <%}else{%>
           <%=message%>
           <%}%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kurnik</title>
    </head>
    <body><center><h1>
        <%
            if(select.equals("warcaby")){
            %>
            Warcaby
        <%
            }else{
            %>
                Statki
        <%
            }
            %>
        </h1>
      
    <form action="post">
	<select name="loginznajomego">
		<option>Kaprak</option>
		<option>NieKaprak</option>
	</select>
        <INPUT TYPE="HIDDEN" NAME="buttonName">
        <input type="button" value="Zapros" onclick="button()">
</form>
        <SCRIPT LANGUAGE="JavaScript">
        <!--
        function button()
        {
            document.form1.buttonName.value ="yes";
            form1.submit();  
        } 
        --> 
    </SCRIPT>
    </center></body>
</html>
