/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Bimsara De Silva
 */
public class DBconnection {
   
    
    
    public Connection getDB() throws SQLException{
    Statement stmt = null;
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/","root","1234");
    stmt = con.createStatement();
      
        String sql = "CREATE DATABASE IF NOT EXISTS timetables";
        stmt.executeUpdate(sql);
        
        
        con = DriverManager.getConnection("jdbc:mysql://localhost/timetablems","root","1234");
        return con;
    }
    
    
}