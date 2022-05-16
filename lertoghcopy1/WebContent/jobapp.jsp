<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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


<%@include file="adminnav.jsp"%>
<div class="conatiner">
<div class="row" style="margin-top:70px;">
<div class="col-sm-1"></div>
<div class="col-md-10" >


<center><h4 style=" text-transform: uppercase;">New-Requests</h4><hr style="width:350px;"></center>
<a class="btn btn-primary" href="admin.jsp" >Back</a>
<hr>
<div class="table-responsive" >
<table class="table table-light table-lg table-striped table-bordered rounded " id="course">

  <thead>
    <tr>
    <th>S.No</th>
     <th>Student Email</th>
        <th >Collage</th>
      <th >Education</th>
      <th >Percentage/CGPA</th>
      <th>Skills</th>
      
       <th>Experience</th>
    <th>Resume</th>
      
      <th colspan="3"><center>Action</center></th>
       
            
          
    </tr>
  </thead>
  <tbody class="table-hover">
  
  <tr>

<% 
 



  connection cn = new connection();

    int id = Integer.parseInt(request.getParameter("msg"));
    String job = request.getParameter("title");
  

  
try
{

	
	cn.ps=cn.myconn().prepareStatement("select * from jobapp where jobid=?");
	 cn.ps.setInt(1,id); 
	  ResultSet set = cn.ps.executeQuery();
	  
	  while(set.next())
	    {
	    
%>
<td ><%=set.getInt("id") %></td> 
<td ><%=set.getString("stdemail") %></td>  


<td><%=set.getString("clg") %></td>
<td><%=set.getString("edu") %></td>
<td><%=set.getString("marks")	%></td>
<td><%=set.getString("skill")	%></td>
<td><%=set.getString("exp")	%></td>
<td><a href="<%=set.getString("resume") %>" class="btn btn-sm btn-outline-primary">Resume</a></td>

<td>
<form action="appdlt" method="post" onsubmit="return confirm('Are you sure you want to Delete?');">
<input type="hidden" name="stdemail" value="<%=set.getString("stdemail")%>">
<input type="hidden" name="sid" value="<%=set.getInt("id")%>">
<input type="hidden" name="id" value="<%=id %>">
<input type="hidden" name="job" value="<%=job %>">
<button class="btn btn-primary btn-sm" type="submit">Delete</button>

</form>
</td>

<td>
<form action="appconf" method="post" onsubmit="return confirm('Are you sure you want to Confirm?');">
<input type="hidden" name="stdemail" value="<%=set.getString("stdemail")%>">
<input type="hidden" name="sid" value="<%=set.getInt("id")%>">
<input type="hidden" name="job" value="<%=job %>">
<button class="btn btn-primary btn-sm" type="submit">Confirm</button>

</form>
</td>


<td><a href="mailto:<%=set.getString("stdemail") 	%>" class="btn btn-sm btn-primary">Email</a></td>



</tr>

<% 
}
}
catch(Exception a)
{
	  a.printStackTrace();
}
%>
	  
</tbody></table></div></div>

<div class="col-sm-1"></div>

</div>
</div>
                                          



</body>
</html>