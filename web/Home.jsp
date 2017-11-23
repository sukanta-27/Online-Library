<%-- 
    Document   : Profile.jsp
    Created on : 30 Jul, 2016, 1:07:21 PM
    Author     : LENOVO PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import='java.io.*' %>
<%@page import='java.sql.*' %>        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Library: Profile</title>
        <link href="Book.ico" rel="shortcut icon"/>
        <link href="Profile.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body body style="background-image:url(5074157.jpg);background-repeat:no-repeat;background-size:100%;">
            <% String user = session.getAttribute("username").toString();
               String stat = session.getAttribute("status").toString();
            %>
        <ul id="menu">
        <li><a href="Home.jsp">Home</a></li>
        
        <li><a href="Search.jsp">Search</a></li>
        <li>
            <a href="#">Books</a>
            <ul>
                <li><a href="IssuedBooks.jsp">Issue Books</a></li>
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
        
        <%     String id="",name="",author="",stock="",category="";
               Connection conn;
               Statement st;
               ResultSet rs;
               
               Class.forName("com.mysql.jdbc.Driver");		//It can also be used
               conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
               st=conn.createStatement();
               
               rs = st.executeQuery("SELECT * FROM books_table");
               out.println("<h2 align='center' color = 'white'>~:<u>Books</u>:~</h2><br>");            
            out.println("<table border=2 cellspacing=0 bordercolor='brown' align='center' width='80%'>");
            out.println("<tr bgcolor='pink'><th>Book ID</th><th>Book Name</th><th>Author Name</th><th>Catagory</th><th>Stock</th></tr>");
            while(rs.next())                                //Loop to fetch the records from ResultSet variable until the last record achieved
            {
                
                id=rs.getString(1);
                name=rs.getString(2);
                author=rs.getString(3);
                category=rs.getString(4);
                stock=rs.getString(5);
                out.println("<tr bgcolor = 'white'><th>"+id+"</th><th>"+name+"</th><th>"+author+"</th><th>"+category+"</th><th>"+stock+"</th></tr>");                
            }
        %>
        
        <%--
        <h4 align=center style="background:black;padding:5pt;opacity:0.5;border-radius:10pt;"><font color=white>
        Online Library<br>Developed By: Souvik Ghosh & Sukanta Roy</font>
</h4>--%>
    
    </body>
</html>
