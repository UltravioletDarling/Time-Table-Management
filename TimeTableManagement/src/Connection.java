
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
public class Connection {
    //sdsd
    public static void main(String []args){ 
        java.sql.Connection conn = null;
        
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root", "");
            if(conn!=null)
            {
                System.out.println("Connected!");
            }
        } catch (Exception e)
        {
            System.out.println("Failed");
            
        }
    
    
    }
    
}
