<%@page import="metier.Category"%>
<%@page import="web.CategoryModel"%>
<%@page import="metier.Pet"%>
<%@page import="web.PetModel"%>

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
				title="" /></span>Contact Us
		</div>

		<div class="feat_prod_box_details">
			<p class="details">Lorem ipsum dolor sit amet, consectetur
				adipisicing elit, sed do eiusmod tempor incididunt ut labore et
				dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. Lorem
				ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
				veniam, quis nostrud.</p>

			<div class="contact_form">
				<div class="form_subtitle">all fields are requierd</div>
				<div class="form_row">
					<label class="contact"><strong>Name:</strong></label> <input
						type="text" class="contact_input" />
				</div>

				<div class="form_row">
					<label class="contact"><strong>Email:</strong></label> <input
						type="text" class="contact_input" />
				</div>

				<div class="form_row">
					<label class="contact"><strong>Phone:</strong></label> <input
						type="text" class="contact_input" />
				</div>

				<div class="form_row">
					<label class="contact"><strong>Company:</strong></label> <input
						type="text" class="contact_input" />
				</div>

				<div class="form_row">
					<label class="contact"><strong>Message:</strong></label>
					<textarea class="contact_textarea"></textarea>
				</div>

				<div class="form_row">
					<button type="submit">submit</button>
				</div>
			</div>
		</div>

		<div class="clear"></div>
	</div>
	
	  <!--end of left content-->

    <div class="right_content">
        <div class="languages_box">
            <div id="google_translate_element"></div>

            <script type="text/javascript">
                function googleTranslateElementInit() {
                    new google.translate.TranslateElement({ pageLanguage: "en" }, "google_translate_element");
                }
            </script>

            <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
        </div>
        <div class="currency">
            <span class="red">Currency: </span>
            <a href="#">GBP</a>
            <a href="#">EUR</a>
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
				<span class="red"><%=session.getAttribute("username") %></span>
			</div>
			<a href="cart.php?userid=<%=session.getAttribute("userid") %>"
				class="view_cart">view cart</a>
			<%} %>
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
		       if(p.getPet_status().equals("promo")) { %>
			<div class="new_prod_box">
				<a href="details.php?id=<%=p.getPet_id()%>"><%=p.getPet_name()%></a>
				<div class="new_prod_bg">
					<span class="new_icon"><img src="images/promo_icon.gif"
						alt="" title="" /></span> <a href="details.php?id=<%=p.getPet_id()%>"><img
						src="images/<%=p.getPet_images()%>" alt="" title="" class="thumb"
						border="0" /></a>
				</div>
			</div>
			<%}}%>
			</div>
			
			<div class="right_box">
            <div class="title">
                <span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>Categories
            </div>
			
			<ul class="list">
			 <%
		      for (Category c : modelc.getCategorys()) {
		    %>
			
			<li><a href="category.php?id=<%=c.getPet_category_id()%>"><%=c.getPet_category_name()%></a></li>
			<%} %>
			</ul>
        </div>
    </div>
    
     <!--end of right content-->

    <div class="clear"></div>
</div>
<!--end of center content-->

<%@include file="footer.jsp" %>

	
	
	
	
	
	