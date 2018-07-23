<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Online Java Compiler</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
    
  
  <!-- Twitter Cards integration: https://dev.twitter.com/cards/  -->
  <meta name="twitter:card" content="summary">
  <meta name="twitter:site" content="">
  <meta name="twitter:title" content="">
  <meta name="twitter:description" content="">
  <meta name="twitter:image" content="">
  
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
  
  
  <script src="MyScript.script"></script>
  
</head>

<body onload="document.getElementById('class').focus()">


<header id="header">

    <div class="container">
    
      <div id="logo" class="pull-left">
        <a href="#hero"><img src="img/logo.png" alt="" title="" /></img></a>
        <!-- Uncomment below if you prefer to use a text image -->
        <!--<h1><a href="#hero">Header 1</a></h1>-->
      </div>
        
      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="#hero">Home</a></li>
          <li><a href="#about">Login</a></li>
          <li><a href="#services">Register</a></li>
          <li><a href="#portfolio">How To Use</a></li>
          <li><a href="#contact">About</a></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

<%-- <%   
  
String name=(String)session.getAttribute("user");  
out.print("Hello "+name);  
  
%>  
 --%>
<section id="about">
    <div class="container wow fadeInUp">
      <div class="row">
        <div class="col-md-12">
          <h3 class="section-title">Compiler</h3>
          <div class="section-title-divider"></div>
        </div>
      </div>
    </div>
    <div class="container wow fadeInUp">
      <div class="row">
       
          <div class="about-text">
			<form name="form">
				<div class="form-group">
				Enter Your Class Name
                  <input type="text" class="form-control" name="class" id="class" placeholder="Your ClassName" onblur="set()" />
                </div>
                <div class="form-group">
                <div class="col-md-6">
                <textarea cols="70" rows="15" name="code" id="code"></textarea>
                </div>
                <div class="col-md-6">
				<textarea cols="70" rows="15" name="code1" id="code1"></textarea>
				</div>
     
                </div>
                <div class="form-group">
                <div class="col-md-4">
                  <input type="button" class="form-control" value="COMPILE" onclick="compile()" />
                  </div>
                  <div class="col-md-4">
                  <input type="button" class="form-control" value="RUN" onclick="run()" />
                  </div>
                  <div class="col-md-4">
                  <input type="button" class="form-control" value="RESET" onclick="blank()" />
                </div>
                </div>               
			</form>
          </div>
               </div>
    </div>
  </section>





    

  
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