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

#course
{

text-align:center;
}

</style>



<body class="bg">


<div class="row-fluid">
<%@include file="navbar.jsp" %>
</div>

<div class="conatiner" >


<div class="row" style="margin-top:70px;">
<div class="col-md-1 " ></div>
<div class="col-md-10 mt-1" >
<center><h4 style=" text-transform: uppercase;">career opportunities</h4><hr style="width:350px;"></center>

<a class="btn btn-primary" href="index.jsp" >Back</a>
<hr>
<div class="accordion accordion-flush  border rounded" id="accordionFlushExample">

<% 

    connection cn = new connection();
    try
    {
      
    	cn.ps=cn.myconn().prepareStatement("select * from carrers");
    	cn.rs = cn.ps.executeQuery();
    	while(cn.rs.next())
    	
    	{


%>
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingOne">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#<%="job"+cn.rs.getInt("id") %>" aria-expanded="false" aria-controls="flush-collapseOne">
       <strong><%=cn.rs.getString("job") %></strong>
      </button>
    </h2>
    <div id="<%="job"+cn.rs.getInt("id") %>" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body"><p><%=cn.rs.getString("about") %></p>
      <dt>Skill</dt><dd><%=cn.rs.getString("skill") %></dd>
       <dt>Experience</dt><dd><%=cn.rs.getString("exp") %></dd>
        <dt>Package</dt><dd><%=cn.rs.getString("pack") %></dd>
         <center><a  class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#stdmodal">Login</a></center>
     
      </div>
    </div>
  </div>
  

<%}
    	
    	}
    	catch(Exception a)
    	{
    	a.printStackTrace();
    	}
    	
    	%>
  
</div> 

</div>






<div class="col-md-1 " ></div>
</div></div>


</body>
</html>