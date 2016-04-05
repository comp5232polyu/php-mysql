<!DOCTYPE html>
<html>
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


<link rel="stylesheet" href="assets/style.css">

  <style type="text/css">
	body {
        padding-top: 100px; /* 60px to make the container go all the way to the bottom of the topbar */	
      }
	 	
	/* Custom container */
      .container-narrow {
        margin: 0 auto;
        max-width: 900px;
	border-style: solid;
	border-color: transparent;
	background-color: #D8D8D8	;
	z-index: 9;
	height : 100%;
	-moz-border-radius: 15px;
	border-radius: 15px;
	
      }
      .container-narrow > hr {
        margin: 30px 0;
      }

	.sidebar-nav {
        padding: 20px 0;
      }
	  
	  img.detail-img{
	   width:800px;
	   height:600px;
	}
	
	 img.sold-out-thumb{
	   width:60px;
	   height:45px;
	}
	
	 img.almost-sold-out-thumb{
	   width:150px;
	   height:50px;
	}

      @media (max-width: 980px) {
        /* Enable use of floated navbar text */
        .navbar-text.pull-right {
          float: none;
          padding-left: 5px;
          padding-right: 5px;
        }
		
  </style>
</head>
<body>
<div class="topbar animated fadeInLeftBig"></div>
<div class="navbar-wrapper">
      <div class="container">

        <div class="navbar navbar-default navbar-fixed-top" role="navigation" id="top-nav">
          <div class="container">
            <div class="navbar-header">
              <!-- Logo Starts -->
              <a class="navbar-brand" href="./#works">
                   
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
                 <li class="active"><a href="./#works">Home</a></li>
                 <li ><a href="./#about">About</a></li>
                 <li ><a href="./#partners">Partners</a></li>
                 <!--<li ><a href="#contact">Contact</a></li>-->
              </ul>
            </div>
            <!-- #Nav Ends -->

          </div>
        </div>

      </div>
    </div>
  
  <div class="container">
  <!-- <table class="table table-hover">
  <tr> -->
  <div class="hero-unit">
  <div>
    <br/><br/>
  <h2><?php echo $item->TITLE   ?>
  <?php if ($item->QUAN < 1) {?>
    <img src="images/sold_out.jpg" class="sold-out-thumb"/>
  <?php }elseif ($item->QUAN < 5){ ?>
    <img src="images/almost_sold_out.jpg" class="almost-sold-out-thumb"/>
	  <?php } ?>
  <h2> 
  </div>
  <br/>
			<img src="/static/images/<?php echo $item->IMGSRC_D1 ?>">
		    <br/><br/><br/><br/>
			<img src="/static/images/<?php echo $item->IMGSRC_D2 ?>">
		    <br/><br/>
		<h3>
			Description: 
		</h3>
	
		<div id="description">
			<?php echo $item->DESCRIPTION ?>
		</div>
		
		<h3>
			Price: 
		</h3>
		
		<div id="price"><?php echo $item->PRICE ?>.00</div>

  

     <br/><br/><br/><br/>
  </div> <!-- end of the hero-unit-->
  </div> <!-- end of the container-->
  
</body>
</html>
