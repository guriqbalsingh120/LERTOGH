<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*" %>
    <%@page import="myconnection.connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

#logo:hover {
color: white;

text-shadow: #FFF 0px 0px 5px, #FFF 0px 0px 10px, #FFF 0px 0px 15px, #FF2D95 0px 0px 20px, #FF2D95 0px 0px 30px, #FF2D95 0px 0px 40px, #FF2D95 0px 0px 50px, #FF2D95 0px 0px 75px;

}



.a{
-webkit-box-shadow: -10px 10px 0px -3px rgba(0,0,0,0.75);
-moz-box-shadow: -10px 10px 0px -3px rgba(0,0,0,0.75);
box-shadow: -10px 10px 0px -3px rgba(0,0,0,0.75);


border-radius: 25px 25px 25px 25px;
-moz-border-radius: 25px 25px 25px 25px;
-webkit-border-radius: 25px 25px 25px 25px;
border: 0px solid #000000;
}

</style>


</head>
<body>
	
        <div class="navbar-nav " >

            <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark" >
    <div class="container-fluid" >
        <a href="index.jsp" class="navbar-brand"><dfn id="logo"><i class="fa-solid fa-atom"></i>LERTOGH</dfn></a>
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
            <div class="navbar-nav hover" style="color:white;">
                <a href="#home" class="nav-item nav-link "><i class="fa-solid fa-house"></i> Home</a>
                <a href="#about" class="nav-item nav-link"><i class="fa-solid fa-eject"></i> About</a>
                <a href="carr1.jsp" class="nav-item nav-link"><i class="fa-solid fa-arrows-to-eye"></i>Carrers</a>
                <a href="#course" class="nav-item nav-link"><i class="fa-solid fa-layer-group"></i> Courses</a>
            
                 
               
                   
                   
            
                
                  <a href=""  class="nav-item navbar-right nav-link" data-bs-toggle="modal" data-bs-target="#stdmodal"><i class="fa-solid fa-user-tie"></i> Student Login</a>

                 <a href="" class="nav-item nav-link" data-bs-toggle="modal" data-bs-target="#admodal" ><i class="fa-solid fa-user-secret"></i> Admin Login</a>
               
                </div>
                
                
            


           
                     
           
            
 </div>          
</div></nav>

           
<div class="modal fade  " id="stdmodal" >
  <div class="modal-dialog modal-dialog-centered ">
    <div class="modal-content " style="background-image: linear-gradient(to top, #fff1eb 0%, #ace0f9 100%);">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><cenetr><b>Student Login</b></cenetr></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="stdvar" method="post">

        
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="stdemail">
    
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="stdpass">
  </div>
 
  <center><button type="submit" class="btn btn-primary">Login</button>
  <a href="" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-dismiss="modal" data-bs-target="#newstudent">Sign Up</a>
  <a href="forgot.jsp" >forget-password</a>
 
  </center>
</form> 



      </div>
      
    </div>
  </div>
</div>




<div class="modal fade  " id="admodal"  >
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content " style="background-image: linear-gradient(to top, #fff1eb 0%, #ace0f9 100%);">
      <div class="modal-header">
      
        <h5 class="modal-title" id="exampleModalLabel" ><cenetr><b>Admin Login</b></cenetr></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
         </div>
        <div class="modal-body">
        <form action="adminvar" method="post">
        <div class="mb-3">
        <label for="em" class="form-label">Email address</label>
        <input type="email" class="form-control" id="em" aria-describedby="emailHelp" name="ademail">
    
       </div>
      <div class="mb-3">
      <label for="ps" class="form-label">Password</label>
      <input type="password" class="form-control" id="ps" name="adpass">
      </div>
 
     
      <div class="d-grid gap-2">
  <button class="btn btn-primary" type="submit">Login</button>
  
  
</div>
      </form> 
      </div>
      
      
      
      
    </div>
  </div>
</div>

</div>

 
            

<div class="modal fade" id="newstudent"  >
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable  modal-lg">
    <div class="modal-content " style="background-image: linear-gradient(to top, #fff1eb 0%, #ace0f9 100%);" >
    
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Sign Up</h5>
         <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      
      <div class="modal-body">
      
      <form action="signup" method="post"  onsubmit="return confirm('Please Confirm..');">
    <div class="row">
        <div class="col-md-6"><label  class="form-label" for="fn">First Name</label>
    <input type="text" class="form-control"  id="fn" name="fname">
   </div>
        <div class="col-md-6"> <label  class="form-label" for="ln">Last Name</label>
    <input type="text" class="form-control"  id="ln" name="lname"></div>
    
   <div class="col-md-4">
   <label  class="form-label" for="ln">D.O.B</label>
   <input type="date" class="form-control"  id="ln" name="age">
   </div>
   
   
   
   
   
    <div class="col-md-4">
     <label  class="form-label" >Gender</label>
        <select class="form-select"  name="gender" aria-label="Default select example">
  <option selected>Select Your Gender</option>
  <option value="Male">Male</option>
  <option value="female">Female</option>
  <option value="others">Others</option>
   
</select>
</div>
    
    
  <div class="col-md-4">  <label  class="form-label" for="em1">Email address</label>
    <input type="email" class="form-control"  id="em1" name="email"></div>
    
        <div class="col-md-4">  <label  class="form-label" for="mb">Mobile No.</label>
    <input type="text" class="form-control"  id="mb" name="mob"></div>
        
         
    <div class="col-md-4">
    <label  class="form-label" for="clg">Collage</label>
    <input type="text" class="form-control"  id="clg" name="clg">
    
    </div>

        <div class="col-md-4"> <label  class="form-label" >Semester</label>
        <select class="form-select" name="sem" aria-label="Default select example">
  <option selected>Select Your Semester</option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
    <option value="4">4</option>
     <option value="5">5</option>
      <option value="6">6</option>
       <option value="7">7</option>
        <option value="8">8</option>
</select></div>
        <div class="col-md-12"><label  class="form-label" for="ad"> Address </label>
    <input type="text" class="form-control"  id="ad" name="adrs"></div>
         <div class="col-md-6">
        <label  class="form-label" >Security Question</label>
    <select class="form-select"  name="secq" aria-label="Default select example">
    <option selected>Select Your Question</option>
  <option value="What is your favorite game">What is your favorite game </option>
  <option value="What is your best friend">What is your best friend</option>
  <option value="What is your favorite pet">What is your favorite pet</option>
    <option value="What is your first school">What is your first school</option>
     <option value="What is your mother DOB">What is your mother DOB </option>
       </select> </div>
        
        
        <div class="col-md-6">
         <label  class="form-label" for="ans">Answer</label>
    <input type="text" class="form-control"  id="ans" name="ans">
        </div>
        
        
        <div class="col-md-6">
        <label  class="form-label" for="pass1">Password</label>
    <input type="password" class="form-control"  id="pass1" name="pass1">
        </div>
        
        <div class="col-md-4">
         <label  class="form-label" for="pass2">Confirm Password</label>
    <input type="text" class="form-control"  id="pass2" name="pass2">
   
        </div>
        
         <div class="col-sm-2">
         
          <input class=" form-control btn btn-primary " type="reset" value="Reset" style="margin-top:35px;">
          </div>
        
        
        
         
        <hr>
        <div class="d-grid gap-2">
  <button class="btn btn-primary" type="submit">Submit</button>
  
  
</div>
        
    

</form>

    
      
      </div>
      
    </div>
  </div>
</div>
         
    
    




</body>
</html>