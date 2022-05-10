<%-- 
    Document   : employee
    Created on : 9 de mai. de 2022, 21:49:38
    Author     : Fatec
--%>

<%@page import="model.Pessoa"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

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

        <table border="1">
            <tr><th>id</th><th>name</th></tr>
            <% for(Pessoa pE: Pessoa.getListEmployee()){%>
            <tr>
                <td> <%= pE.getId()%> </td>
                <td> <%= pE.getName()%> </td>
            </tr>
            <%}%>
        </table>  
    </body>
</html>
