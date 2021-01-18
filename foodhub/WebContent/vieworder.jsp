<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" text="text/css" href="style.css">
<style>

.ad{
  background-color: blue;
  width: 550px;
  height:400px;
  border: 15px solid blue;
  padding: 140px 0;
  float:left;
  border-radius: 25px;
  text-align:center;
  margin-left: 100px;
  font-weight:bold;
}
#orders{
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
    width: 95%;
  margin-left: 40px;
  margin-right : 40px;
}

#orders td, #orders  th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align :center;
  
}

#orders tr:nth-child(even){background-color: #f2f2f2;}

#orders tr:hover {background-color: #ddd;}

#orders th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #8A2BE2;
  color: white;
}

#id
{
float:right;
}
a:hover {
  color:yellow;
}
.adt
{
color:white;
font-family: "Lucida Console", Courier, monospace;
font-size:40px;
}
li a:hover{
background-color:brown;
color:white;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
  <a class="navbar-brand" href="#">FOODHUB</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
     <li class="nav-item active">
        <a class="nav-link" href="about.html">About <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link" href="gallery.html">Gallery <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="contact.html">Contact <span class="sr-only">(current)</span></a>
      </li>
     
    </ul>
  <form class="form-inline my-2 my-lg-0">
     
     <a href="genbill.jsp" class="btn btn-success my-2 my-sm-0" >Generate BILL</a>
    </form>
</div>
</nav><br>
<br>
<table id="orders">
 <tr>
    <th>Starters</th>
    <th>Main Course</th>
    <th>Desserts</th>
  </tr>
<%
 
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodhub","root","root");
  Statement st=con.createStatement();
  String starter,maincourse,dessert;
  String email=(String)session.getAttribute("email");
  ResultSet rs=st.executeQuery("select * from place_order where email='"+email+"' ");
 
  int flag=0;
  while(rs.next())
  {
 starter=rs.getString("starter");
 maincourse=rs.getString("maincourse");
 dessert=rs.getString("dessert");
 %>
 <tr>
    <td><%=maincourse %></td>
    <td><%=starter%></td>
    <td><%=dessert%></td>
  </tr>
 <%} %>
</body></html>