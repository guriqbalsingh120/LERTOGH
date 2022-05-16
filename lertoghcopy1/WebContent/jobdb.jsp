4<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.*" %>
    <%@page import="myconnection.connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Jobs</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 <script src="https://kit.fontawesome.com/878bdcf6cb.js" crossorigin="anonymous"></script>
 
<a target="_blank" href="https://icons8.com/icon/q68XWFSclEPZ/home"></a><a target="_blank" href="https://icons8.com"></a>
</head>


<style type="text/css">

#course
{

text-align:center;
}

</style>



<body class="bg">


<%@include file="adminnav.jsp" %>
<div class="conatiner-fluid" >

<div class="row" style="margin-top:70px;">
<div class="col-md-1 " ></div>
<div class="col-md-10 mt-1" >

<center><h4 style=" text-transform: uppercase;">all-jobs</h4><hr style="width:350px;"></center>

<div class="row">
<div class="col-sm-1">
<a class="btn btn-primary" href="admin.jsp" >Back</a></div>

<div class="col-sm-2">
<form action="dltjobtable" method="post"><button type="submit" class="btn btn-primary">Clear-All</button></form>
</div>
</div>
<hr>


<div class=" table-responsive" >


<table class="table table-light table-sm table-striped table-bordered rounded " id="course">

  <thead>
    <tr>
      <th>Job Id</th>
      <th >Job Name</th>
      <th >Discription</th>
      <th>Skills</th>
      <th>Package</th>
     
      <th>Experience</th>
      
      <th colspan="2"><center>Action</center></th>
       
            
          
    </tr>
  </thead>
  <tbody class="table-hover">
  
  <tr>

<% 



  connection cn = new connection();
	
  

try
{
   
	cn.ps=cn.myconn().prepareStatement("select * from carrers");
	  
	  ResultSet set = cn.ps.executeQuery();
	  
	  while(set.next())
	    {
	    
%>
<td ><%=set.getInt("id") %></td> 
<td ><%=set.getString("job") %></td>    
<td><%=set.getString("about") %></td>
<td><%=set.getString("skill") %></td>
<td><%=set.getString("pack") %></td>
<td><%=set.getString("exp")	%></td>

<td>
<form action="jobdlt" method="post" onsubmit="return confirm('Are you sure you want to Delete?');">
<input type="hidden" name="id" value="<%=set.getInt("id")%>">
<button class="btn btn-primary btn-sm" type="submit">Delete</button>

</form>

</td>

<td><a href="jobapp.jsp?msg=<%=set.getInt("id")%>&title=<%=set.getString("job")%>" class="btn btn-sm btn-primary">Applicants</a></td>

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



</div><div class="col-md-1 " ></div>
</div>

</div>
       


</body>
</html>