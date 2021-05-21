
package DataBase;


import java.sql.DriverManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Bimsara De Silva
 */
public class DBConnector {
    
    static java.sql.Connection conn = null;
    //sdsd
    public static void main(String []args){ 
        
        java.sql.Connection conn = getConnection();
        if(conn!=null)
            {
                //Ifconnection works fine 
                System.out.println("Connected!");
            }
        else{
            //If connection get faild
            System.out.println("Failed!");
        }
        
        
        
    
    
    }
    
    public static java.sql.Connection getConnection(){
            try {
            return conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root", "");
//            
        } catch (Exception e){
            return null;
            
            
        }
}
    
}
        

