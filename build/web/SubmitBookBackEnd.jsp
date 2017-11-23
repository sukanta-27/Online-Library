<%-- 
    Document   : SubmitBookBackEnd.jsp
    Created on : 29 Sep, 2016, 12:32:13 PM
    Author     : LENOVO PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String user = session.getAttribute("username").toString();
               String stat = session.getAttribute("status").toString();
       %>
       
        <% // no need of navigation bar in this page
        String data1=request.getParameter("BID");
        if("BID"!="")
        {   
            try
            {
            
                Connection conn;	//conn is the Intereface variable of Connection used for establish the connection
                Statement st;	//st is the Interface variable of Statement used for execute any query
                ResultSet rs;	//rs is the Interface variable of ResultSet used for store the records from the table          
           
                Class.forName("com.mysql.jdbc.Driver");		//It can also be used
                conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
                st=conn.createStatement();
                
                //Code to Update the stock details
                int result=st.executeUpdate("UPDATE books_table SET No._Of_stocks_Available=No._Of_stocks_Available+1 where Name_Of_The_Book='"+data1+"'");                                
                result=st.executeUpdate("DELETE * FROM issue_table WHERE `Email_ID` = '"+user+"' AND Name_Of_The_Book='"+data1+"'");       // replace # with sessioned emailid
                conn.close();	
                response.sendRedirect("IssuedBooks.jsp");
            }
            catch(Exception ex)
            {
                out.println("<br><br>Error Occurred...");
            }
        }
        %>
    </body>
</html>
