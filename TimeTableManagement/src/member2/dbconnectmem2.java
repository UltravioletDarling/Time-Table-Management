/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package member2;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Savindu Ranasinghe
 */
public class dbconnectmem2 {
    
    public static Connection connect(){
    
        Connection conn = null;
        
         try {
             Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/member2","root", "");
            if(conn!=null)
            {
                //If the connection works fine 
                System.out.println("Connected!");
            }
        } catch (Exception e)
        {
            //If the connection get failed
            System.out.println("Failed "+ e);
            
            
        }
     return conn;
        
    }
    
    
}
