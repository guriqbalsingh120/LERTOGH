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


<%@include file="adminnav.jsp"%>
<div class="conatiner">
<div class="row" style="margin-top:70px;">
<div class="col-sm-1"></div>
<div class="col-md-10" >

<center><h4 style=" text-transform: uppercase;">Student-courses</h4><hr style="width:350px;"></center>
<a class="btn btn-primary" href="admin.jsp" >Back</a>
<hr>



<div class=" table-responsive-sm" >


<table class="table table-light table-sm table-striped table-bordered rounded " id="course">

  <thead>
    <tr>
      <th>S No.</th>
      <th >Student Email</th>
      <th >Course</th>
      
      

       
            
          
    </tr>
  </thead>
  <tbody class="table-hover">
  
  <tr>

<% 


 String msg = request.getParameter("msg");
 
  connection cn = new connection();
	
  
int x=1;
try
{
   
	cn.ps=cn.myconn().prepareStatement("select * from stdcourse where course=? ");
	  cn.ps.setString(1, msg);
	  ResultSet set = cn.ps.executeQuery();
	  
	  while(set.next())
	    {
	    
%>
<td ><%=x++ %></td> 
<td ><%=set.getString("stdemail")%></td>    
<td><%=set.getString("course")	%></td>



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



</div><div class="col-sm-1"></div>
</div>
   </div>                                       



</body>
</html>