package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class SignUp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Online Library : Sign Up</title>\n");
      out.write("        <link href=\"MyStyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Book.ico\" rel=\"shortcut icon\"/>\n");
      out.write("    </head>\n");
      out.write("    <center>\n");
      out.write("    <body body style=\"background-image:url(LoginBg.jpg);background-repeat:no-repeat;background-size:100%;\">\n");
      out.write("        ");
      out.write("\n");
      out.write("        <div class=\"backtologin\">\n");
      out.write("                \n");
      out.write("                <span class=\"right\">\n");
      out.write("                    <a href=\"Login.jsp\">\n");
      out.write("                        <strong>Back to Login page</strong>\n");
      out.write("                    </a>\n");
      out.write("                </span>\n");
      out.write("                \n");
      out.write("                <div class=\"clr\"></div>\n");
      out.write("        </div>\n");
      out.write("        <h1 style=\"color: #ffffff; font-family: 'Droid serif', serif; font-size: 36px; font-weight: 400; font-style: italic; line-height: 44px; margin: 0 0 12px; text-align: center\" >Welcome to Online Library</h1>\n");
      out.write("        \n");
      out.write("        <div>\n");
      out.write("            <form action=\"\" method=\"POST\">\n");
      out.write("                <h3>Sign Up</h3>\n");
      out.write("                <table>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            <label>Name* :</label>\n");
      out.write("                            <input type=\"text\" name=\"name\" placeholder=\"Full Name\" required=\"required\" >\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            <label>Email ID* :</label>\n");
      out.write("                            <input type=\"text\" name=\"username\" placeholder=\"abc@xyz.com\" required=\"required\">\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            <label>Password* :</label>\n");
      out.write("                            <input type=\"password\" name=\"password\" placeholder=\"password\" required=\"required\">\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            <label>Confirm Password* :</label>\n");
      out.write("                            <input type=\"password\" name=\"con_password\" placeholder=\"Re-enter password\" required=\"required\">\n");
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
      out.write("          ");
if(request.getParameter("submit")!= null)
            {
            if(request.getParameter("password").equals(request.getParameter("con_password"))==true)
                {
                    response.sendRedirect("RegistrationDb.jsp");   

                }
            }
          
      out.write("\n");
      out.write("            \n");
      out.write("          ");
      out.write("S\n");
      out.write("                \n");
      out.write("            </form>\n");
      out.write("        </div>\n");
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
