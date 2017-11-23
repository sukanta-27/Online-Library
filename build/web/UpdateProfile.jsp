<%-- 
    Document   : UpdateProfile.jsp
    Created on : 10 Sep, 2016, 12:52:44 PM
    Author     : LENOVO PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Libary: Profile Update </title>
        <link href="Profile.css" rel="stylesheet" type="text/css"/>
        <link href="MyStyle.css" rel="stylesheet" type="text/css"/>
        <link href="Book.ico" rel="shortcut icon"/>
    </head>
    <body body style="background-image:url(ProfileImg.jpg);background-repeat:no-repeat;background-size:100%;">
            
    
    <%--Navigation Bar Code --%> 
        
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
        
        
        
        <form action="UpdateDb.jsp" method="POST">
            <h3 style="color: #ffffff; font-family: 'Droid serif', serif;  font-style: italic; font-size: 26px; text-align: center"> Please Update:</h3>
                <table>
                    <tr>
                        <td>
                            <label>Name* :</label>
                            <input type="text" name="name" placeholder="Full Name" required="required" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Old Password* :</label>
                            <input type="password" name="oldpass" placeholder="Previous Password" required="required">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>New Password* :</label>
                            <input type="password" name="newpass" placeholder=" New Password" required="required">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Confirm Password* :</label>
                            <input type="password" name="newconpass" placeholder="Re-enter  New Password" required="required">
                            
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <br><input type="submit" value="Update" name="submit">
                        </td>
                    </tr>
                        
                </table>
            
            
        </form>
        
    </body>
</html>
