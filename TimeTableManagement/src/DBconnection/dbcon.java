/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBconnection;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Dell
 */
public class dbcon {
     public static Connection connect(){
        Connection conn = null;
        
        try{
             Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mynewdb","root","");
            if(conn!=null )
                {
                //Ifconnection works fine 
                System.out.println("Connected!");
            }
        }
        catch (Exception e){
            
           //If connection get faild
            System.out.println("Failed "+e);
            
        } 
        
        return conn;
        
    }

}
