package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import java.sql.*;

public final class ShowBooks_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Book Details</title>\n");
      out.write("    </head>\n");
      out.write("    <body>    \n");
      out.write("    ");

        try
        {
                        
            Connection conn;	//conn is the Intereface variable of Connection used for establish the connection
            Statement st;	//st is the Interface variable of Statement used for execute any query
            ResultSet rs;	//rs is the Interface variable of ResultSet used for store the records from the table          
            
            //Class.forName("java.sql.DriverManager");
            Class.forName("com.mysql.jdbc.Driver");		//It can also be used
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
            st=conn.createStatement();
            
            String s="";
            s=request.getParameter("booksearch");
            if(s.equals("BOOKS_NAME"))
             {
                s=request.getParameter("t1");
                rs=st.executeQuery("SELECT * FROM BOOK where Name_Of_The_Book like '"+s+"%'");  
             }
            else if(s.equals("null"))
            {
                rs=st.executeQuery("SELECT * FROM BOOK order by "+s);
            }
            
            rs=st.executeQuery("SELECT * FROM BOOK group by "+s);		//Execute the Select Query

            out.println("<h2 align='center'>~:<u>Records of BOOK Table Order by "+s+"</u>:~</h2><br>");            
            out.println("<table border=2 cellspacing=0 bordercolor='brown' align='center' width='80%'>");
            out.println("<tr bgcolor='pink'><th>Book ID</th><th>Book Name</th><th>Author Name</th><th>Catagory</th><th>Publisher</th><th>Stock</th></tr>");             
            while(rs.next())                                //Loop to fetch the records from ResultSet variable untill the last record achieved
            {
                String id=rs.getString(1);
                String name=rs.getString(2);
                String author=rs.getString(3);
                String category=rs.getString(4);
                String publisher=rs.getString(5);
                String stock=rs.getString(6);
                out.println("<tr><th>"+id+"</th><th>"+name+"</th><th>"+author+"</th><th>"+category+"</th><th>"+publisher+"</th><th>"+stock+"</th></tr>");                
            }            
            out.println("</table>");                     
            conn.close();					//Close the connection    
            rs.close();
            st.close();
            out.close();
        }
        catch(Throwable ex)
        {
            //out.println("Error");
            StackTraceElement[] trace = ex.getStackTrace();
            System.err.println(trace[0].toString());
        }
    
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
