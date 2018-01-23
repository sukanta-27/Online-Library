<%-- 
    Document   : Login
    Created on : Jul 26, 2016, 11:23:24 PM
    Author     : sukanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Library : Login</title>
        <link href="MyStyle.css" rel="stylesheet" type="text/css"/>
        <link href="Book.ico" rel="shortcut icon"/>

    </head>
    <body body style="background-image:url(LoginBg.jpg);background-repeat:no-repeat;background-size:100%;">
        <h1 style="color: #ffffff; font-family: 'Droid serif', serif; font-size: 36px; font-weight: 400; font-style: italic; line-height: 44px; margin: 0 0 12px; text-align: center" >Welcome to Online Library</h1>
        <div id="loginid" >
            <h2 align="center" style="height:25%;"><b class="avatar"><img src="Key-512.png"></b></h2>
        <form action="" method="post">
            <div>
            <label>Username:</label><br>
            <input type="text" name="username" required autofocus placeholder="abc@xyz.com"<br><br>
            <label>Password:</label><br>
            <input type="password" name="password" required placeholder="Password"><br><br>
            </div>
            <div>
            <input type="submit" value="Sign in" name="submit" style="float:right;line-height:30px;">
            </div>
        
            <a href="SignUp.jsp"><font face="Comic Sans MS">Register Me</font></a>
        
		
       <% 
        String status = "";
        String username = request.getParameter("username");
        if(request.getParameter("submit")!= null)   
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");                 
            Statement st = conn.createStatement();	     
            ResultSet rs;                   
            BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
       
            rs = st.executeQuery("Select * From regtable where EmailID='"+request.getParameter("username")+"'");
            
            if(rs.next())
            {
                if(rs.getString(3).equals(request.getParameter("password")))
                {
                    status = rs.getString(4);
                    session.setAttribute("username",username);
                    session.setAttribute("status", status);
                    response.sendRedirect("Home.jsp");                  
                }
                else
                {
                    out.println("Invalid username or Password");
                }
            }
            else
            {
                out.println(" Username not registerd!");
            }
        }
        %>
        </form>
        </div>
    </body>
</html>

