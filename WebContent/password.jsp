<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Online Java Compiler</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
    
  
  
  
  <!-- Place your favicon.ico and apple-touch-icon.png in the template root directory -->
  <link href="favicon.ico" rel="shortcut icon">
  
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet"> 
  
  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  
  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate-css/animate.min.css" rel="stylesheet">
  
  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">
  
   
</head>


<header id="header">

    <div class="container">
    
      <div id="logo" class="pull-left">
        <a href="#hero"><img src="img/logo.png" alt="" title="" /></img></a>
        <!-- Uncomment below if you prefer to use a text image -->
        <!--<h1><a href="#hero">Header 1</a></h1>-->
      </div>
        
      
      <nav id="nav-menu-container">
        <ul class="nav-menu">
        
        
          <li class="menu-has-children"><span style="color:white">Hello</span><a href=""><%   
  
String name=(String)session.getAttribute("user");  
out.print(name);  
  
%></a>
            <ul>
              <li><a href="#">Change Password</a></li>
              <li><a href="#">View Codes</a></li>
              <li><a href="#">Logout</a></li>
            </ul>
          </li>
        </ul>
      </nav>  
        <!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->


<section id="about">
    <div class="container wow fadeInUp">
      <div class="row">
        <div class="col-md-12">
          <h3 class="section-title">Change Your password here</h3>
          <div class="section-title-divider"></div>
        </div>
      </div>
    </div>
    <div class="container wow fadeInUp">
      <div class="row">
       
          <div class="about-text">
			<form name="form" method="post" action="password.jsp">
				<div class="form-group">
                <input type="text" class="form-control" name="password" id="password" required="required" placeholder="Enter New Password">
              	<input type="text" class="form-control" name="password" id="password" required="required" placeholder="Enter password Again">
               <button type="submit"> Submit </button>
		</div>
			</form>
          	</div>
      	</div>
    	</div>
</section>




<%@ page import="java.io.*" %>
<%@  page import="java.sql.*"   %>
<%@  page import="java.util.*"   %>
<%
String email=request.getParameter("user");
String password=request.getParameter("password");


try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
	
Connection c= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","nimi","nimish");
Statement s = c.createStatement();

int  s1=s.executeUpdate("update compiler set password='"+password+"' WHERE email='"+email+"'");

out.println(s1);
if(s1==1)
{
out.println("Password Changed");
}
else
out.println("Failed");	
}
catch(Exception e)
{
	out.println(e);
	}     

%>











  
<!--==========================
  Footer
============================--> 
  <footer id="footer">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="copyright">
              &copy; Copyright <strong>NIMISH</strong>. All Rights Reserved
            </div>
            <div class="credits">
              <!-- 
                All the links in the footer should remain intact. 
                You can delete the links only if you purchased the pro version.
                Licensing information: https://bootstrapmade.com/license/
                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Imperial
              -->
              Compiler by <a href="https://facebook.com/nnimish75">Nimish Vishnoi</a>
            </div>
          </div>
        </div>
      </div>
  </footer><!-- #footer -->
  
  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
    
  <!-- Required JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>
  <script src="lib/morphext/morphext.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/stickyjs/sticky.js"></script>
  <script src="lib/easing/easing.js"></script>
  
  <!-- Template Specisifc Custom Javascript File -->
  <script src="js/custom.js"></script>
  
  <script src="contactform/contactform.js"></script>
  
    
</body>
</html>