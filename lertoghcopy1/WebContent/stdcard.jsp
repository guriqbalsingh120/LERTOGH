


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="myconnection.connection" %>
  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Courses</title>

</head>
<style>

.a{

-webkit-box-shadow: 1px 1px 12px -3px rgba(0,0,0,0.75);
-moz-box-shadow: 1px 1px 12px -3px rgba(0,0,0,0.75);
box-shadow: 1px 1px 12px -3px rgba(0,0,0,0.75);
}

</style>
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
	<div class=" col-lg-4 col-md-6  col-12 mt-2 " >
	  <div class="card mt-2 a " style="width:15rem;  padding:5px; text-align:center;">

 <center><img src="<%=set.getString("logo") %>" class="card-img-top img-fluid rounded-circle" style=" height:150px; width:150px;"></center> 

  <div class="card-body">
     <h5 class="card-title" style=" text-transform: uppercase;"><%=set.getString("title") %></h5>
 
 <dt>Course duration</dt><dd><%=set.getString("dt") %></dd>
   <dt>Course Fees</dt><dd><%=set.getString("fees") %></dd>
   
   
   
 
  
 
 
<a  class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#<%="course"+set.getInt("id") %>">More..</a>
 
 
	
  


<!-- Modal -->
<div class="modal fade" id="<%="course"+set.getInt("id") %>">
  <div class="modal-dialog modal-dialog-centered ">
    <div class="modal-content " style="background-image: linear-gradient(to top, #fff1eb 0%, #ace0f9 100%);">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel" style=" text-transform: uppercase;"><strong><%=set.getString("title") %></strong></h5>
       <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      
 
      <b><%=set.getString("content") %></b>
      </div>
      
       <div class="modal-footer">
        <a  class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-dismiss="modal" data-bs-target="#enroll">Enroll Now..</a>
      </div>
          
    </div></div></div>  
    </div>
 </div>
 
</div>
      
      

<div class="modal fade  " id="enroll"  >
  <div class="modal-dialog modal-dialog-centered ">
    <div class="modal-content " style="background-image: linear-gradient(to top, #fff1eb 0%, #ace0f9 100%);">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><cenetr><b>Payment</b></cenetr></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      
       <center><img src="qr.png" style="height:150px; width:150px;">
       <h5>Scan For Payment</h5>
   
       
       <a  class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-dismiss="modal" data-bs-target="#trans">Proceed..</a>
       </center> 
        
       
        </div> </div></div></div>
  
  
 

         
        
	    
<div class="modal fade  " id="trans"  >
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content a" style="background-image: linear-gradient(to top, #fff1eb 0%, #ace0f9 100%);">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Transaction Details</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="fees" method="post"  onsubmit="return confirm('Please Confirm..');">
        <div class="row">
        <div class="col-6">
        <label for="em" class="form-label">Email address</label>
        
        <input type="email" class="form-control" id="em" aria-describedby="emailHelp" name="temail">
    
       </div>
        <div class="col-6">
        <label for="cr" class="form-label">Course</label>
             <select class="form-select"  name="course" aria-label="Default select example" id="cr">
  <option selected>Select Your Course</option>
        <% try
        {
        	  cn.ps=cn.myconn().prepareStatement("select * from course");
        	  
        	  ResultSet set1 = cn.ps.executeQuery();
        	  while(set1.next())
        	  {
        
        
        %>
        
     
  <option value="<%=set1.getString("title") %>"><%=set1.getString("title") %></option>
 
   

 <%
  }
 
  }
  catch(Exception a)
  {
	  a.printStackTrace();
  }
    
   
%> </select>
    
       </div>
       
       
        <div class="col-6">
      <label for="am" class="form-label">Amount Paid</label>
      <input type="number" class="form-control" id="am" name="tamnt">
      </div>
       
        <div class="col-6">
      <label for="dt" class="form-label">Date</label>
      <input type="date" class="form-control" id="dt" name="tdt">
      </div>
       
       
      <div class="col-12">
      <label for="ps" class="form-label">Transaction ID</label>
      <input type="text" class="form-control" id="ps" name="tid">
      </div>
   
    
     
      <hr>
     
      <div class="d-grid gap-2">
  <button class="btn btn-primary" type="submit">Submit</button>
  
  
</div>
      </form> 
      
       
        </div>
       
        </div></div></div>
    
  </div> 

	 <%
  }
 
  }
  catch(Exception a)
  {
	  a.printStackTrace();
  }
    
   
%>
	

	




</body>
</html>