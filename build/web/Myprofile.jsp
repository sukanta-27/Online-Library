<%--
    Document   : Myprofile.jsp
    Created on : 10 Sep, 2016, 12:10:17 PM
    Author     : LENOVO PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Library: View Profile</title>
        <link href="Book.ico" rel="shortcut icon"/>
        <link href="Profile.css" rel="stylesheet" type="text/css"/>
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
        
         <% 
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");                 
            Statement st = conn.createStatement();		     
            ResultSet rs; 
            rs=st.executeQuery("SELECT * FROM regtable where EmailID= '"+user+"'");  // replace # with the username which is passed through session
            // The interface which is displayed in SignUp.jsp, we'll be displaying the details of one's profile in the same interface. 
            // That's why I'm copy-pasting the same code with some minor changes.
         if(rs.next())
         {
         %>
             <h3 style="color: #ffffff; font-family: 'Droid serif', serif;  font-style: italic; font-size: 26px; text-align: center"> Welcome to Your Profile</h3>
                <table>
                    <tr>
                        <td>
                          <%out.println("<label>Name :" +rs.getString(1)+ "</label>");%>
                           
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <%out.println("<label>Email ID :"+rs.getString(2)+"</label>");%>
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <%out.println("<label>Password :"+rs.getString(3)+"</label>");%>
                          
                        </td>
                    </tr>
                    <tr>
                </table>
         <%
         }
         conn.close();					//Close the connection    
         rs.close();
         st.close();
         out.close();
         %>
         
    </body>
</html>
