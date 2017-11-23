<%-- 
    Document   : SignUp
    Created on : Jul 27, 2016, 7:55:17 PM
    Author     : sukanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Library : Sign Up</title>
        <link href="MyStyle.css" rel="stylesheet" type="text/css"/>
        <link href="Book.ico" rel="shortcut icon"/>
    </head>
    <center>
    <body body style="background-image:url(LoginBg.jpg);background-repeat:no-repeat;background-size:100%;">
        <%--back to login page--%>
        <div class="backtologin">
                
                <span class="right">
                    <a href="Login.jsp">
                        <strong>Back to Login page</strong>
                    </a>
                </span>
                
                <div class="clr"></div>
        </div>
        <h1 style="color: #ffffff; font-family: 'Droid serif', serif; font-size: 36px; font-weight: 400; font-style: italic; line-height: 44px; margin: 0 0 12px; text-align: center" >Welcome to Online Library</h1>
        
        <div>
            <form action="RegistrationDb.jsp" method="POST">
                <h3>Sign Up</h3>
                <table>
                    <tr>
                        <td>
                            <label>Name* :</label>
                            <input type="text" name="name" placeholder="Full Name" required="required" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Email ID* :</label>
                            <input type="text" name="username" placeholder="abc@xyz.com" required="required">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Password* :</label>
                            <input type="password" name="password" placeholder="password" required="required">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Confirm Password* :</label>
                            <input type="password" name="con_password" placeholder="Re-enter password" required="required">
                            
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <input type="submit" value="Submit" name="submit">
                        </td>
                    </tr>
                        
                </table>
          
            
          <%--<br><br><h2 style="color: #fff;">Sorry! Password did not match.</h2>--%>
                
            </form>
        </div>
    </body>
    </center>
</html>
