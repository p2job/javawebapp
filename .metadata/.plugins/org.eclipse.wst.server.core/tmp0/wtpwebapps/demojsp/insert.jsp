<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>Insert Employee</title>
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
        <form action="insert_data.jsp" method="post">
            <div class="form-row">
                <div class="form-group col-md-2">
                    <label for="inputName_Prefix">คำนำหน้า</label>
                    <select id="Name_Prefix" class="form-control" name="Name_Prefix">
                        <option selected>เลือก..</option>
                        <option value="นาย">นาย</option>
                        <option value="นาง">นาง</option>
                        <option value="นางสาว">นางสาว</option>
                    </select>
                </div>
                <div class="form-group col-md-5">
                    <label for="inputFirst_Name">ชื่อ</label>
                    <input type="text" class="form-control" id="First_Name" name="First_Name">
                </div>
                <div class="form-group col-md-5">
                    <label for="inputLast_Name">นามสกุล</label>
                    <input type="text" class="form-control" id="Last_Name" name="Last_Name">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-5">
                    <label for="inputFirst_Name_Eng">First Name</label>
                    <input type="text" class="form-control" id="First_Name_Eng" name="First_Name_Eng">
                </div>
                <div class="form-group col-md-5">
                    <label for="inputLast_Name_Eng">Last Name</label>
                    <input type="text" class="form-control" id="Last_Name_Eng" name="Last_Name_Eng">
                </div>
                <div class="form-group col-md-2">
                    <label for="inputSex">เพศ</label>
                    <select id="Sex" class="form-control" name="Sex">
                        <option selected>เลือก...</option>
                        <option value="M">ชาย</option>
                        <option value="F">หญิง</option>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3">
                    <label for="inputBirth_Date">วันเกิด</label>
                    <input type="date" class="form-control" id="Birth_Date" name="Birth_Date">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputNationality">สัญชาติ</label>
                    <input type="text" class="form-control" id="Nationality" name="Nationality">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputRace">เชื่อชาติ</label>
                    <input type="text" class="form-control" id="Race" name="Race">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputReligion">ศาสนา</label>
                    <input type="text" class="form-control" id="Religion" name="Religion">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3">
                    <label for="inputPlace_of_Birth">สถานที่เกิด</label>
                    <input type="text" class="form-control" id="Place_of_Birth" name="Place_of_Birth">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputAge">อายุ</label>
                    <input type="text" class="form-control" id="Age" name="Age">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputWeight">น้ำหนัก</label>
                    <input type="text" class="form-control" id="Weight" name="Weight">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputHeight">ส่วนสูง</label>
                    <input type="text" class="form-control" id="Height" name="Height">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-12">
                    <label for="inputPresent_Address">ที่อยู่ปัจจุบัน</label>
                    <input type="text" class="form-control" id="Present_Address" name="Present_Address">
                </div>
            </div>
            <div class="form-row">
            <div class="form-group col-md-3">
                    <label for="inputHome_Tel">โทรศัพท์บ้าน</label>
                    <input type="text" class="form-control" id="Home_Tel" name="Home_Tel">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputMobile">มือถือ</label>
                    <input type="text" class="form-control" id="Mobile" name="Mobile">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputE-mail">ที่อยู่อีเมล์</label>
                    <input type="text" class="form-control" id="E-mail" name="E-mail">
                </div>
                <% 
                Connection connect = null;
            	ResultSet rec = null;
            	Statement s= null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connect =  DriverManager.getConnection("jdbc:mysql://localhost/employee" +
				"?user=root&password=");
		s = connect.createStatement();
		String sql="SELECT * FROM department";
		rec=s.executeQuery(sql);

		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		out.println(e.getMessage());
		e.printStackTrace();
	}
	
	%>
                <div class="form-group col-md-3">
                    <label for="inputDepartment_ID">แผนก</label>
                    <select id="Department_ID" class="form-control" name="Department_ID">
                        <option selected>เลือก..</option>
                        <% while((rec!=null)&&(rec.next())) {%>
                        <option value="<%= rec.getInt("Department_ID") %>"><%= rec.getString("Department_Name") %></option>
                         <% } %>
                    </select>
                </div>
            </div>
            <button type="submit" class="btn btn-primary">save</button>
        </form>
    </div>


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>

</html>