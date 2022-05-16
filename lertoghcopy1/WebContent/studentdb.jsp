<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.*" %>
    <%@page import="myconnection.connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 <script src="https://kit.fontawesome.com/878bdcf6cb.js" crossorigin="anonymous"></script>
 
<a target="_blank" href="https://icons8.com/icon/q68XWFSclEPZ/home"></a><a target="_blank" href="https://icons8.com"></a>
</head>


<style type="text/css">

#std
{
text-align:center;
}
</style>


<body class="bg">


<%@include file="adminnav.jsp"%>
<div class="conatiner">
<div class="row" style="margin-top:70px;">
<div class="col-sm-1"></div>
<div class="col-md-10" >

<center><h4 style=" text-transform: uppercase;">all-users</h4><hr style="width:350px;"></center>

<div class="row">
<div class="col-sm-1">
<a class="btn btn-primary" href="admin.jsp" >Back</a></div>

<div class="col-sm-2">
<form action="dltstdtable" method="post"><button type="submit" class="btn btn-primary">Clear-All</button></form>
</div>
</div>
<hr>


<div class="table-responsive" >


<table class="table table-light table-striped table-bordered rounded  table-sm" id="std">

  <thead>
    <tr>
      <th>Student ID</th>
      <th >First Name</th>
      <th >Last Name</th>
        <th >D.O.B</th>
          <th >Gender</th>
            <th >Collage</th>
           
      <th >Email</th>
       <th >Mobile No.</th>
        <th >Address</th>
       
          <th >Semester</th>
         
           <th >Security Question</th>
            <th >Answer</th>
          
            <th colspan="2"><center>Action</center></th>
            
          
    </tr>
  </thead>
  <tbody class="table-hover">
  
  <tr>

<% 



  connection cn = new connection();
	
  

try
{
   
	cn.ps=cn.myconn().prepareStatement("select * from student");
	  
	  ResultSet set = cn.ps.executeQuery();
	  
	  while(set.next())
	    {
	    
%>
<td ><%=set.getInt("id")%></td> 
<td ><%=set.getString("fname")%></td>    
<td><%=set.getString("lname")	%></td>
<td><%=set.getString("age")	%></td>
<td><%=set.getString("gender")	%></td>
<td><%=set.getString("collage")	%></td>
<td><%=set.getString("email") 	%></td>
<td><%=set.getString("mob")	%></td>
<td><%=set.getString("adrs")	 	%></td>
<td><%=set.getString("sem")	 %></td>

<td><%=set.getString("secq") 	%></td>
<td><%=set.getString("ans") 	%></td>



<td>

<form action="stddelete" method="post" onsubmit="return confirm('Are you sure you want to Delete?');">
<input type="hidden" name="id" value="<%=set.getInt("id")%>">
<button class="btn btn-primary btn-sm" type="submit">delete</button>
</form>
</td>
<td><a href="mailto:<%=set.getString("email") 	%>" class="btn btn-sm btn-primary">Email</a></td>

</tr>

<% 
}
}
catch(Exception a)
{
	  a.printStackTrace();
}
%>
	  
</tbody></table></div>



</div>
<div class="col-sm-1"></div>
</div>
   </div>                                       



</body>
</html>