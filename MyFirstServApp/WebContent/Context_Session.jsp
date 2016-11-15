<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Context,Session Objects</title>
</head>
<body>

	<%
	String username = request.getParameter("userName");
	//request.getSession() is also applicable
	//as implicit request object we also have implicit session object
	
	
	if(username!=null)
	{	
	session.setAttribute("sessionName" , username);//session object for session
	
//  application.setAttribute("contextName", username);//application object for context

	pageContext.setAttribute("pageContextName" , username); //Available only for JSP
			
	pageContext.setAttribute("contextName",username,PageContext.APPLICATION_SCOPE);//Can use
							//Same Object for Different scopes like request , session , apllication
	}
	%>
<br>
	The username of the user is : <%= username %>
<br>
	The Session username of the user is : <%= session.getAttribute("sessionName") %>
<br>
	//Returns the value associated with attribute
	The Context attribute username of the user is : <%= pageContext.findAttribute("contextName") %>	
<br>
	The Context username of the user is : <%= application.getAttribute("contextName") %>
<br>
	The Page Context username of the user is : <%= pageContext.getAttribute("pageContextName") %>

</body>
</html>