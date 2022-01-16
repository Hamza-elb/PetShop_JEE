
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pet Shop</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
	<div id="wrap">

		<div class="header">
			<div class="logo">
				<a href="index.html"><img src="images/logo.gif" alt="" title=""
					border="0" /></a>
			</div>
			<div id="menu">
				<ul>
					<li><a href="index.php">home</a></li>
					<li><a href="about.php">about us</a></li>
					<li><a href="pets.php">pets</a></li>
					<li><a href="specials.php">specials pets </a></li>

					<%
					if (session.getAttribute("userid") == null) {
					%>
					<li><a href="myaccount.php">my accout</a></li>
					<li><a href="register.php">register</a></li>
					<%
					}
					%>

					<li><a href="contact.php">contact</a></li>

					<%
					if (session.getAttribute("userid") != null) {
					%>
					<li><a
						href="cart.php?userid=<%=session.getAttribute("userid")%>">prices</a></li>

					<li><a href="logout.php">logout</a> <%
                    }
                    %>
			</div>
		</div>
</body>
</html>