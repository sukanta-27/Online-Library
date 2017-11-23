<%-- 
    Document   : DeleteProfile.jsp
    Created on : 11 Sep, 2016, 9:07:22 PM
    Author     : LENOVO PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Library : Delete Profile</title>
        <link href="MyStyle.css" rel="stylesheet" type="text/css"/>
        <link href="Profile.css" rel="stylesheet" type="text/css"/>
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
        <form action="DeleteProfile.jsp" method="POST">
            <h1 style="color: #FFC300 ; font-family: 'Droid serif', serif; font-size: 36px; font-weight: 400; font-style: italic; line-height: 44px; margin: 0 0 12px; text-align: left">Are You Sure You Want To Delete Your Account? </h1>
          <center>       
            <input type="submit" value="No" name="no"  />
            <input type="submit" value="Yes" name="yes" />   
          </center>
        </form>
        
            <%
                if(request.getParameter("yes")!=null)
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");                 
                    Statement st = conn.createStatement();		     
                    ResultSet rs; 
                    //int res=st.executeUpdate("DELETE FROM issue_table WHERE Email_ID = '"+#+"'");   //in future name the 3rd table as 'issue_table'
                    int result=st.executeUpdate("DELETE FROM regtable WHERE EmailID = '"+user+"'");   //replace # with the username which is passed through session
                    session.removeAttribute("username"); 
                    session.removeAttribute("password"); 
                    session.invalidate(); 
                    out.println("<h1>Profile Has Been Deleted Successfully!!</h1>");                 
                    conn.close();					//Close the connection    
                    //rs.close();
                    st.close();
                    out.close();
                
                
                
                }
            %>
                 
        </center>
    </body>
</html>
