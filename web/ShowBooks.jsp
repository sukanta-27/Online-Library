<%-- 
    Document   : ShowBooks.jsp
    Created on : Sep 4, 2016, 12:12:19 AM
    Author     : LENOVO PC
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Library: Search Book</title>
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
        
        
    <%
        /*try
        {*/
                        
            Connection conn;	//conn is the Intereface variable of Connection used for establish the connection
            Statement st;	//st is the Interface variable of Statement used for execute any query
            ResultSet rs;	//rs is the Interface variable of ResultSet used for store the records from the table          
            
            //Class.forName("java.sql.DriverManager");
            Class.forName("com.mysql.jdbc.Driver");		//It can also be used
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
            st=conn.createStatement();
            
            String s="", t="",v="";         // s stores the value of the combo box. t  stores the value of the name searched in th taskbar .
            s=request.getParameter("booksearch");
            t=request.getParameter("t1");
            if(s.equals("BOOKS_NAME"))                      
            {
               v="where `Name Of The Book` like 't%'";
            }
            else if(s.equals("AUTHOR"))                     // we're storing the sql condition in v and after the loop we're initializing the rs 
            {                                               // by writing the common sql code part and merging the rest code stored in v.
               v="group by `Name Of The Author`";
            }
            else if(s.equals("GENRE"))
            {
                v="group by `Category`"; 
            } 
            
            rs=st.executeQuery("SELECT * FROM books_table "+v);
            
            out.println("<h2 align='center' color='white'>~:<u>Records of BOOK Table Order by "+s+"</u>:~</h2><br>");            
            out.println("<table border=2 cellspacing=0 bordercolor='brown' align='center' width='80%'>");
            out.println("<tr bgcolor='pink'><th>Serial_Number</th><th>Name_Of_The_Book</th><th>Name_Of_The_Author</th><th>Genre</th><th>No._Of_stocks_Available</th><th>Thumbnail</th><th>Action</th></tr>");             
            while(rs.next())                                //Loop to fetch the records from ResultSet variable untill the last record achieved
            {
                String id=rs.getString(1);
                String name=rs.getString(2);
                String author=rs.getString(3);
                String genre=rs.getString(4);
                String stock=rs.getString(5);
                String image=rs.getString(6);
                out.println("<tr bgcolor='white'><th>"+id+"</th><th>"+name+"</th><th>"+author+"</th><th>"+genre+"</th><th>"+stock+"</th><th><img src='uploads/"+image+"'/></th><th><a href=BookIssueBackEnd.jsp?BID="+name+">Issue</a></th></tr></tr>"); 
                //<th><img src='uploads/"+image+"' height="42" width="42"/></th>
            }            
            out.println("</table>");                     
            conn.close();					//Close the connection    
            rs.close();
            st.close();
            out.close();
        /*}
        catch(Exception ex)
        {
            out.println("Error");
        }*/
    %>
    </body>
</html>
