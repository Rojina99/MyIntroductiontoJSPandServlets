<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>First JSP Code</title>
</head>
<body>

<h3>Getting Familiar with JSP</h3>

<!-- For Declaring Method -->

	<%! 
	public int add(int a , int b)
	{
	return a+b;
	}
	%>


	<%
	/* You will have error for doing this	
	
	public int add(int a , int b)
	{
	return a+b;
	}
	
	Because all other values are going inside doGet/Post method and we cannot declare a method inside
	a method.
	
	*/
	
	int i = 7;
	int j = 91;
	int k = i + j;
	out.println("\n"+k);
	%>

<!-- Shortcut method -->

<p>The value of K is: <%=k %></p>

<%
 
k = add(7,92);


%>

<p>The value of K is: <%=k %></p>

<%
for(int c = 1 ; c <= 5 ; c++)

out.println("<br>"+c);

%>

<br>


<!-- Same as above loop rather than above where static content cannot be printed using html  -->

<%
for(int c = 1 ; c <= 5 ;c++)
{

%>
	
	<br> i = <%= c%>

<%

}

%>
</body>
</html>