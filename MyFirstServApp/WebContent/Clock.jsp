<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!-- @ is directive tag , page is directive that states what must be included in this page -->
<%@ page pageEncoding="ISO-8859-1"
    import = "java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clock Using JSP</title>
</head>
<body>
<%@ include file = "HelloThere.jsp" %>

The time is : <%=new Date() %>

</body>

</html>