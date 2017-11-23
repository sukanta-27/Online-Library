<%-- 
    Document   : RegistrationDb.jsp
    Created on : 28 Jul, 2016, 8:53:54 PM
    Author     : LENOVO PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Library : Sign Up</title>
        <link href="MyStyle.css" rel="stylesheet" type="text/css"/>
        <link href="Book.ico" rel="shortcut icon"/>
    </head>
     <body text="white" body style="background-image:url(LoginBg.jpg);background-repeat:no-repeat;background-size:100%;">
         
     <% Connection conn;				
        Statement st;					
        ResultSet rs;					
        BufferedReader br=new BufferedReader(new InputStreamReader(System.in));		
        String Name,EmailID,Password,con_password,status;
       
    	 //Class.forName("java.sql.DriverManager");
        Class.forName("com.mysql.jdbc.Driver");		//It can also be used
        conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
        st=conn.createStatement();			//Initialize the st variable			//Initialize the st variable

        Name=request.getParameter("name");
        EmailID=request.getParameter("username");
        Password=request.getParameter("password");
        con_password=request.getParameter("con_password");
        status="General";
        
        if(Password.equals(con_password)){
        int result=st.executeUpdate("INSERT INTO regtable VALUES('"+Name+"','"+EmailID+"','"+Password+"','"+status+"')");		//Execute DML Insert query 
        }
        else{
            //out.println("Password and Confirm Password did not match");
            response.sendRedirect("SignUp.jsp");
        }
      %> 
         <br><br><br><br><br><h1>Congratulations!! You have successfully been registered. Please <a href="Login.jsp">Login</a> to continue. </h1>
    </body>
</html>
