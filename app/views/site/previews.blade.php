



<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Fullscreen Pageflip Layout with BookBlock</title>
		<meta name="description" content="Fullscreen Pageflip Layout with BookBlock" />
		<meta name="keywords" content="fullscreen pageflip, booklet, layout, bookblock, jquery plugin, flipboard layout, sidebar menu" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico"> 
		<link rel="stylesheet" type="text/css" href="/assets/css/jquery.jscrollpane.custom.css" />
		<link rel="stylesheet" type="text/css" href="/assets/css/bookblock.css" />
		<link rel="stylesheet" type="text/css" href="/assets/css/custom.css" />
		<script src="/assets/js/modernizr.custom.79639.js"></script>
	</head>
	<body>
		<div id="container" class="container">	

			<div class="menu-panel">
				<h3>Table of Contents</h3>
				<ul id="menu-toc" class="menu-toc">
					<li class="menu-toc-current"><a href="#item1">Page 1</a></li>
					<li><a href="#item2">Page 2</a></li>
					<li><a href="#item3">Page 3</a></li>
					<li><a href="#item4">Page 4</a></li>
					<li><a href="#item5">Page 5</a></li>
				</ul>
				<div>
					<a href="http://tympanus.net/Development/AudioPlayer/">&larr; Previous Demo: Responsive Audio Player</a>
					<a href="http://tympanus.net/codrops/?p=12795">Back to the Codrops Article</a>
				</div>
			</div>

			<div class="bb-custom-wrapper">
				<div id="bb-bookblock" class="bb-bookblock">
					<div class="bb-item" id="item1">
						<div class="content">
							<div class="scroller">
							
                                                            <div class="page">
                                                                <img src="/previews/9784798129679_2.jpg" style="width:1500px;" alt=""/>
                                                            </div>

								
							</div>
						</div>
					</div>
					<div class="bb-item" id="item2">
						<div class="content">
							<div class="scroller">
                                                            <div class="page">
                                                                <img src="/previews/9784798129679_3.jpg" style="width:1500px;" alt=""/>
                                                            </div>
							</div>
						</div>
					</div>
					<div class="bb-item" id="item3">
						<div class="content">
							<div class="scroller">
                                                            <div class="page">
                                                                <img src="/previews/9784798129679_4.jpg" style="width:1500px;" alt=""/>
                                                            </div>
							</div>
						</div>
					</div>
					<div class="bb-item" id="item4">
						<div class="content">
							<div class="scroller">
                                                            <div class="page">
                                                                <img src="/previews/9784798129679_5.jpg" style="width:1500px;" alt=""/>
                                                            </div>
							</div>
						</div>
					</div>
					<div class="bb-item" id="item5">
						<div class="content">
							<div class="scroller">
                                                            <div class="page">
                                                                <img src="/previews/9784798129679_6.jpg" style="width:1500px;" alt=""/>
                                                            </div>
							</div>
						</div>
					</div>
				</div>
				
				<nav>
					<span id="bb-nav-prev">&larr;</span>
					<span id="bb-nav-next">&rarr;</span>
				</nav>

				<span id="tblcontents" class="menu-button">Table of Contents</span>

			</div>
				
		</div><!-- /container -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="/assets/js/jquery.mousewheel.js"></script>
		<script src="/assets/js/jquery.jscrollpane.min.js"></script>
		<script src="/assets/js/jquerypp.custom.js"></script>
		<script src="/assets/js/jquery.bookblock.js"></script>
		<script src="/assets/js/page.js"></script>
		<script>
			$(function() {

				Page.init();

			});
		</script>
	</body>
</html>
