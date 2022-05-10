<%-- 
    Document   : index
    Created on : 9 de mai. de 2022, 21:18:50
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Pessoa"%>
<!DOCTYPE html>

<%

    Exception requestEx = null;
    ArrayList<Pessoa> listCustomer = new ArrayList<>();
    int countCustomer = 0;
    try {
        countCustomer = Pessoa.getCountCustomer();
        listCustomer = Pessoa.getListCustomer();
        
    } catch(Exception ex) {
        requestEx = ex;
    }
    
    Exception requestExEmployee = null;
    ArrayList<Pessoa> listEmployee = new ArrayList<>();
    int countEmployee = 0;
    try {
        countEmployee = Pessoa.getCountEmployee();
        listEmployee = Pessoa.getListEmployee();
        
    } catch(Exception ex) {
        requestExEmployee = ex;
    }

%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tarefa Database</h1>    
        
        <a href="customer.jsp">Customers</a>
        <h1><%= countCustomer%></h1>  
        
        <a href="employee.jsp">Employees</a>
        <h1><%= countEmployee%></h1>
        
    </body>
</html>
