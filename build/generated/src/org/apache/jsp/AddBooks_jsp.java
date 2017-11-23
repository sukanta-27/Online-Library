package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.sql.*;

public final class AddBooks_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Online Library: Add Books</title>\n");
      out.write("        <link href=\"Book.ico\" rel=\"shortcut icon\"/>\n");
      out.write("        <link href=\"Profile.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"MyStyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <center>\n");
      out.write("    <body body style=\"background-image:url(5074157.jpg);background-repeat:no-repeat;background-size:100%;\">\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");
 String user = session.getAttribute("username").toString();
               String stat = session.getAttribute("status").toString();
            
      out.write("\n");
      out.write("        <ul id=\"menu\">\n");
      out.write("        <li><a href=\"Home.jsp\">Home</a></li>\n");
      out.write("        \n");
      out.write("        <li><a href=\"Search.jsp\">Search</a></li>\n");
      out.write("        <li>\n");
      out.write("            <a href=\"#\">Books</a>\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"#\">Issue Books</a></li>\n");
      out.write("                <li><a href=\"#\">Submit Books</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </li>\n");
      out.write("        <li><a href=\"#\">Contact</a></li>\n");
      out.write("        ");
 
               if(stat.equals("Admin")){
        
      out.write("\n");
      out.write("        <li>\n");
      out.write("            <a href=\"#\">Admin Panel</a>\n");
      out.write("            <ul>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"AddBooks.jsp\">Add Book</a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"DeleteBooks.jsp\">Delete Book</a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"AllMembers.jsp\">All Members</a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </li>\n");
      out.write("        ");

               }
        
      out.write("\n");
      out.write("        <li>\n");
      out.write("            <a href=\"#\">Profile</a>\n");
      out.write("        <ul>\n");
      out.write("            <li><a href=\"Myprofile.jsp\">My Profile</a></li>\n");
      out.write("            <li><a href=\"UpdateProfile.jsp\">Update Profile</a></li>\n");
      out.write("            <li><a href=\"DeleteProfile.jsp\">Delete Account</a></li>\n");
      out.write("            <li><a href=\"LogOut.jsp\">Logout</a></li>\n");
      out.write("        </ul>\n");
      out.write("        </li>\n");
      out.write("        </ul>\n");
      out.write("        \n");
      out.write("        ");
      out.write("\n");
      out.write("        \n");
      out.write("        <form action=\"AddBooks.jsp\" method=\"POST\">\n");
      out.write("                <h3>Add Book</h3>\n");
      out.write("                <table>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            <label>Name Of The Book :</label>\n");
      out.write("                            <input type=\"text\" name=\"name\" placeholder=\"Full Name\" required=\"required\" >\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            <label>Book ID* :</label>\n");
      out.write("                            <input type=\"text\" name=\"ID\" placeholder=\"X123\" required=\"required\">\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            <label>Author :</label>\n");
      out.write("                            <input type=\"text\" name=\"author\" placeholder=\"Author's Name\" required=\"required\">\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            <label>Genre :</label>\n");
      out.write("                            <input type=\"text\" name=\"genre\" placeholder=\"Mention Genre\" required=\"required\">\n");
      out.write("                            \n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            <label>Stock :</label>\n");
      out.write("                            <input type=\"text\" name=\"stock\" placeholder=\"Stock Available\" required=\"required\">\n");
      out.write("                            \n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            <input type=\"submit\" value=\"Submit\" name=\"submit\">\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                        \n");
      out.write("                </table>\n");
      out.write("        </form>\n");
      out.write("        ");
      int result = 0;
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
               
            
               result = st.executeUpdate("INSERT INTO books_table  VALUES ('"+id+"','"+name+"','"+author+"','"+genre+"','"+stock+"','"+link+"')");
               
               out.println(request.getParameter("stock"));
               if(result >0){
                   out.println("<h1 style='color:#800000; font-family: 'Droid serif', serif;  font-style: italic; font-size: 26px;line-height: 900px; margin: 50 0 52px; text-align: center>Book has been added</h1>");
               }
               else{
                   out.println("<h1 style='color:#800000; font-family: 'Droid serif', serif;  font-style: italic; font-size: 26px;line-height: 900px; margin: 50 0 52px; text-align: center>Error Occured: Book could not be added</h1>");
               }
         conn.close();					//Close the connection    
         st.close();
         out.close();
        
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("    </center>\n");
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
