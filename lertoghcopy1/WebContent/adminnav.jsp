<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

#logo:hover {
color: yellow;

text-shadow: #FFF 0px 0px 5px, #FFF 0px 0px 10px, #FFF 0px 0px 15px, #FF2D95 0px 0px 20px, #FF2D95 0px 0px 30px, #FF2D95 0px 0px 40px, #FF2D95 0px 0px 50px, #FF2D95 0px 0px 75px;

}

</style>


</head>
<body>
	
        <div class="navbar-nav ">

            <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark" >
    <div class="container-fluid" >
        <a href="index.jsp" class="navbar-brand"><dfn id="logo"><i class="fa-solid fa-atom"></i>LERTOGH</dfn></a>
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
            <div class="navbar-nav" style="color:white;">
                <a href="admin.jsp" class="nav-item nav-link "><i class="fa-solid fa-house"></i> Home</a>
        
               
         <a href="#addjob" class="nav-item navbar-right nav-link" data-bs-toggle="modal" ><i class="fa-solid fa-layer-group"></i>Add Job</a>
               
    <a href="#addcourse" class="nav-item navbar-right nav-link" data-bs-toggle="modal" ><i class="fa-solid fa-layer-group"></i>Add Course</a>             
         
                 <a href="index.jsp" class="nav-item nav-link"><i class="fa-solid fa-arrow-right-from-bracket"></i>Logout</a> 
                </div> 
                </div>
                     
           
            
             
  </div></nav>


   

<div class="modal fade" id="addjob" >
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg " >
    <div class="modal-content " style="background-image: linear-gradient(to top, #fff1eb 0%, #ace0f9 100%);">
    
      <div class="modal-header">
        <h5 class="modal-title">New Job</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        
      </div>
      
      <div class="modal-body">
      
        <form action="addjob"  method="post"  class="border rounded border-dark"  style="padding:10px;" onsubmit="return confirm('Please Confirm..');" >
  <div class="row">
  
  <div class="col-md-4">
    <label  class="form-label" for="em">Job Name</label>
    <input type="text" class="form-control"  id="em" name="job">
   </div>
   
 <div class="col-md-8">
    <label for="p2" class="form-label">Introduction</label>
    <textarea type="text" class="form-control" id="p2" name="about"></textarea>
  </div>
  
  <div class="col-md-4">
    <label for="p" class="form-label">Skill</label>
    <input type="text" class="form-control" id="p" name="skill">
  </div>
  
   <div class="col-md-4">
    <label for="p1" class="form-label">Package</label>
    <input type="text" id="p1" class="form-control"  name="pack">
  </div>
 
  <div class="col-md-4">
    <label for="t1" class="form-label">Experience</label>
    <input type="text" id="t1" class="form-control"  name="exp">
  </div>
 
   <div class="col mt-2">
  <input class="btn btn-primary" type="reset" value="Reset">
  <hr>
    <div class="d-grid gap-2">
  <button class="btn btn-primary" type="submit">Submit</button>
  
  
</div>
  
</div>

</form>
   </div> 
       
  </div>
   </div>
</div>  
</div>
	 
<div class="modal fade" id="addcourse"  >
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg " >
    <div class="modal-content " style="background-image: linear-gradient(to top, #fff1eb 0%, #ace0f9 100%);">
    
      <div class="modal-header">
        <h5 class="modal-title" id="modal2">New Course</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      
      <div class="modal-body">
      
        <form action="addcourse"  method="post" enctype="multipart/form-data" class="border rounded border-dark"  style="padding:10px;" onsubmit="return confirm('Please Confirm..');" >
  <div class="row">
  <div class="col-md-4">
    <label  class="form-label" for="em">Course Name</label>
    <input type="text" class="form-control"  id="em" name="head">
   </div>
   
 <div class="col-md-8">
    <label for="p2" class="form-label">Introduction</label>
    <textarea type="text" class="form-control" id="p2" name="cont"></textarea>
  </div>
  
  <div class="col-md-4">
    <label for="p" class="form-label">Duration</label>
    <input type="text" class="form-control" id="p" name="dt">
  </div>
  
 <div class="col-md-8">
    <label for="p1" class="form-label">Logo</label>
    <input type="file" id="p1" class="form-control"  name="file">
  </div>
  
   <div class="col-md-3">
    <label for="p1" class="form-label">Fees</label>
    <input type="text" id="p1" class="form-control"  name="fees">
  </div>
 
  <div class="col-md-3">
    <label for="t1" class="form-label">Timing</label>
    <input type="time" id="t1" class="form-control"  name="time">
  </div>
 
 <div class="col-md-3">
    <label for="l" class="form-label">Link</label>
    <input type="text" id="l" class="form-control"  name="link">
  </div>
 
 <div class="col-md-3">
    <label for="da" class="form-label">Start Date</label>
    <input type="date" id="da" class="form-control"  name="date">
  </div>
 
 
 <div class="col-12">
    <label for="da" class="form-label">Drive</label>
    <input type="text" id="da" class="form-control"  name="drive">
  </div>
 
   <div class="col mt-2">
  <input class="btn btn-primary" type="reset" value="Reset">
  <hr>
    <div class="d-grid gap-2">
  <button class="btn btn-primary" type="submit">Submit</button>
  
  
</div>
  </div>
</form>
      
      </div>
      
    </div>
  </div>
  </div>
 </div>  










</body>
</html>