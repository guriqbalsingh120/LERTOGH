<%@page import="javax.websocket.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.*" %>
    <%@page import="myconnection.connection" %>
   
       <%@page import=" javax.servlet.http.HttpSession" %>
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

<%@include file="stdnav.jsp" %>




<div class="conatiner" >
<div class="row" style="margin-top:70px;">

<div class="col-sm-1"></div>
<div class="col-md-10" >
<center><h4 style=" text-transform: uppercase;">your-courses</h4><hr style="width:350px;"></center>
<a class="btn btn-primary" href="student.jsp" >Back</a>
<hr>


<div class="table-responsive">


<table class="table table-light table-sm table-striped table-bordered rounded " id="course">

  <thead>
    <tr>
      <th>Courses</th>
      <th >Duration</th>
         <th >Start-Date</th>
            <th >Course-Time</th>
              <th >Course-Link</th>
               <th >Course-Data</th>
      
           
    </tr>
  </thead>
  <tbody class="table-hover">
  
  <tr>

<% 

 connection cn = new connection();
	
session = request.getSession();
String email = (String)session.getAttribute("email").toString();
  

try
{
	
	
   
	cn.ps=cn.myconn().prepareStatement("select * from stdcourse where stdemail=?");
	cn.ps.setString(1,email);
	  ResultSet set = cn.ps.executeQuery();
	  
	  while(set.next())
	    {
	        String cors = set.getString("course");
%>
<td ><%=set.getString("course")%></td> 
   
   <%     
    
   	cn.ps=cn.myconn().prepareStatement("select * from course where title=?");
   	cn.ps.setString(1,cors);
   	  ResultSet set1 = cn.ps.executeQuery();
   	  
   	  while(set1.next())
   	    { %>
     <td ><%=set1.getString("dt")%></td> 
     <td ><%=set1.getString("cdate")%></td> 
     <td ><%=set1.getString("ctime")%></td> 
     <td ><a href="<%=set1.getString("clink")%>" class="btn btn-sm btn-primary "><%=set1.getString("clink")%></a></td> 
      <td><a href="<%=set1.getString("drive") %>" class="btn btn-sm btn-primary">Drive</a></td>
     <% 
}

%>
    
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