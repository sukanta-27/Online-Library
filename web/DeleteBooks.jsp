<%-- 
    Document   : DeleteBooks
    Created on : Sep 12, 2016, 1:43:55 AM
    Author     : sukanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Library: Delete Books</title>
        <link href="Book.ico" rel="shortcut icon"/>
        <link href="Profile.css" rel="stylesheet" type="text/css"/>
        <link href="MyStyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body body style="background-image:url(5074157.jpg);background-repeat:no-repeat;background-size:100%;">
        <%--Navigation Bar Code--%>
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
        
        <%-- Delete Book Code --%>
        
        <form action="DeleteBooks.jsp" method="POST">
            <h3>Delete Books</h3>
            <table>
                <tr>
                    <td>
                        <label>Name of the Book</label>
                        <input type="text" name="name" placeholder="Full Name" required="required">
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Submit" name="submit">
                    </td>
                </tr>
            </table>
            
        </form>
        
        <%
            if(request.getParameter("submit")!=null){
                Connection conn;
                Statement st;

                Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
                st=conn.createStatement();
                int result;
                String name = request.getParameter("name");
                result = st.executeUpdate("DELETE FROM books_table WHERE `Name Of The Book` ='"+name+"'");
                //out.println(name);
                //out.println("<h1>Result : "+result+"</h1>");
                //out.println("<h1>Profile Has Been Deleted Successfully!!</h1>");

                conn.close();
                st.close();
                out.close();
            }
        %>
        
    </body>
</html>
