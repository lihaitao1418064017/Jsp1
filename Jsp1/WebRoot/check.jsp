<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'check.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <%
     	//货物客户端输入的姓名和密码
     	String uname=request.getParameter("uName");
     	String upassword=request.getParameter("uPassword");
     	if("Tom".equals(uname)&&"123".equals(upassword))
     	{
      %>
     	<jsp:forward page="Welcome.jsp">
     	<jsp:param value="<%=uname%>" name="name"/>
     	</jsp:forward>
     <%
     }
     else{
      %>
     <jsp:forward page="error.jsp"/>
     <%} %>
  </body>
</html>
