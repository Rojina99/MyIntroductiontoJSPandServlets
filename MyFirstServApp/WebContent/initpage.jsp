<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Init JSP</title>
</head>
<body>


<%!

public void jspInit()
{
	String user = getServletConfig().getInitParameter("DefaultUser");
	ServletContext c = getServletContext();
	c.setAttribute("DefaultUser",user);
}

%>

<!--Servlet config is the value tomcat passes to us during initialization viewing parameter
in web.xml as servlet config object -->
The default user for servlet config is:
<%=
getServletConfig().getInitParameter("DefaultUser")
%>

<br>

<!--Servlet context is the object that can be used across application -->
The default user for servlet context is:
<%=
getServletContext().getAttribute("DefaultUser")
%>

</body>
</html>