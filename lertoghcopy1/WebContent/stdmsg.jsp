<%@page import="javax.websocket.Session"%>
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

.text
{

text-align:center;
}

</style>



<body class="bg">


<%@include file="stdnav.jsp" %>
<div class="conatiner" >


<div class="row" style="margin-top:70px;">
<div class="col-md-1 " ></div>
<div class="col-md-10 mt-1" >
<center><h4 style=" text-transform: uppercase;">Your-Apllications</h4><hr style="width:350px;"></center>
<a class="btn btn-primary" href="student.jsp" >Back</a>
<hr>
<div class="accordion accordion-flush  border rounded" id="accordionFlushExample">

<div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingOne">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#course" aria-expanded="false" aria-controls="flush-collapseOne">
       <strong>Courses</strong>
      </button>
    </h2>
    <div id="course" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body table-responsive-md" >
      
      



<table class="table table-sm text" style="padding:20px;" >

  <thead>
    <tr>
    <th>S.No</th>
      <th>Course</th>
      <th >Course-Status</th>
     
      
   </tr>
  </thead>
  <tbody class="table-hover">
  
  <tr>

<% connection cn = new connection();

session=request.getSession();
String semail = (String)session.getAttribute("email").toString();
int x=1,y=1;
    try
    {
    	
    	
         
    	cn.ps=cn.myconn().prepareStatement("select * from stdcs where stdemail=?");
    	cn.ps.setString(1, semail);
    	cn.rs = cn.ps.executeQuery();
    	while(cn.rs.next())
    	
    	{


%>

<td ><%=x++ %></td> 
<td ><%=cn.rs.getString("course")%></td>    
<td><%=cn.rs.getString("cstatus")	%></td>


  
   </tr>   
    
        
  
        <%}
    	
    	}
    	catch(Exception a)
    	{
    	a.printStackTrace();
    	}
    	
    
    %>
    
    </tbody></table>
    
     <div class="text">
    <form action="csdlt" method="post" onsubmit="return confirm('Are you sure you want to Delete?');">
<input type="hidden" name="stdemail" value="<%=semail %>">

<button class="btn btn-primary btn-sm" type="submit">Clear</button>

</form></div>
              </div>
    </div>
  </div>
    
     
   <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingtwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#job" aria-expanded="false" aria-controls="flush-collapseOne">
       <strong>Jobs</strong>
      </button>
    </h2>
    <div id="job" class="accordion-collapse collapse" aria-labelledby="flush-headingtwo" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body table-responsive-md">
      


<table class="table table-sm text" style="padding:20px;">

  <thead>
    <tr>
    <th>S.No</th>
      <th>Job-Title</th>
      <th >Application-Status</th>
      
     
      
   </tr>
  </thead>
  <tbody class="table-hover">
  
  <tr>

<% 

    try
    {
    	
    	
    	cn.ps=cn.myconn().prepareStatement("select * from stdjs where stdemail=?");
    	cn.ps.setString(1, semail);
    	cn.rs = cn.ps.executeQuery();
    	while(cn.rs.next())
    	
    	{


%>

<td ><%=y++ %></td> 
<td ><%=cn.rs.getString("job") %></td>    
<td><%=cn.rs.getString("jstatus") %></td>


  
   </tr>   
    
        
    
    
        <%}
    	
    	}
    	catch(Exception a)
    	{
    	a.printStackTrace();
    	}
    	
    
    %></tbody></table>
    <div class="text">
    <form action="jsdlt" method="post" onsubmit="return confirm('Are you sure you want to Delete?');">
<input type="hidden" name="stdemail" value="<%=semail %>">

<button class="btn btn-primary btn-sm" type="submit">Clear</button>

</form></div>
    </div>
    </div>
  </div>
    


<div class="col-md-1 " ></div>
</div></div>

</div></div>
</body>
</html>