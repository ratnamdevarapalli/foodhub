
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<style>

.ad{
  background-color: blue;
  width: 300px;
  border: 15px solid blue;
  padding: 20px;
  float:left;
  margin-left:40px;
font-weight:bold;
}
input[type=text], select, textarea {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.ft {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
#id
{
float:right;
}
a:hover {
  color:white ;
}
.adt
{
color:white;
font-family: "Lucida Console", Courier, monospace;
font-size:20px;
}
li a:hover{
background-color:brown;
color:white;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
  <a class="navbar-brand" href="home.jsp">FOODHUB</a>
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
   
</div>
</nav>
<br><br>
<center><h3 font-family: "Brush Script MT" style="font-weight:bold">Daily Report</h3><br><br>

<div class="ft">
  <form action="view_daily_report.jsp">
    <label for="date1" style="font-weight:bold;font-size:20px;color:red">Search Table by Date</label><br><br>
    <input type="date" id="date1" name="date1">
    <br><br>
    <input type="submit" value="Search">
  </form>
</div>

</center>
</body>
</html>