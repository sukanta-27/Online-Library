<%-- 
    Document   : IssuedBooks.jsp
    Created on : 26 Sep, 2016, 11:19:23 AM
    Author     : LENOVO PC
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Library: Issued Books</title>
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
        
        <% Connection conn;	//conn is the Intereface variable of Connection used for establish the connection
        Statement st;	//st is the Interface variable of Statement used for execute any query
        ResultSet rs;	//rs is the Interface variable of ResultSet used for store the records from the table          

        //Class.forName("java.sql.DriverManager");
        Class.forName("com.mysql.jdbc.Driver");		//It can also be used
        conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
        st=conn.createStatement();
        rs=st.executeQuery("SELECT Name FROM regtable where EmailID='"+user+"'");         // replace # with sessioned emailid
        out.println("<h2> Hello, " +rs.getString(1)+". Your Issued Books Till Date Are As Follows :- ");
        rs=st.executeQuery("SELECT * FROM issue_table where Email_ID='"+user+"'");          // replace # with sessioned emailid
       
        int slno=1;                 //counter for serial number
        out.println("<table border=2 cellspacing=0 bordercolor='brown' align='center' width='80%'>");
        out.println("<tr bgcolor='pink'><th>Serial_Number</th><th>Email_ID</th><th>Name_Of_The_Book</th><th>Date_Of_Issue</th><th>Action</th></tr>");
        while(rs.next())                                //Loop to fetch the records from ResultSet variable untill the last record achieved
            {
                String emailid=rs.getString(2);
                String bookname=rs.getString(3);
                String issuedate=rs.getString(4);
                out.println("<tr><th>"+slno+"</th><th>"+emailid+"</th><th>"+bookname+"</th><th>"+issuedate+"</th><th><a href=SubmitBookBackEnd.jsp?BID="+bookname+">Submit</a></th></tr>"); 
                ++slno;
            }
         out.println("</table>");  
       %>
    </body>
</html>
