<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.*" %>
    <%@page import="myconnection.connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" href="js/bootstrap.min.js"></script>
</head>
<body class="bg">


<%@include file="adminnav.jsp" %>
<div class="conatiner" >
<div class="row" style="margin-top:70px;">
<div class="col-sm-1"></div>
<div class="col-md-10" >


<center><h4 style=" text-transform: uppercase;">course-update</h4><hr style="width:350px;"></center>
<a class="btn btn-primary" href="admin.jsp" >Back</a>
<hr>
    
    <div class="row" style="margin:30px" >
     <div class="col">
    <%
    
    try
    {
         String id=request.getParameter("id");
         int id1 = Integer.parseInt(id);
         
         
         connection cn = new connection();
         cn.ps=cn.myconn().prepareStatement("select * from course where id=?");
         cn.ps.setInt(1,id1);
         
         ResultSet set=cn.ps.executeQuery();
         
         while(set.next())
         {
        	 
         
       %>
    
    
          <form action="courseupd"  method="post" enctype="multipart/form-data" class="border rounded border-dark bg-white "  style="padding:10px;" onsubmit="return confirm('Are you sure you want to Update?');" >
  <div class="row">
  <div class="col-md-6">
    <label  class="form-label" for="em">Course Name</label>
    <input type="text" class="form-control"  id="em" name="head"  value="<%=set.getString("title")%>">
   </div>
   
  <div class="col-md-6">
    <label for="p2" class="form-label">Introduction</label>
    <textarea type="text" class="form-control" id="p2" name="cont"><%=set.getString("content")%></textarea>
  </div>
  
 
  
  <div class="col-md-8">
   
    <div class="row">
    <div class="col-md-6">
    
  <img src="<%=set.getString("logo") %>" class="form-control" id="logo" style="height:200px; width:300px;">
  </div>
  <div class="col-md-6">
  <p class="mt-5"> If u dont want to change LOGO then select currunt logo in files .<br>
      your currunt logo is = <%=set.getString("logo")%> .
    </p>
  </div>
  </div>
  
  </div>
  
  <div class="col-md-4">
    <label for="p1" class="form-label mt-5">Change Logo</label>
    <input type="file" id="p1" class="form-control"  name="file" >
    
    
  </div>
  
   
  <div class="col-md-6">
    <label for="d1" class="form-label">Start Date</label>
    <input type="date" id="d1" class="form-control"  name="date"  value="<%=set.getString("cdate")%>">

  </div>
  
   <div class="col-md-6">
    <label for="p" class="form-label">Duration</label>
    <input type="text" class="form-control" id="p" name="dt" value="<%=set.getString("dt")%> ">
  </div>
  
  
  <div class="col-md-4">
    <label for="p1" class="form-label">Fees</label>
    <input type="text" id="p1" class="form-control"  name="fees"  value="<%=set.getString("fees")%>">
     <input type="hidden" class="form-control"  name="id"  value="<%=id1 %>">
  </div>
  
  
  <div class="col-md-4">
    <label for="t1" class="form-label">Timming</label>
    <input type="time" id="t1" class="form-control"  name="time"  value="<%=set.getString("ctime")%>">
   
  </div>
  
  
  <div class="col-md-4">
    <label for="l1" class="form-label">Link</label>
    <input type="text" id="l1" class="form-control"  name="link"  value="<%=set.getString("clink")%>">
   
  </div>
  
  <div class="col-12">
    <label for="l1" class="form-label">Drive</label>
    <input type="text" id="l1" class="form-control"  name="drive"  value="<%=set.getString("drive")%>">
   
  </div>
 
 
   <div class="col">
  <input class="btn btn-primary mt-2" type="reset" value="Reset">
  <center><button class="btn btn-primary" type="submit">Submit</button></center>
</div>

<%   }
         }
         
         catch(Exception a)
         {
         a.printStackTrace();
         }
         
         %>

</form>
        </div>


</div></div></div></div>


</body>
</html>