<%-- 
    Document   : LogOut.jsp
    Created on : 11 Sep, 2016, 10:47:52 PM
    Author     : LENOVO PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Library : Log Out</title>
        <link href="MyStyle.css" rel="stylesheet" type="text/css"/>
        <link href="Book.ico" rel="shortcut icon"/>
    </head>
    <body body style="background-image:url(ProfileImg.jpg);background-repeat:no-repeat;background-size:100%;">
    <%
        session.removeAttribute("a"); 
        session.removeAttribute("b"); 
        session.invalidate();
    %>

    <h1 style="color:#800000; font-family: 'Droid serif', serif;  font-style: italic; font-size: 26px;line-height: 900px; margin: 50 0 52px; text-align: center">Logged Out Successfully!!  Please <a href="Login.jsp">Login</a> to continue. </h1>
    </body>
</html>
