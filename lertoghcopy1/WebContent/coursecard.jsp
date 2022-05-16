
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="myconnection.connection" %>
  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Courses</title>


<style>

.ab{

-webkit-box-shadow: 1px 1px 12px -3px rgba(0,0,0,0.75);
-moz-box-shadow: 1px 1px 12px -3px rgba(0,0,0,0.75);
box-shadow: 1px 1px 12px -3px rgba(0,0,0,0.75);
}
</style>

</head>


<body >





<% 



  connection cn = new connection();
	
  

try
{
   
	  
 // Class.forName("com.mysql.jdbc.Driver");
  //Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lertogh","root","root");
 
  
   cn.ps=cn.myconn().prepareStatement("select * from course");
  
  ResultSet set = cn.ps.executeQuery();
  %><div class="row " style="margin-top:10px;"><% 
  while(set.next())
  {   %>
	<div class=" col-lg-4 col-md-6 col-12 mt-2 " >
	  <div class="card mt-2 hover ab " style="width:15rem;  padding:10px; text-align:center; border:none;">

  <center><img src="<%=set.getString("logo") %>" class="card-img-top img-fluid rounded-circle "   style="height:120px;width:120px"></center>

  <div class="card-body" >
 
    <h2 class="card-title" style=" text-transform: uppercase;"><%=set.getString("title") %></h5>
    
  <dt>Course duration</dt><dd><%=set.getString("dt") %></dd>
   <dt>Course Fees</dt><dd><%=set.getString("fees") %></dd>
   
   
 
 
<a  class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#<%="course"+set.getInt("id") %>">More..</a>
 </h2></div></div></div>


<!-- Modal -->
<div class="modal fade" id="<%="course"+set.getInt("id") %>" >
  <div class="modal-dialog modal-dialog-centered ">
    <div class="modal-content a" style="background-image: linear-gradient(to top, #fff1eb 0%, #ace0f9 100%);">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel" style=" text-transform: uppercase;"><strong><%=set.getString("title") %></strong></h5>
       <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <b><%=set.getString("content") %></b>
      </div>
      
    </div>
  </div>
</div>
 


  

        


<%
  }
 
  }
  catch(Exception a)
  {
	  a.printStackTrace();
  }
	
	
	%>

	
	
</div> 
	




</body>
</html>