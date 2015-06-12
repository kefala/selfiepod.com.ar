<!DOCTYPE html>
<!--
    Big Picture by HTML5 UP
    html5up.net | @n33co
    Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>{$sarasa.title}</title>
        <meta name="description" content="Ahora, tomá tus selfies a distancia gracias a este diseño simple, económico y compatible con todos los celulares.">
        <meta name="keywords" content="Selfie Pod, Palo de Selfie, Bastón de Selfie, Selfie, Foto, Celular, Resistente al agua, Durable, Resistente a golpes, Liviano, Económico, Compatible con todos los celulares, Fácil de guardar, Brilla en la oscuridad">


        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--[if lte IE 8]><script src="boceto/assets/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="boceto/assets/css/main.css" />
        <!--[if lte IE 8]><link rel="stylesheet" href="boceto/assets/css/ie8.css" /><![endif]-->
        <!--[if lte IE 9]><link rel="stylesheet" href="boceto/assets/css/ie9.css" /><![endif]-->

        {foreach from=$sarasa.css item="css"}
        <link rel="stylesheet" type="text/css"  href="/css/{$css}" media="screen" />
        {/foreach}
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

        <script>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

          ga('create', 'UA-64043526-1', 'auto');
          ga('send', 'pageview');

        </script>

        
        {block name="container"}{/block}
        
        

        
        <script src="boceto/assets/js/jquery.min.js"></script>
        <script src="boceto/assets/js/jquery.poptrox.min.js"></script>
        <script src="boceto/assets/js/jquery.scrolly.min.js"></script>
        <script src="boceto/assets/js/jquery.scrollex.min.js"></script>
        <script src="boceto/assets/js/skel.min.js"></script>
        <script src="boceto/assets/js/util.js"></script>
        <!--[if lte IE 8]><script src="boceto/assets/js/ie/respond.min.js"></script><![endif]-->
        {foreach from=$sarasa.js item="js"}
            <script src="/js/{$js}"></script>
        {/foreach}

        {block name=scripts}{/block}
        <script src="boceto/assets/js/main.js"></script>



        {***if $sarasa.development}{include file="Sarasa/Views/debugbar.tpl"}{/if***}

    </body>
</html>