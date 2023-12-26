/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.0.27
 * Generated at: 2023-07-06 03:48:45 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.view;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import db.ConexionDB;

public final class altaPedidos_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("db.ConexionDB");
    _jspx_imports_classes.add("java.sql.ResultSet");
    _jspx_imports_classes.add("java.sql.Statement");
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!doctype html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <title>Agregar informacion</title>\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM\" crossorigin=\"anonymous\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css\">\r\n");
      out.write("  </head>\r\n");
      out.write("  <body class=\"bg-dark\">\r\n");
      out.write("  	");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "menu.jsp", out, false);
      out.write("\r\n");
      out.write("  	\r\n");
      out.write("<div class=\"container bg-white \">\r\n");
      out.write("    	<div class=\"border bg-body-secondary m-2 \">\r\n");
      out.write("			<div class=\"text-center fs-3 my-4 text-decoration-underline\">Agregar Usuario y su informacion</div>\r\n");
      out.write("			<div class=\"  text-center\">\r\n");
      out.write("				<form action=\"../controller/addPedidos.jsp\" method=\"post\">\r\n");
      out.write("				\r\n");
      out.write("				<div class=\"row d-flex justify-content-center \">\r\n");
      out.write("				\r\n");
      out.write("				\r\n");
      out.write("					<div class=\"col-3\">\r\n");
      out.write("					<label for=\"nomb\" >Nombre:</label>\r\n");
      out.write("					<input type=\"text\" id=\"nomb\" name=\"nombre\"  class=\"form-control mb-3\" placeholder=\"Nombre\" required>\r\n");
      out.write("					\r\n");
      out.write("					<label for=\"apel\">Apellido:</label>\r\n");
      out.write("					<input type=\"text\" id=\"apel\" name=\"apellido\"  class=\"form-control mb-3\" placeholder=\"Apellido\" required>\r\n");
      out.write("					\r\n");
      out.write("					<label for=\"user\">Usuario:</label>\r\n");
      out.write("					<input type=\"text\" id=\"user\" name=\"usuario\"class=\"form-control mb-3\" placeholder=\"Usuario\" required>\r\n");
      out.write("					\r\n");
      out.write("					<label for=\"email\">Email:</label>\r\n");
      out.write("					<input type=\"email\" id=\"email\" name=\"mail\" class=\"form-control mb-3\" placeholder=\"Email\" required>\r\n");
      out.write("					</div>\r\n");
      out.write("					\r\n");
      out.write("					<div class=\"col-3\">\r\n");
      out.write("					\r\n");
      out.write("					\r\n");
      out.write("					<label for=\"locali\">localidad:</label>\r\n");
      out.write("					<input type=\"text\" id=\"locali\" name=\"locali\"  class=\"form-control mb-3\" placeholder=\"localidad\" required>\r\n");
      out.write("					\r\n");
      out.write("					<label for=\"codi\">Codigo postal:</label>\r\n");
      out.write("					<input type=\"text\" id=\"codi\" name=\"codPost\" class=\"form-control mb-3\" placeholder=\"codigo postal\" required>\r\n");
      out.write("					\r\n");
      out.write("					<label for=\"forma\">Forma de pago:</label>\r\n");
      out.write("					<input type=\"text\" id=\"forma\" name=\"formaPago\"  class=\"form-control mb-3\" placeholder=\"forma de pago\" required>\r\n");
      out.write("					</div>\r\n");
      out.write("					\r\n");
      out.write("					<div class=\"col-3\">\r\n");
      out.write("					\r\n");
      out.write("					\r\n");
      out.write("					<label for=\"tartTitu\">Titular de la tarjeta:</label>\r\n");
      out.write("					<input type=\"text\" id=\"tarTitu\" name=\"tarjtitular\"class=\"form-control mb-3\" placeholder=\"Titular de la tarjeta\" required>\r\n");
      out.write("					\r\n");
      out.write("					<label for=\"tartNum\">Numero de la tarjeta:</label>\r\n");
      out.write("					<input type=\"text\" id=\"tarjNum\" name=\"tarjNum\" class=\"form-control mb-3\" placeholder=\"Numero de la tarjeta\" required>\r\n");
      out.write("					\r\n");
      out.write("					<label for=\"tarjVto\">Vencimiento de la tarjeta:</label>\r\n");
      out.write("					<input type=\"text\" id=\"tarjVto\" name=\"tarjVto\" class=\"form-control mb-3\" placeholder=\"Vencimiento de la tarjeta\" required>\r\n");
      out.write("					\r\n");
      out.write("					<label for=\"tarjClave\">Clave de la tarjeta:</label>\r\n");
      out.write("					<input type=\"text\" id=\"tarjClave\" name=\"tarjClave\" class=\"form-control mb-3\" placeholder=\"Clave de la tarjta\" required>\r\n");
      out.write("			\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("					<input type=\"submit\" value=\"Enviar\" class=\"btn btn-outline-primary text-dark mb-3 text-center\">\r\n");
      out.write("				</form>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div id=\"mensaje\" ></div>\r\n");
      out.write("	    	");
 
	    		String mensaje=request.getParameter("mensaje");
	    		if(mensaje!=null){
	    			out.println("<div class='bg-danger text-center my-1 p-2 '>");
	    			out.println(mensaje);	
	    			out.println("</div>");
	    		}
	    		
	    	
      out.write("				\r\n");
      out.write("    	</div>\r\n");
      out.write("		\r\n");
      out.write("	</div>\r\n");
      out.write("	\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script src=\"js/registro.js\" ></script>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
      out.write("	");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
