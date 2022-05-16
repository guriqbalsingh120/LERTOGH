<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>LERTOGH</title>


<a target="_blank" href="https://icons8.com/icon/q68XWFSclEPZ/home"></a><a target="_blank" href="https://icons8.com"></a>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script src="https://kit.fontawesome.com/878bdcf6cb.js" crossorigin="anonymous"></script>
 
<style>

.a{

-webkit-box-shadow: 1px 1px 12px -3px rgba(0,0,0,0.75);
-moz-box-shadow: 1px 1px 12px -3px rgba(0,0,0,0.75);
box-shadow: 1px 1px 12px -3px rgba(0,0,0,0.75);
}


.b
{

border-radius: 30px 30px 30px 30px;
-moz-border-radius: 30px 30px 30px 30px;
-webkit-border-radius: 30px 30px 30px 30px;
border: 0px solid #000000;
}



.text
{
text-align:center;
margin-top:30px;


}

.bg
{
background: linear-gradient(120deg, #a1c4fd 0%, #c2e9fb 100%);
}


</style>



</head>
<body class="bg" >

<div class="container" id="home">


<div class="row">
<%@include file="stdnav.jsp" %>
</div>
     
<%  try
{
	
	
   if(request.getParameter("msg").equals("no"))
   {
	   %>
	   
	   <div class="alert alert-warning alert-dismissible fade show" role="alert" style="margin-top:80px;">
  <strong>Something wrong!</strong> You should try again .
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
	   
	   <% 
   }
   
}
catch(Exception a)
{
	a.printStackTrace();
}
%>


	
         <div class="row">
          <div class="col-md-6  " style="margin-top: 80px; "><center><h3 ><dfn ><i class="fa-solid fa-atom"></i><b>LERTOGH</b></dfn></h3></center>
          <section class="font" style="color: black"><strong>
        Over the years, with its hardwork, dedication and committment,LERTOGH 
        Technologies Private Limited has become one of the biggest brand name for quality industrial training in Chandigarh, Mohali and India. LERTOGH is the only company 
        in India which is Three Times National Level Award Winner for "Best Industrial 
        Training" and got these awards from various Bollywood Film Stars and Polticians.
        LERTOGH has highest level of infrastructure with 200+ computers, 14 Labs and top 
        industry experts as trainers. </strong></section></div>
      
 
	
      
      
      <div class=" col-md-6" style=" margin-top:100px;" > 
  <iframe class="embed-responsive-item img-fluid b" src="https://share.synthesia.io/embeds/videos/44004d93-0bcc-462a-9d2d-2b62f346e321"  style="height:280px; width:500px; border: none;"></iframe>
</div>
</div>

<center>
<div class="row mt-4">
<h3><dfn><b>OUR COURSE</b></dfn></h3>
<center><hr style="width:500px; color:black;"></center>

</div>

<div id="course" class="row" >

<%@include file="stdcard.jsp" %>
</div>




<div class="row mt-4 " id="about">
<h3><dfn><b>OUR PARTNERS</b></dfn></h3>
<center><hr style="width:500px; color:black;"></center>

<div class="col-sm-3 col-sm-2 mt-3">
<img src="l11.png" class="card-img-top ab  img-fluid rounded-circle "   style="height:130px;width:130px">

</div>

<div class="col-sm-3 col-sm-2  mt-3">
<img src="l12.png" class="card-img-top ab img-fluid rounded-circle "   style="height:130px;width:130px">

</div>

<div class="col-sm-3 col-sm-2  mt-3">
<img src="l13.png" class="card-img-top ab img-fluid rounded-circle "   style="height:130px;width:130px">

</div>

<div class="col-sm-3 col-sm-2  mt-3">
<img src="l3.png" class="card-img-top ab img-fluid rounded-circle "   style="height:130px;width:130px">

</div>

<div class="col-sm-3 col-sm-2  mt-3">
<img src="l4.png" class="card-img-top ab img-fluid rounded-circle "   style="height:130px;width:130px">

</div>

<div class="col-sm-3 col-sm-2  mt-3">
<img src="l5.png" class="card-img-top ab img-fluid rounded-circle "   style="height:130px;width:130px">

</div>

<div class="col-sm-3 col-sm-2  mt-3">
<img src="l6.png" class="card-img-top ab img-fluid rounded-circle "   style="height:130px;width:130px">

</div>

<div class="col-sm-3 col-sm-2  mt-3">
<img src="l8.png" class="card-img-top ab img-fluid rounded-circle "   style="height:130px;width:130px">

</div>



<div class="col-sm-3 col-sm-2  mt-3">
<img src="l14.png" class="card-img-top img-fluid rounded-circle "   style="height:130px;width:130px">

</div>



<div class="col-sm-3 col-sm-2  mt-3">
<img src="l15.png" class="card-img-top ab img-fluid rounded-circle "   style="height:130px;width:130px">

</div>



<div class="col-sm-3 col-sm-2  mt-3">
<img src="l16.png" class="card-img-top ab img-fluid rounded-circle "   style="height:130px;width:130px">

</div>


<div class="col-sm-3 col-sm-2 mt-3">
<img src="l17.png" class="card-img-top ab img-fluid rounded-circle "   style="height:130px;width:130px">

</div>
</div>
</div>

<center><h3><dfn><b>ABOUT</b></dfn></h3>
 <hr style="width:500px; color:black;"></center>

<div class="row text" style="margin-left:50px;">

 <div class=" col-lg-3 col-md-4 col-6 mt-2 " style="padding:10px;">

<div class="card ab"  style="width:10rem; height:10rem;">
  <div class="card-body text">
    
  <p><h5><b>100+ Teachers</b></h5></p>
    
  </div>
</div>
</div>

<div class=" col-lg-3 col-md-4 col-6 mt-2 " style="padding:10px;">
 
<div class="card ab" style="width:10rem; height:10rem;">
  <div class="card-body text">
    
     <p><h5><b>1000+ Students</b></h5></p>
    
  </div>
</div>
</div>

<div class=" col-lg-3 col-md-4 col-6 mt-2 " style="padding:10px;" >
<div class="card ab" style="width:10rem; height:10rem;">
  <div class="card-body text">
    
     <p><h5><b>50+ Partners</b></h5></p>
    
  </div>
</div>
</div>


<div class=" col-lg-3 col-md-4 col-6 mt-2 " style="padding:10px;">
<div class="card ab " style="width:10rem; height:10rem;" >
  <div class="card-body text ">
    
     <p><h5><b>5+ Branches </b></h5></p>
    
  </div>
</div>
</div>

</div>

</center>
</div>
</div>
</div>

<footer class="card-footer bg-dark mt-5" style="color:white;">

<div class="row" style="padding:20px;">


<div class="col-sm-3">

<h6>ADDRESS</h6><p class="text-muted"><pre>THE LERTOGH
E-1313,SECTOR-13
MOHALI,14714
PUNJAB

</pre></p>
</div>

<div class="col-sm-3">
<h6>FEEDBACK</h6>

<form action="stdfeed" method="post" onsubmit="return confirm('Thank you ...')">
  
  <div class="form-group">
    <label for="exampleInputPassword1">Feedback</label>
    <textarea type="text" class="form-control form-control-sm" id="exampleInputPassword1" name="feed"></textarea>
  </div>
 <hr>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>

</div>

<div class="col-sm-1"></div>
<div class="col-sm-3 text-muted" style="padding:20px;">
<h6>Links</h6>
<ul><li href="#home">Home</li>
                <li>About</li>
                <li >Carrers</li>
                <li >Courses</li>
            </ul>
            
            </div>


<div class="col-sm-2 text-muted " style="padding:20px;">
<h6>Links</h6>
<ul><li href="#home">Home</li>
                <li>About</li>
                <li>Carrers</li>
                <li>Courses</li>
            </ul>
            
            </div>





</div>
<hr>
</footer>





</body>
</html>