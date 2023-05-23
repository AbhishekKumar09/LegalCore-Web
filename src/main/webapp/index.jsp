<!DOCTYPE html>
<html>
<head>
    <title>LegalCore</title>
    <link rel="icon" href="resource/legalcore-logo.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>

    <!-- fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
    <!-- fontawesome END -->

    <!-- AOS css and JS -->
    <link rel="stylesheet" href="resource/aos/aos.css">
    <script src="resource/aos/aos.js"></script>
    <!-- AOS css and JS END-->

    <!-- custom css-->
    <link rel="stylesheet" href="resource/custom.css" />
    <!-- custom css END-->

    <meta name="author" content="" />
    <meta name="description" content="" />
    <meta name="keywords" content="best legal advice" />
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-md">
            <a class="navbar-brand" href="index.jsp">
                <img src="resource/legalcore-logo.png" alt=""> <span id="logo">LegalCore</span>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar" >
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <div class="navbar-nav ml-auto">
                    <p>
                        <i class="fa-solid fa-mobile-screen-button"></i>
                        <a href="tel:8383919101">8383919101</a> ,
                        <a href="tel:7817072906">7817072906</a>
                    </p>
                </div>
            </div>
        </nav>
        <%
		String name=(String)session.getAttribute("name");
		String email=(String)session.getAttribute("email");
		if(email==null){
		%>
			<nav id="my-nav">
	            <a href="index.jsp">Home</a>
	            <a href="Advocate.jsp">Advocate</a>
	            <a href="User.jsp">User</a>
        	</nav>
		<%	
		}else{
		%>
			<nav id="my-nav">
	            <a href="UserHome.jsp">Home</a>
	            <a href="Logout">Logout</a>
	            <span>Welcome: <b> <%=name %> </b> </span>
	            <img src="GetPhoto?email=<%=email%>&type=user" alt="" height="50px" />
	        </nav>
		<%	
		}
		%>
        <div data-aos="fade-right" data-aos-duration="1000">
            <h1>Trust And <br/> <span>Client Focus</span></h1>
            <p>
                Believing in the power of law to make people lives better
                <br/> Experienced lawyers at your service  
            </p>
        </div>
        <form action="SearchAdvocate" method="post" >
            <div class="row">
              <div class="col-sm my-2">
                <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fa-solid fa-user"></i></span>
                    </div>
                    <select name="category" class="form-control" >
                    	<option>Crime</option>
                    	<option>Property</option>
                    	<option>Company</option>
                    </select>
                </div>
              </div>
              <div class="col-sm my-2">
                <button class="btn btn-primary" type="submit">Search</button>
              </div>
            </div>
        </form>
    </header>
    <section id="c-card">
        <div class="row my-1">
            <div class="col">
                <div class="card p-3">
                    <div class="row">
                        <div class="col-1 pt-2">
                            <i class="fa-solid fa-bell fa-xl "></i> 
                        </div>
                        <div class="col">
                            <h4>CRIME</h4>
                            <p>Article 22 of the Constitution of India provides that any person who has been arrested shall not be denied the right to consult and to be defended by, a legal practitioner of his choice. This provision empowers the arrested person to get legal assistance as a matter of Fundamental Right as soon as he has been arrested.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card p-3">
                    <div class="row">
                        <div class="col-1 pt-2">
                            <i class="fa-solid fa-bell fa-xl "></i> 
                        </div>
                        <div class="col">
                            <h4>PROPERTY</h4>
                            <p>The legal opinion is meant to favor the buyer's interest. These legal opinions can tell the buyer if the buyer is a worthy one or not. A good lawyer can provide the buyer with the best details of the paperwork. A competent lawyer also saves the buyer from future tangles that comes with the property investment.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card p-3">
                    <div class="row">
                        <div class="col-1 pt-2">
                            <i class="fa-solid fa-bell fa-xl "></i> 
                        </div>
                        <div class="col">
                            <h4>COMPANY</h4>
                            <p>A legal opinion is a formal letter from your company's corporate counsel to the investors containing counsel's conclusions about various legal matters relevant to the company and the transaction, based on counsel's review of a defined body of documents and information.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="container-fluid c-light-blue-bg p-5">
        <div class="row"  data-aos="zoom-in" data-aos-duration="1000">
            <div class="col">
                <div class="row">
                    <div class="col-2 pt-2">
                        <i class="fa-solid fa-bullhorn fa-2xl "></i> 
                    </div>
                    <div class="col">
                        <h4>ACCOUNCEMENT</h4>
                        <p>Fees to be Charged for filing a case is 3000 for now !!!</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="row">
                    <div class="col-2 pt-2">
                        <i class="fa-solid fa-notification  fa-2xl"></i>
                    </div>
                    <div class="col">
                        <h4>NOTIFICATION</h4>
                        <p>Some new Experienced Lawyer's recently got Registered themselves.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="container my-4">
        <div class="row">
            <div class="col-md p-3"  data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100">
                <h3>Latest<br/>News</h3>
                <p><small>Important News Covered in this Section</small></p>
            </div>
            <div class="col-md p-3 border" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="300">
                <img src="resource/hindu.jpg" class="img-fluid" alt="">
                <h4 style="text-align:center">The Hindu</h4>
                <p><small>Custodial interrogation not needed cannot be sole ground to grant anticipatory bail, says Supreme Court
27 October  2022</small></p>
            </div>
            <div class="col-md p-3 pt-5" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="600">
                <h4 style="text-align:center">The Indian Express</h4>
                <p><small>MHT CET 2022: Provisional merit list for 3-year LLB released; here's how to check</small></p>
                <p class="text-center"><i class="fa-solid fa-plus fa-4x"></i></p>
            </div>
            <div class="col-md p-3 border" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="900">
                <img src="resource/times.png" class="img-fluid" alt="">
                <h4 style="text-align:center">The Times of India</h4>
                <p><small>Hearing on former mayor’s petition challenging bypoll now on Wednesday</small></p>
            </div>
        </div>
    </section>
    <section class="container-fluid c-light-blue-bg p-5 mt-5">
        <div class="row">
            <div class="col-md p-3">
                <h5>About Us &nbsp;&nbsp;&nbsp; <small><i class="fa-solid fa-circle"></i></small></h5>
                <p>
                   LegalCore Web itself signifies the that it is Web Application web on which we will provide a lot of facilities so that the registered User can communicate/make calls with the registered Advocate and ask for the help related to his or her problems which include legal advice related to Crime, Company, Property Cases. 
                    <br/><br/>Basically we can say they do live chat but instead of that we have provide many more features to it. CHECK IT OUT !
                </p>
                <a class="c-social" href=""><i class="fa-brands fa-facebook"></i></a>
                <a class="c-social" href=""><i class="fa-brands fa-instagram-square"></i></a>
                <a class="c-social" href=""><i class="fa-brands fa-youtube"></i></a>
            </div>
            <div class="col-md p-3">
                <h5>Testnomials &nbsp;&nbsp;&nbsp; <small><i class="fa-solid fa-circle"></i></small></h5>
                <div class="bg-light p-3">
                    <div class="row">
                        <div class="col">
                            <img class="img-fluid rounded" src="resource/legal-support.jpg" alt="">
                        </div>
                        <div class="col">
                            <p><b>LegalCore Team</b></p>
                            <p>4 Members</p>
                        </div>
                    </div>
                    <br>
                    <p>Best Online Legal Aid website found till date with such a Great consistency, colours, typography, imagery, simplicity, and functionality.
                    <br>Specially the Nature of Lawyers are Very Humble.</p>
                </div>
                
            </div>
            <div class="col-md p-3">
                <h5>Find Our Office &nbsp;&nbsp;&nbsp; <small><i class="fa-solid fa-circle"></i></small></h5>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3507.552467164961!2d77.4885046150525!3d28.462904282485038!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cc1e055d148a1%3A0x9f5207f7f0bc8f63!2sNoida%20Institute%20of%20Engineering%20and%20Technology!5e0!3m2!1sen!2sin!4v1667879128219!5m2!1sen!2sin"  style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                <br/><br/>
                <p><i class="fa-solid fa-location-dot"></i> 5th Floor,N.I.E.T Academic Block, Greater Noida, UP </p>
                <p><i class="fa-solid fa-phone"></i> 7817072906 , 8383919101 </p>
                <p><i class="fa-solid fa-envelope"></i> info@legalcore.com </p>
            </div>
            <div class="col-md p-3">
                <h5>Recent Bills &nbsp;&nbsp;&nbsp; <small><i class="fa-solid fa-circle"></i></small></h5>
                <div class="row">
                    <div class="col">
                        <img class="img-fluid" src="resource/family.jpg" alt="">
                    </div>
                    <div class="col">
                        <p><b>The Family Courts (Amendment) Bill, 2022</b></p>
                      <br><br>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <img class="img-fluid" src="resource/antartic.jpg" alt="">
                    </div>
                    <div class="col">
                        <p><b>The Indian Antarctic Bill, 2022</b></p>
                       <br><br>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <img class="img-fluid" src="resource/criminal.jpg" alt="">
                    </div>
                    <div class="col">
                        <p><b>The Criminal Procedure (Identification) Bill, 2022</b></p>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer class="container-fluid bg-dark p-4">
        <nav class="navbar text-white">
            <span>&copy; All rights reserved</span>
            <div>
                <a class="text-white" href="Admin.jsp">Admin</a>
            </div>
        </nav>
    </footer>
    <a id="c-top" ><i class="fa-solid fa-circle-up fa-3x"></i></a>
</body>
<script>
    AOS.init();
    //Script for Scroll to Top button for hide and show
    $(window).scroll(function() {
          if ($(this).scrollTop()) {
              $('#c-top').fadeIn();
          } else {
              $('#c-top').fadeOut();
          }
      });
    //script for scroll to top
    $("#c-top").click(function () {
        $("html, body").animate({scrollTop: 0}, 1000);
    });

</script>  
</html>

