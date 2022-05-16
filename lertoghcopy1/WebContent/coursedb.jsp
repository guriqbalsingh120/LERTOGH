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

#course
{

text-align:center;
}

</style>



<body class="bg">


<%@include file="adminnav.jsp" %>
<div class="conatiner" >
<div class="row" style="margin-top:70px;">
<div class="col-sm-1"></div>
<div class="col-md-10" >

<center><h4 style=" text-transform: uppercase;">All-Courses</h4><hr style="width:350px;"></center>


<div class="row">
<div class="col-sm-1">
<a class="btn btn-primary" href="admin.jsp" >Back</a></div>

<div class="col-sm-2">
<form action="dltcoursetable" method="post"><button type="submit" class="btn btn-primary">Clear-All</button></form>
</div>
</div>
<hr>

<div class="table-responsive">


<table class="table table-light table-sm table-striped table-bordered rounded " id="course">

  <thead>
    <tr>
      <th>Course ID</th>
      <th >Course Name</th>
      <th >Content</th>
      <th>Logo</th>
      <th>Duration</th>
      <th>Fees</th>
      <th>Timming</th>
      <th>Course Link</th>
      <th>Start Date</th>
        <th>Folder</th>
      <th colspan="3"><center>Action</center></th>
       
            
          
    </tr>
  </thead>
  <tbody class="table-hover">
  
  <tr>

<% 



  connection cn = new connection();
	
  

try
{
   
	cn.ps=cn.myconn().prepareStatement("select * from course");
	  
	  ResultSet set = cn.ps.executeQuery();
	  
	  while(set.next())
	    {
	    
%>
<td ><%=set.getInt("id")%></td> 
<td ><%=set.getString("title")%></td>    
<td><%=set.getString("content")	%></td>
<td><img src="<%=set.getString("logo") %>"  style="height:150px;width:150px"></td>
<td><%=set.getString("dt")	%></td>
<td><%=set.getString("fees")	%></td>
<td><%=set.getString("ctime")	%></td>
<td><%=set.getString("clink")	%></td>
<td><%=set.getString("cdate")	%></td>
<td><%=set.getString("drive")	%></td>



<td>

<form action="coursedlt" method="post" onsubmit="return confirm('Are you sure you want to Delete?');">
<input type="hidden" name="id" value="<%=set.getInt("id")%>">
<button class="btn btn-primary btn-sm" type="submit">Delete</button>

</form>

</td>
<td>


<form action="courseupdate.jsp" method="post" >
<input type="hidden" name="id" value="<%=set.getInt("id")%>">
<button class="btn btn-primary btn-sm" type="submit">Update</button>

</form>


</td>
<td>



<a href="totalstd.jsp?msg=<%=set.getString("title") %>"  class="btn btn-primary btn-sm" type="submit">Student</button>

</form>


</td>

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
</div></div>


</body>
</html>