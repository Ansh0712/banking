<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>List</title>
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
			<h1 class="mt-4 mb-3"> Transactions </h1>
			<div class="breadcrumb-main">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">
						<a href="Index.html">Home</a>
					</li>
					<li class="breadcrumb-item active">Transactions</li>
				</ol>
			</div>
		</div>
	</div>
<center>
<%@page errorPage="error.jsp" %>
<%@include file="db.jsp" %>
<table align="center" border="1px">
<tr>
<th>Transferred from</th>
<th>Transferred to</th>
<th>Amount</th>

</tr>
<%
	String qr="select * from transaction";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(qr);
	if(rs.next())
	{
		do
		{
			
			long from=rs.getLong("fr");
			long to=rs.getLong("t");
			long amt=rs.getLong("amt");
			
			%>
			<tr>
			<td><%=from %></td>
			<td><%=to %></td>
			<td><%=amt %></td>
		    
			</tr>
			<%
		}while(rs.next());
	}
	else
	{
		out.println("no data found");
	}
	con.close();
%>
</table>    
 
  <a href="Index.html">HOME</a>  

</center>
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
