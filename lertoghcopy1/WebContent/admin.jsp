<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*" %>
    <%@page import="myconnection.connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>


<a target="_blank" href="https://icons8.com/icon/q68XWFSclEPZ/home"></a><a target="_blank" href="https://icons8.com"></a>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script src="https://kit.fontawesome.com/878bdcf6cb.js" crossorigin="anonymous"></script>
<style type="text/css">

.bg
{
background: linear-gradient(120deg, #a1c4fd 0%, #c2e9fb 100%);
}


.text
{
text-align:center;
margin:10px;

}



.a{

-webkit-box-shadow: 1px 1px 12px -3px rgba(0,0,0,0.75);
-moz-box-shadow: 1px 1px 12px -3px rgba(0,0,0,0.75);
box-shadow: 1px 1px 12px -3px rgba(0,0,0,0.75);

margin:5px;
}

</style>



</head>
<body class="bg ">
<div class="conatainer">

<div class="row-fluid">
<%@include file="adminnav.jsp" %>
</div>




<div class="row" style="margin-top:70px;" >

<center><h2><b>Welcome Admin..</b></h2></center>


 <div class=" col-sm-4" >
<div class="card a" >
  <div class="card-body text">
    
   <a href="studentdb.jsp" role="button" class="btn btn-md  btn-primary ">student</a>
    
  </div>
</div>
</div>

<div class="col-sm-4">
<div class="card a" >
  <div class="card-body text">
    
   <a href="coursedb.jsp" role="button" class="btn btn-md  btn-primary ">course</a>
    
  </div>
</div>
</div>

<div class="col-sm-4">
<div class="card a" >
  <div class="card-body text">
    
    <a href="stdfees.jsp" role="button" class="btn btn-md btn-primary ">Panding-Requests</a>
    
  </div>
</div>
</div>


<div class="col-sm-4">
<div class="card a" >
  <div class="card-body text ">
    
    <a href="transactions.jsp" role="button" class="btn btn-md btn-primary  ">All Transactions</a>
    
  </div>
</div>
</div>

<div class="col-sm-4">
<div class="card a" >
  <div class="card-body text ">
    
    <a href="feedback.jsp" role="button" class="btn btn-md btn-primary  ">Feedback's</a>
    
  </div>
</div>
</div>



<div class="col-sm-4">
<div class="card a" >
  <div class="card-body text ">
    
    <a href="jobdb.jsp" role="button" class="btn btn-md btn-primary  ">Job's</a>
    
  </div>
</div>
</div>







</div>





</div>




</body>
</html>