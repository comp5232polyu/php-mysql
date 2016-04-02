<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<title><?php echo $site_title; ?></title>

	<!-- Google fonts -->
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700' rel='stylesheet' type='text/css'>

	<!-- font awesome -->
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

	<!-- bootstrap -->
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />

	<!-- animate.css -->
	<link rel="stylesheet" href="assets/animate/animate.css" />
	<link rel="stylesheet" href="assets/animate/set.css" />

	<!-- gallery -->
	<link rel="stylesheet" href="assets/gallery/blueimp-gallery.min.css">

	<!-- favicon -->
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	
	<!-- css -->
	<link rel="stylesheet" href="assets/style.css">
</head>

<body>
<div class="topbar animated fadeInLeftBig"></div>

<!-- Header Starts -->
<div class="navbar-wrapper">
      <div class="container">

        <div class="navbar navbar-default navbar-fixed-top" role="navigation" id="top-nav">
          <div class="container">
            <div class="navbar-header">
              <!-- Logo Starts -->
              <a class="navbar-brand" href="#works">
                <img src="images/company_logo.png" alt="logo">
                </a>
              <!-- #Logo Ends -->

              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
            </div>

            <!-- Nav Starts -->
            <div class="navbar-collapse  collapse">
              <ul class="nav navbar-nav navbar-right scroll">
                 <li class="active"><a href="#works">Home</a></li>
                 <li ><a href="#about">About</a></li>
                 <li ><a href="#partners">Partners</a></li>
                 <!--<li ><a href="mailto:comp5232polyu@gmail.com">Contact</a></li>-->
              </ul>
            </div>
            <!-- #Nav Ends -->

          </div>
        </div>

      </div>
    </div>
<!-- #Header Starts -->

<!-- works -->
<div id="works"  class=" clearfix grid">     
    <?php foreach($items as $item) {  ?>
		<figure class="effect-oscar  wowload fadeInUp">
			<img src="static/images/<?php echo $item->IMGSRC ?>"/>
			<figcaption>
				<h2><?php echo $item->TITLE; ?></h2>
				<p><a href="desc3?id=<?php echo $item->ID ?>">View more</a></p>
			</figcaption>
		</figure>
	<?php } ?>    
</div>
<!-- works -->

<!-- Cirlce Starts -->
<div id="about"  class="container spacer about">
<h2 class="text-center wowload fadeInUp">Enjoy Every Childhood Moment</h2>  
  <div class="row">
  <div class="col-sm-6 wowload fadeInLeft">
    <h4><i class="fa fa-paint-brush"></i>Who are we?</h4>
    <p align="justify">Cool Toy Store was found in 2015 April by 5 young men who are enthusiastic in collecting toy figures. We believe there is a vitality in toys as every tiny piece of toy brings us invaluable childhood memories and fun. We also love to share our experiences & joy in playing toy figures so we decided to create an online toy platforms to let the toy lovers to be able to explore their favorite toy collection in here. Providing affordable and high quality of toy pieces has been a goal of our company. We mainly sell action figures of different Japanese comic characters and also sell other kinds of toys like radio controlled cars and Lego, etc. To ensure the quality of the products we sell, we also provide certificate along with every pieces of toy we sold.</p>
    
  </div>
  <div class="col-sm-6 wowload fadeInRight">
  <h4><i class="fa fa-code"></i>What are we selling?</h4>
  <p align="justify">In our online toy platform, we collect the most latest & hot news about the toy industry, we also provide pictures / videos of every trendy toy products that we sell. 
Customers are able to receive first-hand information about the current toy trend and products that we offered in our retail stores.
We mainly source our toys from a few wholesale toy manufacturers in Japan and we also source vintage toys with some vintage toys collectors.
We aim to provide superior customer service/after service to our customers so we tend to share a little bit more background information of the toy products we sold, the knowledge of how to keep the toy in good condition and even offer free toy maintenance service to customers.
We also understand how important to communicate with our fans, so we have launched a number of campaigns and competitions last year e.g. Star war figures cosplay contest2015 and Radio-controlled car competition2015 which aim to promote the toy culture in Hong Kong. And it receives much positive feedback from our fans. Our retail toy store is currently located in Shum shui po which is operated since 2015 April. In 2016 January, we have a business expansion and opened our second retail shop in Mongkok.
</p>    
  </div>
  </div>
</div>
<!-- #Cirlce Ends -->

<!-- About Starts -->
<div class="highlight-info">
<div class="overlay spacer">
<div class="container">
<div class="row text-center  wowload fadeInDownBig">
  <div class="col-sm-3 col-xs-6">
  <i class="fa fa-smile-o  fa-5x"></i><h4>24 Clients</h4>
  </div>
  <div class="col-sm-3 col-xs-6">
  <i class="fa fa-rocket  fa-5x"></i><h4>1000 Toys</h4>
  </div>
  <div class="col-sm-3 col-xs-6">
  <i class="fa fa-cloud-download  fa-5x"></i><h4>500 Downloads</h4>
  </div>
  <div class="col-sm-3 col-xs-6">
  <i class="fa fa-map-marker fa-5x"></i><h4>2 Shops</h4>
  </div>
</div>
</div>
</div>
</div>
<!-- About Ends -->


<div id="partners" class="container spacer ">
	<h2 class="text-center  wowload fadeInUp">Some of our happy clients</h2>
  <div class="clearfix">
    <div class="col-sm-4 partners  wowload fadeInLeft">
         <a href="http://www.ibm.com/cloud-computing/bluemix/" target="_blank"><img src="images/partners/bluemix.png" alt="IBM Bluemix" style="width:300px;height:110px"></a>
         <a href="https://github.com/" target="_blank"><img src="images/partners/github.png" alt="Github" style="width:240px;height:80px"></a>
    </div>
    <div class="col-sm-6">

    <div id="carousel-testimonials" class="carousel slide testimonails  wowload fadeInRight" data-ride="carousel">
    <div class="carousel-inner">  
      <div class="item active animated bounceInRight row">
      <div class="animated slideInLeft col-xs-2"><img alt="portfolio" src="images/team/1.jpg" width="100" class="img-circle img-responsive"></div>
      <div  class="col-xs-10">
      <p> I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. </p>      
      <span>Angel Smith - <b>eshop Canada</b></span>
      </div>
      </div>
      <div class="item  animated bounceInRight row">
      <div class="animated slideInLeft col-xs-2"><img alt="portfolio" src="images/team/2.jpg" width="100" class="img-circle img-responsive"></div>
      <div  class="col-xs-10">
      <p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.</p>
      <span>John Partic - <b>Crazy Pixel</b></span>
      </div>
      </div>
      <div class="item  animated bounceInRight row">
      <div class="animated slideInLeft  col-xs-2"><img alt="portfolio" src="images/team/3.jpg" width="100" class="img-circle img-responsive"></div>
      <div  class="col-xs-10">
      <p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue.</p>
      <span>Harris David - <b>Jet London</b></span>
      </div>
      </div>
  </div>

   <!-- Indicators -->
   	<ol class="carousel-indicators">
    <li data-target="#carousel-testimonials" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-testimonials" data-slide-to="1"></li>
    <li data-target="#carousel-testimonials" data-slide-to="2"></li>
  	</ol>
  	<!-- Indicators -->
  </div>
    </div>
  </div>


<!-- team -->
<h3 class="text-center  wowload fadeInUp">Our team</h3>
<p class="text-center  wowload fadeInLeft">Our energetic team that is making everything possible</p>
<div class="row grid team wowload fadeInUpBig">
	
	<div class=" col-sm-2 col-xs-4" >
	<figure class="effect-chico">
        <img src="images/team/12.jpg" alt="img01" class="img-responsive" />
        <figcaption style="font-size: 1em">
            <p><b>Sunny Lau</b><br>CEO</p>            
        </figcaption>
    </figure>
    </div>
	
	<div class=" col-sm-2 col-xs-4">
	<figure class="effect-chico">
        <img src="images/team/19.jpg" alt="img01" class="img-responsive" />
        <figcaption style="font-size: 1em">
            <p><b>Aris Leung</b><br>CEO</p>             
        </figcaption>
    </figure>
    </div>
	
	<div class=" col-sm-2 col-xs-4">
	<figure class="effect-chico">
        <img src="images/team/10.jpg" alt="img01" class="img-responsive" />
        <figcaption style="font-size: 1em">
            <p><b>Philip Yip</b><br>Merchandizing Manager</p>            
        </figcaption>
    </figure>
    </div>

	<div class=" col-sm-2 col-xs-4">
	<figure class="effect-chico">
        <img src="images/team/8.jpg" alt="img01" class="img-responsive" />
        <figcaption style="font-size: 1em">
            <p><b>Yoyo Yiu</b><br>Account & Budget Manager</p>                    
        </figcaption>
    </figure>
    </div>
	
		<div class=" col-sm-2 col-xs-4">
	<figure class="effect-chico">
        <img src="images/team/17.jpg" alt="img01" class="img-responsive" />
        <figcaption style="font-size: 1em">
            <p><b>Becky Yeung</b><br>Sales & Marketing Manager</p>            
        </figcaption>
    </figure>
    </div>
	
</div>
<!-- team -->

</div>

<!-- Footer Starts -->
<div class="footer text-center spacer">
<p class="wowload flipInX">
<a href="http://www.facebook.com/coolstorehk" target="_blank"><i ><img src="images/facebook.png" style="width:51px;height=34px"/></i></a><a href="mailto:comp5232polyu@gmail.com" target="_blank"><i ><img src="images/email_logo.png" style="width:40px;height=30px"/></i></a>
</p>
Copyright 2016 Cool Toy Store. All rights reserved.
</div>
<!-- # Footer Ends -->
<a href="#works" class="gototop "><i class="fa fa-angle-up  fa-3x"></i></a>

<!-- jquery -->
<script src="assets/jquery.js"></script>

<!-- wow script -->
<script src="assets/wow/wow.min.js"></script>


<!-- boostrap -->
<script src="assets/bootstrap/js/bootstrap.js" type="text/javascript" ></script>

<!-- jquery mobile -->
<script src="assets/mobile/touchSwipe.min.js"></script>
<script src="assets/respond/respond.js"></script>

<!-- gallery -->
<script src="assets/gallery/jquery.blueimp-gallery.min.js"></script>

<!-- custom script -->
<script src="assets/script.js"></script>

</body>
</html>
