/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package foo;

/**
 *
 * @author kasper.obarski
 */
 import java.sql.*;

 public class Login {

 private String login;
 private String haslo;

   public Login() {
  }

  public void setLogin(String login) {
     this.login = login;
  }

  public void setHaslo(String haslo) {
     this.haslo = haslo;
   }
  
  public String getLogin(){return login;}
  
  public String getHaslo(){return haslo;}

 public boolean  authenticate(){
  String query="select Nick, haslo from UZYTKOWNIK;";
   String DbLogin;
   String DbHaslo;
   String finalUser="";
  try {
  Class.forName("oracle.jdbc.OracleDriver");
    Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@172.16.177.241:1521:XE", "KAPRAK", "kaprak");
   Statement stat = conn.createStatement();
   ResultSet rs = stat.executeQuery(query);
   while(rs.next()){
  DbLogin=rs.getString("login");
  DbHaslo=rs.getString("haslo");

   if (login.equals(DbLogin) && haslo.equals(DbHaslo)) {
        return true;
   }
   }

 }catch(Exception e){
 e.printStackTrace();
 return false;
 }
return false;
 }
}





