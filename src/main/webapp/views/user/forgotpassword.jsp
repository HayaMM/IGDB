<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <head> <title>Forgot Password</title> </head>
    <body>
            <form action="${appName}user/forgotpassword" method="post">
                <table>
                    <tr>
                        <td><label for="emailAddress">Email</label></td>
                        <td><input  type="text" name="emailAddress"></input></td>
                    </tr>
                    <tr>
                    
                        <td><input type="reset" value="Clear"/></td>
                        <td><input type="submit" value="Reset Password"></input></td>
                    </tr>
                </table>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                
            </form>
        
    </body>
</html>