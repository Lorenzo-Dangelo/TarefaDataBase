/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Fatec
 */
public class Pessoa {
  private int id;
    private String name;
    
    public static ArrayList<Pessoa> getListCustomer() throws Exception{
        ArrayList<Pessoa> list = new ArrayList<>();
        
        Class.forName("org.sqlite.JDBC");
        
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\chinook.db";
        
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM customers ORDER BY FirstName");
        
        while (rs.next()) {
            list.add(new Pessoa(rs.getInt("CustomerId"), rs.getString("FirstName")));
        }
        rs.close();
        stmt.close();
        con.close();
        
        return list;
    }
    
    public static ArrayList<Pessoa> getListEmployee() throws Exception{
        ArrayList<Pessoa> list = new ArrayList<>();
        
        Class.forName("org.sqlite.JDBC");
        
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\chinook.db";
        
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM employees ORDER BY FirstName");
        
        while (rs.next()) {
            list.add(new Pessoa(rs.getInt("EmployeeId"), rs.getString("FirstName")));
        }
        rs.close();
        stmt.close();
        con.close();
        
        return list;
    }
    
    public static int getCountCustomer() throws Exception{
        
        int count = 0;
        
        Class.forName("org.sqlite.JDBC");
        
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\chinook.db";
        
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT count(*) as count FROM customers");
        
        while (rs.next()) {
            count = rs.getInt("count");
        }
        rs.close();
        stmt.close();
        con.close();
        
        return count;
    }
    
    public static int getCountEmployee() throws Exception{
        
        int count = 0;
        
        Class.forName("org.sqlite.JDBC");
        
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\chinook.db";
        
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT count(*) as count FROM employees");
        
        while (rs.next()) {
            count = rs.getInt("count");
        }
        rs.close();
        stmt.close();
        con.close();
        
        return count;
    }

    public Pessoa(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }  
}
