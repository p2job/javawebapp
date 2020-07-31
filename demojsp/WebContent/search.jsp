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
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="insert.jsp">เพิ่มประวัติ</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0" name="frmSearch" method="post" action="search.jsp">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" id="Keyword" name="Keyword">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
<div class="container">

<table class="table">
  <thead class="thead-dark">
  <% 
                Connection connect = null;
            	ResultSet rec = null;
            	Statement s= null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connect =  DriverManager.getConnection("jdbc:mysql://localhost/employee" +
				"?user=root&password=");
		s = connect.createStatement();
		String sql="SELECT * FROM employee emp LEFT JOIN department de ON de.Department_ID = emp.Department_ID"+
				"WHERE emp.First_Name LIKE '%"+request.getParameter("Keyword")+"%' OR emp.Last_Name '%"+request.getParameter("Keyword")+"%'"+
				"OR emp.Sex '%"+request.getParameter("Keyword")+"%' ORDER BY emp.ID ASC";
		rec=s.executeQuery(sql);

		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		out.println(e.getMessage());
		e.printStackTrace();
	}
	
	%>
    <tr>
      <th scope="col">ลำดับ</th>
      <th scope="col">ชื่อ</th>
      <th scope="col">นามสกุล</th>
      <th scope="col">แผนก</th>
    </tr>
  </thead>
  <tbody>
  <% while((rec!=null)&&(rec.next())) {%>
    <tr>
      <th scope="row"><%= rec.getString("ID") %></th>
      <td><a href="edit.jsp?ID=<%= rec.getString("ID") %>"><%= rec.getString("Name_Prefix") %><%= rec.getString("First_Name") %></a></td>
      <td><%= rec.getString("Last_Name") %></td>
      <td><%= rec.getString("Department_Name") %></td>
    </tr>
    <% } %>
  </tbody>
</table>
</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>