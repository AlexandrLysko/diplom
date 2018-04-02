<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>"><head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">

<link rel="stylesheet" href="catalog/view/javascript/jquery/colorbox/colorbox.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/bootstrap3/css/bootstrap.min.css">
<link rel="stylesheet" href="catalog/view/theme/target/stylesheet/stylesheet.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />

<link rel="stylesheet" type="text/css" media="only screen and (max-width: 1200px), only screen and (max-device-width: 1200px)" href="catalog/view/theme/target/stylesheet/stylesheet_1200.css" />
<link rel="stylesheet" type="text/css" media="only screen and (max-width: 800px), only screen and (max-device-width: 800px)" href="catalog/view/theme/target/stylesheet/stylesheet_800.css" />
<link rel="stylesheet" type="text/css" media="only screen and (max-width: 400px), only screen and (max-device-width: 400px)" href="catalog/view/theme/target/stylesheet/stylesheet_400.css" />
<meta name="viewport" content="width=device-width" />

<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/bootstrap3/js/bootstrap.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox-min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/target/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/target/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body>
    <div id="container">
        <div class="container_">
            <div id="header">
                <div id="top"></div>
                <a href="/">
					<div id="logo"></div></a>
				<div class="inf"></div>
             	<div id="noview">
                  <div id="contacts">
                  <span class="adres"> г. Санкт-Петербург<br>Наб. Обводного канала, 23</span>
                  <a href="/contacts"><img src="catalog/view/theme/target/image/minimap.jpg" /></a>
                </div>
              </div>
              <?php echo $cart; ?>                     
                  <div id="welcome">
                    <?php if (!$logged) { ?>
                    <?php echo $text_welcome; ?>
                    <?php } else { ?>
                    <?php echo $text_logged; ?>
                    <?php } ?>
                  </div>
                  <div class="links"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?><a href="/testimonial">Отзывы</a><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
            </div>
				<?php if ($categories) { ?>
		<div id="menu">	
			
<nav role="navigation" class="navbar navbar-expand-lg navbar-inverse ">
 
 <!-- Логотип и мобильное меню -->
	<div class="navbar-header">
	<button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
	    <span class="sr-only">Toggle navigation</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	</button>

	</div>
<!-- Навигационное меню -->
    <div id="navbarCollapse" class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
		   <?php foreach ($categories as $category) { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        
 <!-- Выподающие меню с подпунктами -->
        <li class="dropdown">
			 <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul role="menu" class="dropdown-menu">
           <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                  <?php for (; $i < $j; $i++) { ?>
                  <?php if (isset($category['children'][$i])) { ?>
                  <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
                  <?php } ?>
                  <?php } ?>
        </ul>
			<?php } ?>
      </li>
		   <?php } ?>
    </ul>
<!-- Поиск по сайту -->
		<div class="button-search"></div>
                <input type="text" class="navbar-form navbar-right" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />

    </div>
</nav>

				<?php } ?>
			</div>
        
        <div id="notification"></div>