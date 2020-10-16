<%-- 
    Document   : confirm
    Created on : Oct 16, 2020, 7:36:59 PM
    Author     : HT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <% double price = 9.95;
           String num = request.getParameter("num");
           int quantity = Integer.parseInt(num);
           double total = quantity*price;
        %>
    </head>
    <body>

        <h1 style="font-size: 25px">Order Confirmation</h1>
        <p>Thank you for your order of <%= num%>
            Widgets, <%= request.getParameter("name")%>. </p><br>
        <p>At $<%= price%>, your bill will be $<%= Math.round((total*100)/100)  %>.</p><br>
        <p>Your will shortly receive an email confirmation at
            <%= request.getParameter("email")%>.</p>
    </body>
</html>
