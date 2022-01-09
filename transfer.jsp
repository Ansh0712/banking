<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>TRANSFER</title>
	<!-- Bootstrap core CSS -->
	<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<!-- Fontawesome CSS -->
	<link href="css/all.css" rel="stylesheet">
	<!-- Owl Carousel CSS -->
	<link href="css/owl.carousel.min.css" rel="stylesheet">
	<!-- Owl Carousel CSS -->
	<link href="css/jquery.fancybox.min.css" rel="stylesheet">
	<!-- Custom styles for this template -->
	<link href="css/style.css" rel="stylesheet">
</head>
<body>
<div class="wrapper-main">
	<!-- Top Bar -->
	<div class="top-bar">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="social-media">
						<ul>
							<li><a href="https://www.facebook.com/"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="www.twitter.com"><i class="fab fa-twitter"></i></a></li>
							<li><a href="www.googleplus.com"><i class="fab fa-google-plus-g"></i></a></li>
							<li><a href="www.linkedln.com"><i class="fab fa-linkedin-in"></i></a></li>
							<li><a href="www.instagram.com"><i class="fab fa-instagram"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="contact-details">
						<ul>
							<li><i class="fas fa-phone fa-rotate-90"></i> +91 899 286 777</li>
							<li><i class="fas fa-map-marker-alt"></i>Indore</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
    
	<!-- full Title -->
	<div class="full-title">
		<div class="container">
			<!-- Page Heading/Breadcrumbs -->
			<h1 class="mt-4 mb-3"> TRANSFER </h1>
			<div class="breadcrumb-main">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">
						<a href="Index.html">HOME</a>
					</li>
					<li class="breadcrumb-item active">TRANSFER</li>
				</ol>
			</div>
		</div>
	</div>
<center>
<div class="portfolio-col">
<%
long amt=0,to=0;
String name=request.getParameter("name");
String p=request.getParameter("accno");
long acc=Long.parseLong(p);
String type=request.getParameter("email");
String b=request.getParameter("bal");
int bal= Integer.parseInt(b);
%>
<form action="transact.jsp">
A/C Number<%=acc%><input type="hidden" name="acc" value="<%=acc %>" /><br>
Transfer to <input type="number" name="to" value="" /><br><br>

Amount  <input type="number" name="amt" value="" /><br><br>

<br><input type="submit" value="Transact">
</form>
</body>
</html>
	  <div class="container">
            <p class="copyright text-center">All Rights Reserved. &copy; 2021 <a href="#">Bank</a> Design By : 
				<a href="https://www.linkedin.com/in/ansh-mittal-71aa36212/">Ansh Mittal</a>
            </p>
        </div>
    </footer>	
    
</div>
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="js/jquery.appear.js"></script>
<script src="js/script.js"></script>
</body>
</html>
