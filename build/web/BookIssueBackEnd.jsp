<%-- 
    Document   : BookIssueBackEnd.jsp
    Created on : 29 Sep, 2016, 11:27:57 AM
    Author     : LENOVO PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Library: Search Book</title>
    </head>
    <body>
        <% String user = session.getAttribute("username").toString();
               String stat = session.getAttribute("status").toString();
       %>
       
        <% // no need of navigation bar in this page
        String data1=request.getParameter("BID");
        if("BID"!="")
        {            
           // out.print("<h3 style='font-weight:lighter;'><font face='Comic Sans MS'>BookID: <font color=green>"+data1+"</font>");
            String issue_date=new java.util.Date().toString();
           // out.print("<br>Issue date:<font color=red>"+issue_date+"</font>"); 
            
            //Code to Save the Issue Details at tran_book Table
            Connection conn;	//conn is the Intereface variable of Connection used for establish the connection
            Statement st;	//st is the Interface variable of Statement used for execute any query
            ResultSet rs;	//rs is the Interface variable of ResultSet used for store the records from the table          
            
           
            try
            {
                Class.forName("com.mysql.jdbc.Driver");		//It can also be used
                conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
                st=conn.createStatement();
                int result=st.executeUpdate("INSERT INTO issue_table(Email_ID,Name_Of_The_Book,Date_Of_Issue) VALUES('"+user+"','"+data1+"','"+issue_date+"')");       // replace # with sessioned emailid

                //Code to Update the stock details
                result=st.executeUpdate("UPDATE books_table SET No._Of_stocks_Available=No._Of_stocks_Available-1 where Name_Of_The_Book='"+data1+"'");                                
                
                conn.close();	
                response.sendRedirect("ShowBooks.jsp");
            }
            catch(Exception ex)
            {
                out.println("<br><br>Error Occurred...");
            }
        }
        %>
    </body>
</html>
