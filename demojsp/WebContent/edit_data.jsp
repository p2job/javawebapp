  <%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<% 
	Connection connect = null;
	Statement s= null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connect =  DriverManager.getConnection("jdbc:mysql://localhost/employee" +
				"?user=root&password=");
		s = connect.createStatement();
		String sql="UPDATE `employee` SET `Name_Prefix`='"+request.getParameter("Name_Prefix")+"',`First_Name`='"+request.getParameter("First_Name")+"',`Last_Name`='"+request.getParameter("Last_Name")+"',`First_Name_Eng`='"+request.getParameter("First_Name_Eng")+"',"+
				"`Last_Name_Eng`='"+request.getParameter("Last_Name_Eng")+"',`Sex`='"+request.getParameter("Sex")+"',`Birth_Date`='"+request.getParameter("Birth_Date")+"',`Nationality`='"+request.getParameter("Nationality")+"',`Race`='"+request.getParameter("Race")+"',`Religion`='"+request.getParameter("Religion")+"',"+
				"`Place_of_Birth`='"+request.getParameter("Place_of_Birth")+"',`Age`='"+request.getParameter("Age")+"',`Weight`='"+request.getParameter("Weight")+"',`Height`='"+request.getParameter("Height")+"',`Present_Address`='"+request.getParameter("Present_Address")+"',`Home_Tel`='"+request.getParameter("Home_Tel")+"',"+
				"`Mobile`='"+request.getParameter("Mobile")+"',`E-mail`='"+request.getParameter("E-mail")+"',`Department_ID`='"+request.getParameter("Department_ID")+"' WHERE ID = '"+request.getParameter("ID")+"'";
		s.execute(sql);
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		out.println(e.getMessage());
		e.printStackTrace();
	}
	
	%>
	<script langauge="javascript">
	alert('บันทึกข้อมูลของท่านเรียบร้อยแล้ว');
	window.location='index.jsp'
	</script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>