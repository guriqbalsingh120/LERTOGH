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
                <a href="student.jsp" class="nav-item nav-link "><i class="fa-solid fa-house"></i>Home</a>
                <a href="carr.jsp" class="nav-item nav-link"><i class="fa-solid fa-eject"></i>Carrers</a>
                <a href="trans.jsp" class="nav-item nav-link"><i class="fa-solid fa-arrows-to-eye"></i>Transactions</a>
               <a href="stdcourse.jsp" class="nav-item nav-link"><i class="fa-solid fa-arrows-to-eye"></i> Your Course</a>
                 <a href="stdmsg.jsp" class="nav-item nav-link"><i class="fa-solid fa-box"></i>Massage</a> 
                <a href="stdlog" class="nav-item nav-link"><i class="fa-solid fa-arrow-right-from-bracket"></i>Logout</a>
             
       
               </div>
               
 </div>          
</div></nav> <i class="fa-solid fa-arrow-right-from-bracket"></i>


</body>
</html>