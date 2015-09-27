<%-- 
    Document   : index
    Created on : 2015-9-27, 16:39:43
    Author     : Jiyuan Jin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="main.css" />
    </head>
    
    <body>
        <div id="frame">
            <h1>Simple Salary Calculator</h1>
            <hr>
        
            <form name="form" action="results.jsp" method="post">
                <table>
                   <tbody>
                        <tr>
                           <td>Hours Worker:</td>
                           <td class="box"><input type="text" name="hour" value="" size="50" required></td>
                        </tr>  
                    
                        <tr>
                            <td>Hourly Pay:</td>
                            <td class="box"><input type="text" name="pay" value="" size="50" required></td>
                        </tr>   
                        
                        <tr>
                            <td>Pre-tax Deduct:</td>
                            <td class="box"><input type="text" name="preDeduct" value="" size="50" required></td>
                        </tr>    
                        
                        <tr>
                            <td>Post-tax Deduct:</td>
                            <td class="box"><input type="text" name="postDeduct" value="" size="50" required ></td>
                        </tr>
                    </tbody>
                </table>
                <div id="switch">
                    <input class="button green" type="reset" value="Clear" id="clear">
                    <input class="button green" type="submit" value="Submit" id="submit">
                </div>
            </form>
        </div>
        
    </body>
</html>
