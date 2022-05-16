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

<center><h4 style=" text-transform: uppercase;">New-Requests</h4><hr style="width:350px;"></center>
<a class="btn btn-primary" href="admin.jsp" >Back</a>
<hr>




<div class="table-responsive">


<table class="table table-light table-sm table-striped table-bordered rounded " id="std" >

  <thead>
    <tr>
      <th>ID</th>
         <th>Student Email</th>
      <th >Course Name</th>
      <th >Amount Paid</th>
        <th >Date</th>
          <th >Transaction ID</th>
            <th colspan="2" >Action</th>
           
      
            
          
    </tr>
  </thead>
  <tbody class="table-hover">
  
  <tr>

<% 



  connection cn = new connection();
	
  

try
{
   
	cn.ps=cn.myconn().prepareStatement("select * from fees ");
	  
	  ResultSet set = cn.ps.executeQuery();
	  
	  while(set.next())
	    {
	    
%>
<td ><%=set.getInt("id")%></td> 
<td ><%=set.getString("stdemail")%></td>    
<td><%=set.getString("course")	%></td>
<td><%=set.getString("amount")	%></td>
<td><%=set.getString("transid")	%></td>
<td><%=set.getString("date")	%></td>




<td>

<form action="stdconf" method="post" onsubmit="return confirm('Are you sure you want to Confirm?');">
<input type="hidden" name="id" value="<%=set.getInt("id") 	%>">
<input type="hidden" name="email" value="<%=set.getString("stdemail") 	%>">
<input type="hidden" name="cor" value="<%=set.getString("course") 	%>">
<input type="hidden" name="amnt" value="<%=set.getString("amount") 	%>">
<input type="hidden" name="tid" value="<%=set.getString("transid") 	%>">
<input type="hidden" name="dt" value="<%=set.getString("date") 	%>">
<button class="btn btn-primary btn-sm" type="submit">Confirm</button>
</form>
</td>


<td>
<form action="feesdlt" method="post" onsubmit="return confirm('Are you sure you want to Delete?');">
<input type="hidden" name="email" value="<%=set.getString("stdemail")%>">

<input type="hidden" name="id" value="<%=set.getInt("id") 	%>">
<input type="hidden" name="cor" value="<%=set.getString("course") 	%>">
<input type="hidden" name="amnt" value="<%=set.getString("amount") 	%>">
<input type="hidden" name="tid" value="<%=set.getString("transid") 	%>">
<input type="hidden" name="dt" value="<%=set.getString("date") 	%>">
<button class="btn btn-primary btn-sm" type="submit">delete</button>
</form></td>

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
   </div> </div>                                      



</body>
</html>