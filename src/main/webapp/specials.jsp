<%@page import="metier.Pet"%>
<%@page import="web.PetModel"%>
<%@page import="metier.Category"%>
<%@page import="web.CategoryModel"%>
<%
PetModel model;

if (request.getAttribute("modelPets") != null) {
	model = (PetModel) request.getAttribute("modelPets");
} else
	model = new PetModel();
%>

<%
    CategoryModel modelc;
if (request.getAttribute("modelCategorys") != null) {
	modelc = (CategoryModel) request.getAttribute("modelCategorys");
} else
	modelc = new CategoryModel();

%>

<%@include file="header.jsp"%>

<div class="center_content">
	<div class="left_content">
		<div class="title">
			<span class="title_icon"><img src="images/bullet1.gif" alt=""
				title="" /></span>Special gifts
		</div>

		<%
		for (Pet p : model.getPets()) {
		%>
		<%
		if (p.getPet_status().equals("spec")) {
		%>
		<div class="feat_prod_box">
			<div class="prod_img">
				<a href="details.php?id=<%=p.getPet_id()%>"><img
					src="images/<%=p.getPet_images()%>" alt="" title="" border="0" /></a>
			</div>
			<div class="prod_det_box">
				<span class="special_icon"><img src="images/special_icon.gif"
					alt="" title="" /></span>

				<div class="box_top"></div>
				<div class="box_center">
					<div class="prod_title"><%=p.getPet_name()%></div>
					<p class="details"><%=p.getPet_description()%></p>
					<a href="details.php?id=<%=p.getPet_id()%>}" class="more">-
						more details -</a>
					<div class="clear"></div>
				</div>

				<div class="box_bottom"></div>
			</div>
			<div class="clear"></div>
		</div>
		<%
		}
		}
		%>

		<%
		for (Pet p : model.getPets()) {
		%>
		<%
		if (p.getPet_status().equals("promo")) {
		%>
		<div class="new_prod_box">
			<a href="details.php?id=<%=p.getPet_id()%>"><%=p.getPet_name()%></a>
			<div class="new_prod_bg">
				<span class="new_icon"><img src="images/promo_icon.gif"
					alt="" title="" /></span> <a href="details.php?id=<%=p.getPet_id()%>"><img
					src="images/<%=p.getPet_images()%>" alt="" title="" class="thumb"
					border="0" /></a>
			</div>
		</div>
		<%
		}
		}
		%>
	</div>

	<!--end of left content-->

	<div class="right_content">
		<div class="languages_box">
			<div id="google_translate_element"></div>

			<script type="text/javascript">
				function googleTranslateElementInit() {
					new google.translate.TranslateElement({
						pageLanguage : "en"
					}, "google_translate_element");
				}
			</script>

			<script type="text/javascript"
				src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
		</div>
		<div class="currency">
			<span class="red">Currency: </span> <a href="#">GBP</a> <a href="#">EUR</a>
			<a href="#"><strong>USD</strong></a>
		</div>
		<div class="cart">
			<%
			if (session.getAttribute("userid") != null) {
			%>
			<div class="title">
				<span class="title_icon"><img src="images/cart.gif" alt=""
					title="" /></span>My cart
			</div>
			<div class="home_cart_content">
				<span class="red"><%=session.getAttribute("username")%></span>
			</div>
			<a href="cart.php?userid=<%=session.getAttribute("userid")%>"
				class="view_cart">view cart</a>
			<%
			}
			%>
		</div>

		<div class="title">
			<span class="title_icon"><img src="images/bullet3.gif" alt=""
				title="" /></span>About Our Shop
		</div>
		<div class="about">
			<p>
				<img src="images/about.gif" alt="" title="" class="right" /> Lorem
				ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
				veniam, quis nostrud.
			</p>
		</div>
		<div class="right_box">
			<div class="title">
				<span class="title_icon"><img src="images/bullet4.gif" alt=""
					title="" /></span>Promotions
			</div>

			<%
			for (Pet p : model.getPets()) {
			%>
			<%
			if (p.getPet_status().equals("promo")) {
			%>
			<div class="new_prod_box">
				<a href="details.php?id=<%=p.getPet_id()%>"><%=p.getPet_name()%></a>
				<div class="new_prod_bg">
					<span class="new_icon"><img src="images/promo_icon.gif"
						alt="" title="" /></span> <a href="details.php?id=<%=p.getPet_id()%>"><img
						src="images/<%=p.getPet_images()%>" alt="" title="" class="thumb"
						border="0" /></a>
				</div>
			</div>
			<%
			}
			}
			%>
		</div>
		<div class="right_box">
			<div class="title">
				<span class="title_icon"><img src="images/bullet5.gif" alt=""
					title="" /></span>Categories
			</div>

			<ul class="list">
				<%
				for (Category c : modelc.getCategorys()) {
				%>

				<li><a href="category.php?id=<%=c.getPet_category_id()%>"><%=c.getPet_category_name()%></a></li>
				<%
				}
				%>
			</ul>
		</div>
	</div>

	<!--end of right content-->

	<div class="clear"></div>
</div>
<!--end of center content-->

<div class="footer">
	<div class="left_footer">
		<img src="images/footer_logo.gif" alt="" title="" /><br /> <a
			href="http://csscreme.com/freecsstemplates/"
			title="free css templates"><img src="images/csscreme.gif"
			alt="free css templates" border="0" /></a>
	</div>
	<div class="right_footer">
		<a href="index.php">home</a> <a href="about.php">about us</a> <a
			href="#">services</a> <a href="#">privacy policy</a> <a href="#">contact
			us</a>
	</div>
</div>



