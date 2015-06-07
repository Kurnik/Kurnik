/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package foo;

/**
 *
 * @author Kasper
 */
import java.sql.*;

public class statki {
 

 private String pj;
 private String dj;
 private String tj;
 private String cj;
 private String pd;
 private String dd;
 private String td;
 private String pt;
 private String dt;
 private String pc;
 public int[][] flota;
    
    

  public void setPj(String pj) {this.pj = pj;}
  public void setDj(String dj) {this.dj = dj;}
  public void setTj(String tj) {this.tj = tj;}
  public void setCj(String cj) {this.cj = cj;}
  public void setPd(String pd) {this.pd = pd;}
  public void setDd(String dd) {this.dd = dd;}
  public void setTd(String td) {this.td = td;}
  public void setPt(String pt) {this.pt = pt;}
  public void setDt(String dt) {this.dt = dt;}
  public void setPc(String pc) {this.pc = pc;}
 
  public String getPj(){return pj;}
  public String getDj(){return dj;}
  public String getTj(){return tj;}
  public String getCj(){return cj;}
  public String getPd(){return pd;}
  public String getDd(){return dd;}
  public String getTd(){return td;}
  public String getPt(){return pt;}
  public String getDt(){return dt;}
  public String getPc(){return pc;}
 

 public boolean  authenticate(){
     flota=new int[10][10];
         for(int i=0; i<10; i++){
             for(int j=0; j<10; j++){
                 flota[i][j]=0;
             
             }
         }
         pj+="1";
         dj+="1";
         tj+="1";
         cj+="1";
         pd+="2";
         dd+="2";
         td+="2";
         pt+="3";
         dt+="3";
         pc+="4";
         
     if(decode(pj)==false) return false;
     if(decode(dj)==false) return false;
     if(decode(tj)==false) return false;
     if(decode(cj)==false) return false;
     if(decode(pd)==false) return false;
     if(decode(dd)==false) return false;
     if(decode(td)==false) return false;
     if(decode(pt)==false) return false;
     if(decode(dt)==false) return false;
     if(decode(pc)==false) return false;
     return true;
 }   
 public boolean decode(String s){
     int x, y, o, m;

     x=(s.charAt(0))-65;
     y=Integer.parseInt(""+s.charAt(1));
     o=Integer.parseInt(""+s.charAt(2));
     m=Integer.parseInt(""+s.charAt(3));
     if(check(x, y, o, m)==true){
         flota[y][x]=1;
         switch(o){
             case 0:
                 for(int i=1; i<m; i++)
                     flota[y][x+i]=1;
                  break;
             case 1:
                 for(int i=1; i<m; i++)
                     flota[y+i][x]=1;
                 break;
             default:
                 flota[0][0]=0;
                 break;
         }
         return true;
     }else return false;
 }
 public boolean check(int x, int y, int o, int m){
     if(m>1&&o==0&&x+m>10)return false;
     if(m>1&&o==1&&y+m>10)return false;
     switch(o){
         case 0:
             for(int i=0; i<m; i++) 
                 if(checkpole(x+i, y, flota)==false) 
                     return false;
         case 1:
             for(int i=0; i<m; i++)
                 if(checkpole(x, y+i, flota)==false)
                     return false;
     }
     return true;
 }
 public boolean checkpole(int x, int y, int[][] tab){
     if(tab[y][x]!=0) return false;
     if(x==0){
         switch(y){
             case 0:
                 if(tab[y+1][x]!=0) return false;
                 if(tab[y][x+1]!=0) return false;
                 if(tab[y+1][x+1]!=0) return false;
                 return true;
                 
             case 1: case 2: case 3: case 4: case 5: case 6: case 7: case 8:
                 if(tab[y-1][x]!=0) return false;
                 if(tab[y-1][x+1]!=0) return false;
                 if(tab[y][x+1]!=0) return false;
                 if(tab[y+1][x+1]!=0) return false;
                 if(tab[y+1][x]!=0) return false;
                 return true;
                 
             case 9:
                 if(tab[y-1][x]!=0) return false;
                 if(tab[y][x+1]!=0) return false;
                 if(tab[y-1][x+1]!=0) return false;
                 return true;
         }
     }
     if(x==9){
         switch(y){
             case 0:
                 if(tab[y][x-1]!=0) return false;
                 if(tab[y+1][x-1]!=0) return false;
                 if(tab[y+1][x]!=0) return false;
                 return true;
             case 1: case 2: case 3: case 4: case 5: case 6: case 7: case 8:
                 if(tab[y-1][x]!=0) return false;
                 if(tab[y+1][x]!=0) return false;
                 if(tab[y][x-1]!=0) return false;
                 if(tab[y-1][x-1]!=0) return false;
                 if(tab[y+1][x-1]!=0) return false;
                 return true;
             case 9:
                 if(tab[y-1][x]!=0) return false;
                 if(tab[y-1][x-1]!=0) return false;
                 if(tab[y][x-1]!=0) return false;
                 return true;
         }
     }
     if(x>0&&x<9){
         switch(y){
             case 0:
                 if(tab[y+1][x]!=0) return false;
                 if(tab[y][x-1]!=0) return false;
                 if(tab[y+1][x-1]!=0) return false;
                 if(tab[y][x+1]!=0) return false;
                 if(tab[y+1][x+1]!=0) return false;
                 return true;
             case 1: case 2: case 3: case 4: case 5: case 6: case 7: case 8:
                 if(tab[y-1][x]!=0) return false;
                 if(tab[y-1][x+1]!=0) return false;
                 if(tab[y][x+1]!=0) return false;
                 if(tab[y+1][x+1]!=0) return false;
                 if(tab[y+1][x]!=0) return false;
                 if(tab[y+1][x-1]!=0) return false;
                 if(tab[y][x-1]!=0) return false;
                 if(tab[y-1][x-1]!=0) return false;
                 return true;
             case 9:
                 if(tab[y][x-1]!=0) return false;
                 if(tab[y-1][x-1]!=0) return false;
                 if(tab[y][x+1]!=0) return false;
                 if(tab[y-1][x+1]!=0) return false;
                 if(tab[y-1][x]!=0) return false;
                 return true;
         }
     }
     return true;
 }
 public int[][] rysuj(){
     return flota;
 }
}
