﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>Organ Donation - Welcome</title>
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		
		<script src="js/jquery.min.js"></script>
		
         <!-- Custom Theme files -->
		<link href="css/style.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<script type="application/x-javascript"> 
            addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); 
            function hideURLbar(){ window.scrollTo(0,1); } 

		</script>
		 <!---- start-smoth-scrolling---->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
		 <!---- start-smoth-scrolling---->
		<!----webfonts--->
		<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'/>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'/>
		<!---//webfonts--->
		<!----start-top-nav-script---->
		<script>
			$(function() {
				var pull 		= $('#pull');
					menu 		= $('nav ul');
					menuHeight	= menu.height();
				$(pull).on('click', function(e) {
					e.preventDefault();
					menu.slideToggle();
				});
				$(window).resize(function(){
	        		var w = $(window).width();
	        		if(w > 320 && menu.is(':hidden')) {
	        			menu.removeAttr('style');
	        		}
	    		});
			});
		</script>
		<!----//End-top-nav-script---->
	</head>
	<body>

        <form id="form1" runat="server">
    <div>
    
    </div>
    </form>


		<!----- start-header---->
			<div id="home" class="header">
					<div class="top-header">
						<div class="container">
						<div class="logo">
							<h1><b>Organ Donation</b></h1>
						</div>
						<!----start-top-nav---->

						 <nav class="top-nav">
							<ul class="top-nav">
								<li class="active"><a href="#home" class="scroll">Home</a></li>
								<li><a href="#about" class="scroll">About us</a></li>
                                <li><asp:HyperLink ID="HyperLink1" runat="server">Become A Donor</asp:HyperLink><li />
								
								<li><a href="#services" class="scroll">Understanding Organ Donation</a></li>
								<li><a href="#team" class="scroll">Stories of Hope</a></li>
								<li><a href="#contact" class="scroll">Contact Us</a></li>
								<li><asp:HyperLink ID="HyperLink2" runat="server">Log In</asp:HyperLink><li />

							</ul>
							<a href="#" id="pull"><img src="images/menu-icon.png" title="menu" /></a>
						</nav>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
		<!----- //End-header---->
		<!----start-slider-script---->
			<script src="js/responsiveslides.min.js"></script>
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager: true,
			        nav: true,
			        speed: 800,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
			<!----//End-slider-script---->
			<!-- Slideshow 4 -->
			    <div  id="top" class="callbacks_container">
			      <ul class="rslides" id="slider4">
			        <li>
			          <img src="images/slide1.jpg" alt="">
			          <div class="caption">
			          	<div class="slide-text-info">
			          		
			          	</div>
			          </div>
			        </li>
			        <li>
			          <img src="images/slide2.jpg" alt="">
			          <div class="caption">
			          	<div class="slide-text-info">
			          					          	</div>
			          </div>
			        </li>
			        <li>
			          <img src="images/slide3.jpg" alt="">
			           <div class="caption">
			           	<div class="slide-text-info">
			          		
			          	</div>
			          </div>
			        </li>
			      </ul>
			    </div>
			    <div class="clearfix"> </div>
			<!----- //End-slider---->
			<!---- about ---->
			<div id="about" class="about">
				<div class="container">
					<div class="header about-header text-center">
						<h2>about us</h2>
						<p></p>
					</div>
					<!---- About-grids ---->
					<div class="about-grids">
						<div class="col-md-4">
							<div class="about-grid">
								<img src="images/img1.jpg" title="name" />
								<span class="t-icon1"> </span>
								<div class="about-grid-info text-center">
									<h3></h3>
									<p>Organ Bank, a nodal centre for the country, has been set up at BMS College of Enginering , Bengaluru, with a purpose of encouraging organ donations, fair and equitable distribution. </p>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="about-grid n-about-grid n-about-grid1">
								<img src="images/img2.jpg" title="name" />
								<span class="t-icon1"> </span>
								<div class="about-grid-info text-center">
									<h3></h3>
									<p>This organization is maintaining the waiting list of terminally ill patients requiring transplants, donor registration, matching of recipients with donor, co-ordination from procurement of organs to transplantation.</p>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="about-grid n-about-grid n-about-grid2">
								<img src="images/img3.jpg" title="name" />
								<span class="t-icon2"> </span>
								<div class="about-grid-info text-center">
									<h3></h3>
									<p>The Organ donation bank disseminates information to all concerned hospitals, organizations and individuals, creating awareness, promotion of organ donation and transplantation activities.</p>
								</div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!---- About-grids ---->
				</div>
				
			</div>
			<!---- about ---->
			<!--- services --->
			<div id="services" class="services">
				<div class="container">
					<div class="header services-header text-center">
						<h2>Understanding Organ Donation</h2>
						<p style="color:black">"Organ donation is the process of donating organs or biological tissue to a living recipient, who is in need of a transplant. The donor may be alive or deceased. This page will provide you with all the basic information about organ donation."</p><br/>
					</div>
					<h3>WHAT ARE THE DIFFERENT TYPES OF ORGAN TRANSPLANT DONATIONS?</h3>
		
					<p style="color:#ffffff">There are two different kinds of transplant donations:<br/>

                        1. Living Donor Transplant – This occurs when a living person decides to donate his or her organ(s) to someone in need of a transplant. Living donors are usually family members or close friends of the person who requires a transplant. They must meet certain medical criteria and undergo comprehensive medical testing, as required by the particular circumstance, before being accepted as suitable donors.<br/>

                        2. Deceased Donor Transplant – This is when organs from a brain dead individual are transplanted into the body of a living recipient. The deceased individual in this scenario can only be a victim of brain death. This kind of transplant initially requires the recipient to wait on a list until a suitable organ is available based on the recipient’s medical profile.</p>
					<br/>
					<h3>WHICH ORGANS CAN BE DONATED?</h3>

					<p style="color:#ffffff">Different organs, such as heart, liver, kidneys and tissues, such as corneas and bone marrow, can now be successfully transplanted into patients, who can expect to survive for years or even decades. The different organs that can be transplanted depend on the type of organ transplant i.e. whether the donor is alive or deceased.<br/>

                    On one hand, living donors may donate a very limited number of organs and biological tissue. This list usually consists of one kidney (because one kidney is capable of performing bodily functions), a part of pancreas (because half of the pancreas is adequate to sustain pancreatic functions) and a part of liver (because the few segments that can be donated will regenerate after a period of time).</p>
					<br/>
					<h3>HOW DOES THE PROCESS OF DONATION WORK?</h3>
					<p style="color:#000000">LIVING DONATIONS<br/></p>

                       <p style="color:#ffffff">
                       1. The donor undergoes the medical tests and evaluations to check his or her medical compatibility with the recipient.<br/>

                       2. The donor’s medical compatibility is confirmed by a doctor, only after which a transplant may take place.<br/>

                       3. The donor’s organs are surgically retrieved and stored in special chemical solutions until transplantation is to occur.<br/>

                       4. The donor’s body is surgically closed.<br/>

                       5. The donor may have to stay under medical care for a few days after organ retrieval has occurred.<br/>

                     Living donors, however, may only donate a limited list of organs or tissue. ORGAN India aims to increase awareness of and facilitate deceased donations because many more organs can be harvested from a brain dead body.</p><br/>

                     <p style="color:#000000">DECEASED DONATIONS</br></p>
                       <p style="color:#ffffff">
                       1. The donor, who is a victim of a fatal injury to the head, is declared brain dead by a board of medical experts.<br/>

                       2. Consent from the donor’s family is obtained before the process of organ procurement is carried out. In the interim, the donor’s body is kept on a ventilator under special medical care, which ensures that his or her heart is still beating and organs are kept alive.<br/>

                       3. A suitable recipient(s) for the organ(s) is identified off a waiting list and notified.<br/>

                       4. The donor’s organs are surgically retrieved and stored in special chemical solutions until transplantation is to occur.<br/>

                       5. The ventilator support is discontinued and the donor’s body is surgically closed and released to the family.</br></p>
                     <br/>
                     <h3>SHOULD DONORS TELL THEIR FAMILIES ABOUT THEIR WISH TO DONATE THEIR ORGANS?</h3>
                     <p style="color:#ffffff">The most important thing that a donor must do, after he or she has pledged to become a donor, is to discuss the decision with his or her family. Although the decision is personal, organ and tissue donation cannot take place without the consent of the donor’s family. Donors are advised to help their families understand the motive behind their decisions. For instance, a donor may have been inspired by another donor’s or recipient’s story. This donor could narrate this story to his or her family so that it understands what the donor feels; this also makes the family more likely to consent with the donor’s decision.</p>

				</div>
				
			</div>
			<!--- services --->
			<!--- team --->
			<div id="team" class="team">
				<div class="container">
					<div class="header team-head text-center">
						<h2>Stories of Hope</h2>
						<p>Hear it from the people who have donated their organs and from the ones who have received them and are now happily living their lives.</p>
					</div>
					<!--- teammember-grids ---->
					<div class="team-member-grids">
						<div class="team-member-grid">
							<img src="images/t1.jpg" title="name" />
							<div class="team-member-info bottom-t-info">
								<span> </span>
								<h3><a href="#">Kiran Kumari</a></h3>
								<p>"Let's be truly greatful for every breath, and every healthy day that we get to spend in a very taken for granted manner. Good things happen to good people, and goodness is for sharing. Pledge your organs !</p>
							</div>
						</div>
						<div class="team-member-grid">
							<div class="team-member-info bottom-t-info bottom-t-info-b">
								<span> </span>
								<h3><a href="#">Sharvan Rao</a></h3>
								<p>"It was a tough decision to donate my late wife’s organs after her death. Our family members were very resistant. Although her life could not be saved, but donating her organs has saved the lives of 4-5 others.</p>
							</div>
							<img src="images/t2.jpg" title="name" />
						</div>
						<div class="team-member-grid">
							<img src="images/t3.jpg" title="name" />
							<div class="team-member-info bottom-t-info">
								<span> </span>
								<h3><a href="#">Meera Shrivastava</a></h3>
								<p>"I was diagnosed with a kidney disorder. My kidney had failed, and I needed imediate transplantation. I feel sad that one and a half lakh people are waiting for an organ. Please donate your organs."</p>
							</div>
						</div>
						<div class="team-member-grid">
							<div class="team-member-info bottom-t-info bottom-t-info-b">
								<span> </span>
								<h3><a href="#">Rahul Singh</a></h3>
								<p>"Our son Sachin, was an engineering student, he met up with a road accident. He was declared brought dead to the hospital. We decided to donate all his organs. It was like giving an oportunity to our son to live forever."</p>
							</div> 
							<img src="images/t4.jpg" title="name" />
						</div>
						<div class="team-member-grid">
							<img src="images/t5.jpg" title="name" />
							<div class="team-member-info bottom-t-info">
								<span> </span>
								<h3><a href="#">Arun Sharma</a></h3>
								<p>"The message that I would like to give is that if you cannot do any good deed during your life, at least after you die, do this for a good cause. You can make a difference in this world."</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!---//teammember-grids ---->
				</div>
			</div>
			<!--- team --->
			<!---- contact ---->
			<div id="contact" class="contact">
				<div class="map">
					
					<div class="contact-info">
						<div class="container">
						<!---- contact-grids ---->
						<div class="contact-grids">
							<h3>contact us</h3>
							<div class="col-md-5 contact-grid-left">
								<h4>contact information</h4>
								<ul>
									<li><span class="cal"> </span><label>Monday - Friday :</label><small>9:30 AM to 6:30 PM</small></li>
									<li><span class="pin"> </span><label>Address :</label><small>BMS College of Engineering, Bull Temple Road, Bangalore, 560019</small></li>
									<li><span class="phone"> </span><label>Phone :</label><small>080-123456789</small></li>
									<li><span class="fax"> </span><label>Fax :</label><small>080-987456321</small></li>
									<li><span class="mail"> </span><label>Email :</label><small> info@bmsceorganbank.com</small></li>
								</ul>
							</div>
							
							<div class="clearfix"> </div>
						</div>
						<!---- contact-grids ---->
					</div>
					</div>
				</div>
			</div>
			<!---- contact ---->
			<div class="clearfix"> </div>
			<!--- copy-right ---->
			<div class="copy-right">
				<div class="container">
				<div class="copy-right-left">
					<p>Template by <a href="http://w3layouts.com/">W3layouts</a></p>
					<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
					<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
				</div>
				<div class="copy-right-right">
					<ul>
						<li><a class="facebook" href="#"><span> </span></a></li>
						<li><a class="twitter" href="#"><span> </span></a></li>
						<li><a class="skype" href="#"><span> </span></a></li>
						<div class="clearfix"> </div>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			</div>
			<!--- copy-right ---->
	</body>
</html>