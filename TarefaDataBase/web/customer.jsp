<%-- 
    Document   : customer
    Created on : 9 de mai. de 2022, 21:49:32
    Author     : Fatec
--%>
<%@page import="model.Pessoa"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <table border="1">
            <tr><th>id</th><th>name</th></tr>
            <% for(Pessoa pC: Pessoa.getListCustomer()){%>
            <tr>
                <td> <%= pC.getId()%> </td>
                <td> <%= pC.getName()%> </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
