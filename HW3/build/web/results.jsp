<%-- 
    Document   : results
    Created on : 2015-9-27, 18:07:56
    Author     : Jiyuan Jin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results</title>
        <link rel="stylesheet" type="text/css" href="main.css" />
    </head>
    
    <%
        int hour = Integer.parseInt(request.getParameter("hour"));
        int pay = Integer.parseInt(request.getParameter("pay"));
        int preDeduct = Integer.parseInt(request.getParameter("preDeduct"));
        int postDeduct = Integer.parseInt(request.getParameter("postDeduct"));
        double otHours = 0;
        double otPayRate = 0;
        double grossPay = 0;
        double prePay;
        double taxAmount;
        double postPay;
        double netPay;
        
        if(hour > 40)
        {   otHours = hour - 40;
            otPayRate = pay * 1.5;
            grossPay = otPayRate * otHours + 40 * pay;
        }
        else
        {
            grossPay = hour * pay;
        }   
        prePay = grossPay - preDeduct;
        
        if (prePay < 500)
        {
            taxAmount = prePay * 0.18;
        }
        else
        {
            taxAmount = prePay * 0.22;
        }
        
        postPay = prePay - taxAmount;
        netPay = postPay - postDeduct; 
    %>
    
    
    <body>
        <div id="frame">
            <h1>Salary Info</h1>
            <hr>
            <div id="chart">
                <table border="1">
                <tbody>
                    <tr>
                        <td>Total Hours Worked:</td>
                        <td><%= hour  %></td>
                    </tr>

                    <tr>
                        <td>Hourly Rate:</td>
                        <td><%= pay %></td>
                        </tr>

                    <tr>
                        <td># Hours Overtime:</td>
                        <td><%= otHours %></td>
                    </tr>

                    <tr>
                        <td>Overtime Hourly Rate:</td>
                        <td><%= otPayRate %></td>
                    </tr>
                
                    <tr>
                        <td>Gross Pay:</td>
                        <td><%= grossPay %></td>
                    </tr>
                
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><%= preDeduct %></td>
                    </tr>
                
                    <tr>
                        <td>Pre-tax Pay:</td>
                        <td><%= prePay %></td>
                    </tr>
                
                    <tr>
                        <td>Tax Amount:</td>
                        <td><%= taxAmount %></td>
                    </tr>
                
                    <tr>
                        <td>Post-tax Pay:</td>
                        <td><%= postPay %></td>
                    </tr>
                
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><%= postDeduct %></td>
                    </tr>
                
                    <tr>
                        <td>Net Pay:</td>
                        <td><%= netPay %></td>
                    </tr>
                </tbody>
                </table>
            </div>
            
        <a href="./index.jsp"> Back </a>
        </div>
        
    </body>
</html>
