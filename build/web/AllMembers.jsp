<%-- 
    Document   : AllMembers
    Created on : Sep 12, 2016, 1:44:12 AM
    Author     : sukanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import='java.io.*' %>
<%@page import='java.sql.*' %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Library: Member's List</title>
        <link href="Book.ico" rel="shortcut icon"/>
        <link href="Profile.css" rel="stylesheet" type="text/css"/>
    </head>
    <body body style="background-image:url(5074157.jpg);background-repeat:no-repeat;background-size:100%;">
        
        <%-- Navigation Bar Code --%>
        
            <% String user = session.getAttribute("username").toString();
               String stat = session.getAttribute("status").toString();
               
            %>
        <ul id="menu">
        <li><a href="Home.jsp">Home</a></li>
        
        <li><a href="Search.jsp">Search</a></li>
        <li>
            <a href="#">Books</a>
            <ul>
                <li><a href="#">Issue Books</a></li>
                <li><a href="#">Submit Books</a></li>
            </ul>
        </li>
        <li><a href="#">Contact</a></li>
        <% 
               if(stat.equals("Admin")){
        %>
        <li>
            <a href="#">Admin Panel</a>
            <ul>
                <li>
                    <a href="AddBooks.jsp">Add Book</a>
                </li>
                <li>
                    <a href="DeleteBooks.jsp">Delete Book</a>
                </li>
                <li>
                    <a href="AllMembers.jsp">All Members</a>
                </li>
            </ul>
        </li>
        <%
               }
        %>
        <li>
            <a href="#">Profile</a>
        <ul>
            <li><a href="Myprofile.jsp">My Profile</a></li>
            <li><a href="UpdateProfile.jsp">Update Profile</a></li>
            <li><a href="DeleteProfile.jsp">Delete Account</a></li>
            <li><a href="LogOut.jsp">Logout</a></li>
        </ul>
        </li>
        </ul>
        
        <%
             
               Connection conn;
               Statement st;
               ResultSet rs;
               
               Class.forName("com.mysql.jdbc.Driver");		//It can also be used
               conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
               st=conn.createStatement();
               
               rs = st.executeQuery("SELECT * FROM regtable");
               out.println("<h2 align='center' color = 'white'>~:<u>MEMBERS</u>:~</h2><br>");            
            out.println("<table border=2 cellspacing=0 bordercolor='brown' align='center' width='80%'>");
            out.println("<tr bgcolor='pink'><th>Name</th><th>Email ID</th><th>Password</th><th>Status</th></tr>");
            while(rs.next())                                //Loop to fetch the records from ResultSet variable until the last record achieved
            {
                
                String Name=rs.getString(1);
                String EmailID=rs.getString(2);
                String Password=rs.getString(3);
                String Status=rs.getString(4);
                
                if(Status.equals("Admin")){
                    
                    if(EmailID.equals(user)){
                        out.println("<tr bgcolor = 'white'><th>"+Name+"</th><th>"+EmailID+"</th><th>"+Password+"</th><th>"+Status+"</th></tr>");
                    }
                    else{
                        out.println("<tr bgcolor = 'white'><th>"+Name+"</th><th>"+EmailID+"</th><th>PRIVATE</th><th>"+Status+"</th></tr>");
                    }
                }
                else{
                    out.println("<tr bgcolor = 'white'><th>"+Name+"</th><th>"+EmailID+"</th><th>"+Password+"</th><th>"+Status+"</th></tr>");
                }
                                
            }
        %>
    </body>
</html>
