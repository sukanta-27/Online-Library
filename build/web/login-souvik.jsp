<%-- 
    Document   : login2.jsp
    Created on : 27 Jul, 2016, 12:59:43 AM
    Author     : LENOVO PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Library : Login</title>

        <link href="MyStyle.css" rel="stylesheet" type="text/css"/>
        <link href="Book.ico" rel="shortcut icon"/>

    </head>
    <body text="white" body style="background-image:url(lib4.jpg);background-repeat:no-repeat;background-size:100%;">
    <hr color="white"><font  face="Comic Sans MS"><h1 color="blue" >Welcome To The Online Library</h1></font><hr color="white">
    <div class="login" >
    <h2 align="center" style="height:25%;"><b class="avatar"><img src="Key-512.png"></b></h2>
          
    <form action="" method="post">
        <br>Email-ID : <input type="text" placeholder="abc@xyz.com" autofocus required name="email"><br>
        <br>Password : <input type="password" placeholder="Password" autofocus required name="pwd"><br>
        <input type="submit" value="login" name="submit" style="float:right;line-height:30px;">
    
    </form>
	<a href="SignUp.jsp"><font  face="Comic Sans MS">Register Me</font></a>  
    </div>
    </body>
</html>