<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">

<div class="row" style="margin-top:100px;">
<div class="col-md-3"></div>
<div class="col-md-6 card-body border rounded border-dark" style="padding:10px;">
<form action="forgot" method="post" >

<center><h3>FORGOT PASSWORD</h3></center>

<label class="form-label " for="em">Enter Your Email</label>
<input type="email" class="form-control" name="email" id="em"> 


<hr>
  <div class="d-grid gap-2">
<center><button type="submit" class="btn btn-outline-primary">Next</button></center>
</div>
</form>

</div>
<div class="col-md-3"></div>
</div>

</div>


</body>
</html>