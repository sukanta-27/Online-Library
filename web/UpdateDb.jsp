<%-- 
    Document   : UpdateDb
    Created on : 10 Sep, 2016, 2:24:09 PM
    Author     : LENOVO PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Libary: Profile Update </title>
    </head>
    <body>
        <%  
            String user = session.getAttribute("username").toString();
            String stat = session.getAttribute("status").toString();
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");                 
            Statement st = conn.createStatement();		     
            ResultSet rs;
            
            String name=request.getParameter("name");
            String oldpass=request.getParameter("oldpass");
            String newpass=request.getParameter("newpass");
            String newconpass=request.getParameter("newconpass");
            
            rs=st.executeQuery("SELECT * FROM regtable where EmailID= '"+user+"'");  // replace # with the username which is passed through session
           if(rs.next())
           {
                if(oldpass.equals(rs.getString(3)))     //checking whether old pass = registered old pass
                {
                    if (newpass.equals(newconpass))      //chcking whether new pass = conf pass
                    {
                       int result=st.executeUpdate("UPDATE regtable SET Password ='"+newpass+"' WHERE EmailID ='"+user+"'");
                       //response.sendRedirect("Myprofie.jsp");                                     // replace # with the username which is passed through session
                       out.println("Update Was Successful");
                    }
                
                }
                else{
                    out.println("Error");
                }
           
           
           }
          
            
        %>
    </body>
</html>
