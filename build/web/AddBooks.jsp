<%-- 
    Document   : AddBooks
    Created on : Sep 12, 2016, 1:43:38 AM
    Author     : sukanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Library: Add Books</title>
        <link href="Book.ico" rel="shortcut icon"/>
        <link href="Profile.css" rel="stylesheet" type="text/css"/>
        <link href="MyStyle.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <center>
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
        
        <%-- Add Book Details --%>
        
        <form action="AddBooks.jsp" method="POST">
                <h3>Add Book</h3>
                <table>
                    <tr>
                        <td>
                            <label>Name Of The Book :</label>
                            <input type="text" name="name" placeholder="Full Name" required="required" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Book ID* :</label>
                            <input type="text" name="ID" placeholder="X123" required="required">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Author :</label>
                            <input type="text" name="author" placeholder="Author's Name" required="required">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Genre :</label>
                            <input type="text" name="genre" placeholder="Mention Genre" required="required">
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Stock :</label>
                            <input type="text" name="stock" placeholder="Stock Available" required="required">
                            
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
                int result;
               Connection conn;
               Statement st;
               
               
               Class.forName("com.mysql.jdbc.Driver");		//It can also be used
               conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
               st=conn.createStatement();
               
               String id = request.getParameter("ID");
               String name = request.getParameter("name");
               String author = request.getParameter("author");
               int stock = Integer.parseInt(request.getParameter("stock"));
               String genre = request.getParameter("genre");
               String link = "";
            
               result = st.executeUpdate("INSERT INTO books_table (`Serial Number`, `Name Of The Book`, `Name Of The Author`, `Category`, `No. Of Stocks Available`, `Image Link`) VALUES ('"+id+"','"+name+"','"+author+"','"+genre+"','"+stock+"','"+link+"')");
               ///out.println("<h1>Result : "+result+"</h1>");
               //out.println("<h1>"+stock+"</h1>");
               //out.println(request.getParameter("stock"));
               //out.println(stock);
               /*if(result >0){
                   out.println("<h1 style='color:#800000; font-family: 'Droid serif', serif;  font-style: italic; font-size: 26px;line-height: 900px; margin: 50 0 52px; text-align: center>Book has been added</h1>");
               }
               else{
                   out.println("<h1 style='color:#800000; font-family: 'Droid serif', serif;  font-style: italic; font-size: 26px;line-height: 900px; margin: 50 0 52px; text-align: center>Error Occured: Book could not be added</h1>");
               }*/
                conn.close();					//Close the connection    
                st.close();
                out.close();
            }
        %>
        
        
    </body>
    </center>
</html>
