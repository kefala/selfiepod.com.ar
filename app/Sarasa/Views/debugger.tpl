<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Sarasa Debugger</title>
        <meta name="viewport" content="width=device-width">

        <link href='http://fonts.googleapis.com/css?family=Julius+Sans+One' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="/css/grid960/reset.css">
        <link rel="stylesheet" href="/css/dialogs.css">
        <script src="/js/vendor/modernizr-2.6.2.min.js"></script>

        <style type="text/css">
		body {
			font-family: 'Julius Sans One', sans-serif;
			padding: 20px 50px;
		}
		h1 {
			line-height: 4.2em;
			color: #666;
		}
		h1 img {
			float: left;
		}
		h1 span {
			font-size: 3em;
			float: left;
			margin: 0 0.3em;
			color: #000;
		}
		[class^="icon-"],
		[class*=" icon-"] {
		  display: inline-block;
		  width: 14px;
		  height: 14px;
		  *margin-right: .3em;
		  line-height: 14px;
		  vertical-align: text-top;
		  background-image: url("/img/glyphicons-halflings.png");
		  background-position: 14px 14px;
		  background-repeat: no-repeat;
		  margin-top: 1px;
		}
		/* White icons with optional class, or on hover/focus/active states of certain elements */
		.icon-white,
		.nav-pills > .active > a > [class^="icon-"],
		.nav-pills > .active > a > [class*=" icon-"],
		.nav-list > .active > a > [class^="icon-"],
		.nav-list > .active > a > [class*=" icon-"],
		.navbar-inverse .nav > .active > a > [class^="icon-"],
		.navbar-inverse .nav > .active > a > [class*=" icon-"],
		.dropdown-menu > li > a:hover > [class^="icon-"],
		.dropdown-menu > li > a:focus > [class^="icon-"],
		.dropdown-menu > li > a:hover > [class*=" icon-"],
		.dropdown-menu > li > a:focus > [class*=" icon-"],
		.dropdown-menu > .active > a > [class^="icon-"],
		.dropdown-menu > .active > a > [class*=" icon-"],
		.dropdown-submenu:hover > a > [class^="icon-"],
		.dropdown-submenu:focus > a > [class^="icon-"],
		.dropdown-submenu:hover > a > [class*=" icon-"],
		.dropdown-submenu:focus > a > [class*=" icon-"] {
		  background-image: url("/img/glyphicons-halflings-white.png");
		}
		.icon-glass {
		  background-position: 0      0;
		}
		.icon-music {
		  background-position: -24px 0;
		}
		.icon-search {
		  background-position: -48px 0;
		}
		.icon-envelope {
		  background-position: -72px 0;
		}
		.icon-heart {
		  background-position: -96px 0;
		}
		.icon-star {
		  background-position: -120px 0;
		}
		.icon-star-empty {
		  background-position: -144px 0;
		}
		.icon-user {
		  background-position: -168px 0;
		}
		.icon-film {
		  background-position: -192px 0;
		}
		.icon-th-large {
		  background-position: -216px 0;
		}
		.icon-th {
		  background-position: -240px 0;
		}
		.icon-th-list {
		  background-position: -264px 0;
		}
		.icon-ok {
		  background-position: -288px 0;
		}
		.icon-remove {
		  background-position: -312px 0;
		}
		.icon-zoom-in {
		  background-position: -336px 0;
		}
		.icon-zoom-out {
		  background-position: -360px 0;
		}
		.icon-off {
		  background-position: -384px 0;
		}
		.icon-signal {
		  background-position: -408px 0;
		}
		.icon-cog {
		  background-position: -432px 0;
		}
		.icon-trash {
		  background-position: -456px 0;
		}
		.icon-home {
		  background-position: 0 -24px;
		}
		.icon-file {
		  background-position: -24px -24px;
		}
		.icon-time {
		  background-position: -48px -24px;
		}
		.icon-road {
		  background-position: -72px -24px;
		}
		.icon-download-alt {
		  background-position: -96px -24px;
		}
		.icon-download {
		  background-position: -120px -24px;
		}
		.icon-upload {
		  background-position: -144px -24px;
		}
		.icon-inbox {
		  background-position: -168px -24px;
		}
		.icon-play-circle {
		  background-position: -192px -24px;
		}
		.icon-repeat {
		  background-position: -216px -24px;
		}
		.icon-refresh {
		  background-position: -240px -24px;
		}
		.icon-list-alt {
		  background-position: -264px -24px;
		}
		.icon-lock {
		  background-position: -287px -24px;
		}
		.icon-flag {
		  background-position: -312px -24px;
		}
		.icon-headphones {
		  background-position: -336px -24px;
		}
		.icon-volume-off {
		  background-position: -360px -24px;
		}
		.icon-volume-down {
		  background-position: -384px -24px;
		}
		.icon-volume-up {
		  background-position: -408px -24px;
		}
		.icon-qrcode {
		  background-position: -432px -24px;
		}
		.icon-barcode {
		  background-position: -456px -24px;
		}
		.icon-tag {
		  background-position: 0 -48px;
		}
		.icon-tags {
		  background-position: -25px -48px;
		}
		.icon-book {
		  background-position: -48px -48px;
		}
		.icon-bookmark {
		  background-position: -72px -48px;
		}
		.icon-print {
		  background-position: -96px -48px;
		}
		.icon-camera {
		  background-position: -120px -48px;
		}
		.icon-font {
		  background-position: -144px -48px;
		}
		.icon-bold {
		  background-position: -167px -48px;
		}
		.icon-italic {
		  background-position: -192px -48px;
		}
		.icon-text-height {
		  background-position: -216px -48px;
		}
		.icon-text-width {
		  background-position: -240px -48px;
		}
		.icon-align-left {
		  background-position: -264px -48px;
		}
		.icon-align-center {
		  background-position: -288px -48px;
		}
		.icon-align-right {
		  background-position: -312px -48px;
		}
		.icon-align-justify {
		  background-position: -336px -48px;
		}
		.icon-list {
		  background-position: -360px -48px;
		}
		.icon-indent-left {
		  background-position: -384px -48px;
		}
		.icon-indent-right {
		  background-position: -408px -48px;
		}
		.icon-facetime-video {
		  background-position: -432px -48px;
		}
		.icon-picture {
		  background-position: -456px -48px;
		}
		.icon-pencil {
		  background-position: 0 -72px;
		}
		.icon-map-marker {
		  background-position: -24px -72px;
		}
		.icon-adjust {
		  background-position: -48px -72px;
		}
		.icon-tint {
		  background-position: -72px -72px;
		}
		.icon-edit {
		  background-position: -96px -72px;
		}
		.icon-share {
		  background-position: -120px -72px;
		}
		.icon-check {
		  background-position: -144px -72px;
		}
		.icon-move {
		  background-position: -168px -72px;
		}
		.icon-step-backward {
		  background-position: -192px -72px;
		}
		.icon-fast-backward {
		  background-position: -216px -72px;
		}
		.icon-backward {
		  background-position: -240px -72px;
		}
		.icon-play {
		  background-position: -264px -72px;
		}
		.icon-pause {
		  background-position: -288px -72px;
		}
		.icon-stop {
		  background-position: -312px -72px;
		}
		.icon-forward {
		  background-position: -336px -72px;
		}
		.icon-fast-forward {
		  background-position: -360px -72px;
		}
		.icon-step-forward {
		  background-position: -384px -72px;
		}
		.icon-eject {
		  background-position: -408px -72px;
		}
		.icon-chevron-left {
		  background-position: -432px -72px;
		}
		.icon-chevron-right {
		  background-position: -456px -72px;
		}
		.icon-plus-sign {
		  background-position: 0 -96px;
		}
		.icon-minus-sign {
		  background-position: -24px -96px;
		}
		.icon-remove-sign {
		  background-position: -48px -96px;
		}
		.icon-ok-sign {
		  background-position: -72px -96px;
		}
		.icon-question-sign {
		  background-position: -96px -96px;
		}
		.icon-info-sign {
		  background-position: -120px -96px;
		}
		.icon-screenshot {
		  background-position: -144px -96px;
		}
		.icon-remove-circle {
		  background-position: -168px -96px;
		}
		.icon-ok-circle {
		  background-position: -192px -96px;
		}
		.icon-ban-circle {
		  background-position: -216px -96px;
		}
		.icon-arrow-left {
		  background-position: -240px -96px;
		}
		.icon-arrow-right {
		  background-position: -264px -96px;
		}
		.icon-arrow-up {
		  background-position: -289px -96px;
		}
		.icon-arrow-down {
		  background-position: -312px -96px;
		}
		.icon-share-alt {
		  background-position: -336px -96px;
		}
		.icon-resize-full {
		  background-position: -360px -96px;
		}
		.icon-resize-small {
		  background-position: -384px -96px;
		}
		.icon-plus {
		  background-position: -408px -96px;
		}
		.icon-minus {
		  background-position: -433px -96px;
		}
		.icon-asterisk {
		  background-position: -456px -96px;
		}
		.icon-exclamation-sign {
		  background-position: 0 -120px;
		}
		.icon-gift {
		  background-position: -24px -120px;
		}
		.icon-leaf {
		  background-position: -48px -120px;
		}
		.icon-fire {
		  background-position: -72px -120px;
		}
		.icon-eye-open {
		  background-position: -96px -120px;
		}
		.icon-eye-close {
		  background-position: -120px -120px;
		}
		.icon-warning-sign {
		  background-position: -144px -120px;
		}
		.icon-plane {
		  background-position: -168px -120px;
		}
		.icon-calendar {
		  background-position: -192px -120px;
		}
		.icon-random {
		  background-position: -216px -120px;
		  width: 16px;
		}
		.icon-comment {
		  background-position: -240px -120px;
		}
		.icon-magnet {
		  background-position: -264px -120px;
		}
		.icon-chevron-up {
		  background-position: -288px -120px;
		}
		.icon-chevron-down {
		  background-position: -313px -119px;
		}
		.icon-retweet {
		  background-position: -336px -120px;
		}
		.icon-shopping-cart {
		  background-position: -360px -120px;
		}
		.icon-folder-close {
		  background-position: -384px -120px;
		  width: 16px;
		}
		.icon-folder-open {
		  background-position: -408px -120px;
		  width: 16px;
		}
		.icon-resize-vertical {
		  background-position: -432px -119px;
		}
		.icon-resize-horizontal {
		  background-position: -456px -118px;
		}
		.icon-hdd {
		  background-position: 0 -144px;
		}
		.icon-bullhorn {
		  background-position: -24px -144px;
		}
		.icon-bell {
		  background-position: -48px -144px;
		}
		.icon-certificate {
		  background-position: -72px -144px;
		}
		.icon-thumbs-up {
		  background-position: -96px -144px;
		}
		.icon-thumbs-down {
		  background-position: -120px -144px;
		}
		.icon-hand-right {
		  background-position: -144px -144px;
		}
		.icon-hand-left {
		  background-position: -168px -144px;
		}
		.icon-hand-up {
		  background-position: -192px -144px;
		}
		.icon-hand-down {
		  background-position: -216px -144px;
		}
		.icon-circle-arrow-right {
		  background-position: -240px -144px;
		}
		.icon-circle-arrow-left {
		  background-position: -264px -144px;
		}
		.icon-circle-arrow-up {
		  background-position: -288px -144px;
		}
		.icon-circle-arrow-down {
		  background-position: -312px -144px;
		}
		.icon-globe {
		  background-position: -336px -144px;
		}
		.icon-wrench {
		  background-position: -360px -144px;
		}
		.icon-tasks {
		  background-position: -384px -144px;
		}
		.icon-filter {
		  background-position: -408px -144px;
		}
		.icon-briefcase {
		  background-position: -432px -144px;
		}
		.icon-fullscreen {
		  background-position: -456px -144px;
		}

		#menu {
			font-family: Arial, "Helvetica Neue", Helvetica, sans-serif;
			margin: 2em 1em 0 0;
			font-size: 1.2em;
			float: left;
		}
		#menu li {
			border: 1px solid #DDD;
			border-bottom: 0;
			border-radius: 3px;
			padding: 0.2em 0.6em 0.3em;
			background-color: #F9F9F9;
			cursor: pointer;
			text-shadow: 1px 1px rgba(0,0,0,0.2);
			letter-spacing: 1px;
		}
		#menu li i {
			float: left;
			margin: 0.25em 0.5em 0 0;
		}
		#menu li:hover {
			background-color: #F0F0F0;
		}
		#menu li:last-child {
			border-bottom: 1px solid #DDD;
		}
		#menu li.active {
			font-weight: bold;
		}
		#maincontainer {
			float: left;
			width: 80%;
			overflow: hidden;
		}
		.container {
			font-family: Arial, "Helvetica Neue", Helvetica, sans-serif;
			-webkit-box-shadow: inset 3px 8px 14px rgba(0, 0, 0, 0.1);
			box-shadow: inset 3px 8px 14px rgba(0, 0, 0, 0.1);
			background-color: #F6F6F6;
			float: left;
			padding: 0.3em 1em;
			border-radius: 3px;
			margin-top: 2.2em;
			width: 75%;
			position: absolute;
		}
		.container h1 {
			font-family: 'Julius Sans One', sans-serif;
			font-size: 2.9em;
			color: #000;
			text-align: center;
			text-shadow: 2px 2px rgba(0,0,0,0.2);
			line-height: 2em;
		}
		.container ul li {
			-webkit-box-shadow: inset 3px 8px 14px rgba(0, 0, 0, 0.5);
			box-shadow: inset 3px 8px 14px rgba(0, 0, 0, 0.5);
			background-color: #333;
			padding: 0.4em 1.2em;
			color: #FFF;
			font-size: 0.8em;
			margin-bottom: 1em;
		}
		.container ul li h3 {
			cursor: pointer;
			margin: 1em 0;
		}
		.container ul li .hidden {
			display: none;
			background-color: #F0F0F0;
			color: #555;
			padding: 0.5em 1em;
		}
        </style>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

        <h1><img src="/img/sarasa/logo.png"> <span>sarasa</span> debugger</h1>

		<ul id="menu">
			<li class="active" data-target="warnings"><i class="icon icon-file"></i>Warnings</li>
			<li data-target="server"><i class="icon icon-file"></i>$_SERVER</li>
			<li data-target="database"><i class="icon icon-file"></i>Base de datos</li>
		</ul>

		<div id="maincontainer">

			<div id="warnings" class="container">
				<h1>Warnings</h1>

				<ul>
					{foreach from=$data.warnings item="warning"}
					<li>
						{$warning.message}
						<h3><span>Mostrar</span> contexto</h1>
						<div class="hidden">
							{$warning.context|var_dump:true|nl2br}
						</div>
					</li>
					{foreachelse}
					{/foreach}
				</ul>
			</div>

			<div id="server" class="container" style="margin-left: -100%;">
				<h1>$_SERVER</h1>

				<ul>
				{foreach from=$data._server item="value" key="key"}
					<li><strong>{$key}:</strong> {$value}</li>
				{/foreach}
				</ul>
			</div>

			<div id="database" class="container" style="margin-left: -100%">
				<h1>Base de datos</h1>

				<ul>
					{foreach from=$data.queries item="query"}
					<li>{$query.sql}</li>
					{/foreach}
				</ul>
			</div>

		</div>


		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	    <script>window.jQuery || document.write('<script src="/js/vendor/jquery-1.9.1.min.js"><\/script>')</script>
	    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
	    <script>window.jQuery || document.write('<script src="/js/vendor/jquery-ui-1.10.3.min.js"><\/script>')</script>
	    <script src="/js/vendor/jcarousellite_1.0.1.min.js"></script>

	    <script type="text/javascript">
        (function(){
        	$('.container').on('click', 'ul li h3', function(event) {
        		if ($(this).children('span').text() == 'Mostrar') {
	        		$(this).next('.hidden').slideDown();
	        		$(this).children('span').text('Ocultar');
        		}
        		else {
					$(this).next('.hidden').slideUp();
	        		$(this).children('span').text('Mostrar')
        		}
        	});
        	$('#menu').on('click', 'li:not(.active)', function(event) {
        		$('#menu li.active').removeClass('active');
        		$(this).addClass('active');
        		$('.container').animate({
        			marginLeft: '-100%'
        		});

        		$('#'+$(this).attr('data-target')).animate({
        			marginLeft: 0
        		})
        	});
        })(jQuery);
        </script>
    </body>
</html>