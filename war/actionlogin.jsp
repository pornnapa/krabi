<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<%
	String uname = "bee";
	String pass = "123";
	String firstname = "pornnapa";

	String userName = request.getParameter("userName");
	String pwd = request.getParameter("pwd");

	//out.println("username = "+userName+" ,password = "+pwd);

	//Query database
	out.println("<h1>Welcome to Krabi</h1>");
	if (uname.equals(userName) && pass.equals(pwd)) {
		out.println("ยินดีต้อนรับสู่จังหวัคกระบี่");	
		session.setAttribute("username_ses" ,uname);  //เก็บ username ไว้ใน  sessin oject
		session.setAttribute("firstname_ses" ,firstname);
		response.sendRedirect("index.jsp");
	}else{
		out.println("กรุณาตรวจสอบ username และ password อีกครั้ง!!!");%><br><br>
		<a href="formlogin.html"><button class="btn btn-primary" data-inline="true">Sign in</button></a>
<%}%>