{extends file="layout.tpl"}

{block name=container}

	<!-- Header -->
	<header id="header">
		<!-- Logo -->
		<div id="logo"><img src="/img/logo.jpg" alt=""></div>
		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><a href="#intro">Inicio</a></li>
				<li><a href="#one">Caracteristicas</a></li>
				<li><a href="#two">Modo de uso</a></li>
				<li><a href="#three">Ventas corporativas</a></li>
				<li><a href="#four">Quiénes somos?</a></li>
				<li><a href="#last">No estamos solos</a></li>
				<li><a href="#contact">Contacto</a></li>
			</ul>
		</nav>
	</header>

	<!-- Intro -->
	<section id="intro" class="main style1 dark fullscreen">
		<div class="content container 75%">
			{**
			<header>
				<h2>Selfie Pod</h2>
			</header>
			<p>
				Ahora, tomá tus <strong>selfies</strong> a distancia gracias a este <strong>diseño simple, económico y compatible</strong> con todos los celulares.
			</p>
			**}
			<footer>
				<a href="#one" class="button style2 down">More</a>
			</footer>
		</div>
	</section>
	<section id="sliderOne" class="main dark fullscreen">
		<div class="content slider">
			<div class="arrow left"><</div>
			<div class="arrow right">></div>
			<div class="item">
				<img src="http://selfiepod.com.ar/img/sliders/01.jpg" alt="">
			</div>
			<div class="item hide">
				<img src="http://selfiepod.com.ar/img/sliders/02.jpg" alt="">
			</div>
			<div class="item hide">
				<img src="http://selfiepod.com.ar/img/sliders/03.jpg" alt="">
			</div>
			<div class="item hide">
				<img src="http://selfiepod.com.ar/img/sliders/04.jpg" alt="">
			</div>
			<div class="item hide">
				<img src="http://selfiepod.com.ar/img/sliders/05.jpg" alt="">
			</div>
			<div class="item hide">
				<img src="http://selfiepod.com.ar/img/sliders/06.jpg" alt="">
			</div>
		</div>
		<a href="#one" class="button style2 down anchored">Next</a>
	</section>

	<!-- One -->
	<section id="one" class="main style2 right dark fullscreen">
		<div class="content box style2">
			<header>
				<h2>Características</h2>
			</header>
			<li>Resistente al agua</li>
			<li>Durable</li>
			<li>Resistente a golpes</li>
			<li>Liviano</li>
			<li>Económico</li>
			<li>Compatible con todos los celulares</li>
			<li>Fácil de guardar</li>
			<li>Brilla en la oscuridad</li>
			<!--
			<header>
				<h2>What I Do</h2>
			</header>
			<p>Lorem ipsum dolor sit amet et sapien sed elementum egestas dolore condimentum.
					Fusce blandit ultrices sapien, in accumsan orci rhoncus eu. Sed sodales venenatis arcu,
					id varius justo euismod in. Curabitur egestas consectetur magna.
			</p>
			-->
		</div>
		<a href="#two" class="button style2 down anchored">Next</a>
	</section>

	<!-- Two -->
	<section id="two" class="main style2 left dark fullscreen">
		<div class="content box style2">
			<header>
				<h2>Modo de uso</h2>
			</header>
			<p>
				1°: Desplegar el SelfiePod. <br>
				2°: Colocar el celular en el broche. <br>
				3°: Utilizando el timer de la cámara, elegir la cantidad de segundos. <br>
			</p>
		</div>
		<a href="#three" class="button style2 down anchored">Next</a>
	</section>

	<!-- work -->
	<section id="three" class="main style2 right dark fullscreen">
		<div class="content box style2">
			<header>
				<h2>Ventas corporativas</h2>
			</header>
			<p>
				Selfiepod® es el único producto del rubro de los 'selfie sticks' de producción Nacional. Nuestra matricería produce 3.500 unidades diarias. Es totalmente personalizable, con colores y logo de la empresa. <br>
				Por su bajo costo, puede ser utilizado como un elemento de merchandising, generando presencia marcaria gracias a la popularidad actual de las selfies.
			</p>
		</div>
		<a href="#four" class="button style2 down anchored">Next</a>
	</section>

	<!-- Two -->
	<section id="four" class="main style2 left dark fullscreen">
		<div class="content box style2">
			<header>
				<h2>Quiénes somos?</h2>
			</header>
			<p>
				Somos jóvenes estudiantes que nos une la pasión por crear y emprender. <br>
				Nuestros estudios y experiencia:
				<li>Estudiante de Ingeniería en la UADE, emprendió diversos negocios relacionados con la tecnología. Fundador de Che3d y T-Copters, empresas dedicadas a las Impresoras 3D y filmación aérea con drones. </li>
				<li>Estudiante de Economía Empresarial en la Universidad Torcuato Di Tella.</li>
			</p>
		</div>
		<a href="#last" class="button style2 down anchored">Next</a>
	</section>

	<!-- Intro -->
	<section id="last" class="main style1 dark fullscreen">
		<div class="content container 75%">
			<header>
				<h2>No estamos solos..</h2>
			</header>
			<p>
				Por nuestros principios de <strong>responsabilidad social</strong>, estamos orgullosos de colaborar con la <a target="_blanck" href="http://www.fundacionsteps.org.ar/">Fundación Steps</a> (quienes brindan oportunidades educativas y laborales para personas con discapacidad intelectual) incorporándolos en una etapa del proceso de producción.
			</p>
			<footer>
				<a href="#contact" class="button style2 down">More</a>
			</footer>
		</div>
	</section>
	
	<section id="sliderSecond" class="main dark fullscreen">
		<div class="content slider">
			<div class="arrow left"><</div>
			<div class="arrow right">></div>
			<div class="item">
				<img src="http://selfiepod.com.ar/img/sliders/2-1.jpg" alt="">
			</div>
			<div class="item hide">
				<img src="http://selfiepod.com.ar/img/sliders/2-2.jpg" alt="">
			</div>
			<div class="item hide">
				<img src="http://selfiepod.com.ar/img/sliders/2-3.jpg" alt="">
			</div>
			<div class="item hide">
				<img src="http://selfiepod.com.ar/img/sliders/2-4.jpg" alt="">
			</div>
		</div>
		<a href="#one" class="button style2 down anchored">Next</a>
	</section>

	<!-- Contact -->
			<section id="contact" class="main style3 secondary">
				<div class="content container">
					<header>
						<h2>Contacto</h2>
						<!-- 
						<p>Lorem ipsum dolor sit amet et sapien sed elementum egestas dolore condimentum.</p>
						-->
					</header>
					<div class="box container 75%">

					<!-- Contact Form -->
							<form method="post"  id="formContact" action="javascript:void(0)">
								<div class="row 50%">
									<div class="6u 12u(mobile)"><input type="text" name="name" id="name" placeholder="Nombre" required/></div>
									<div class="6u 12u(mobile)"><input type="email" name="email" id="email" placeholder="Email" required/></div>
								</div>
								<div class="row 50%">
									<div class="12u"><textarea name="message" id="message" placeholder="Mensaje" rows="6"></textarea></div>
								</div>
								<div class="row">
									<div class="12u">
										<ul class="actions">
											<li><input type="submit" value="Enviar consulta" /></li>
										</ul>
									</div>
								</div>
							</form>

					</div>
				</div>
			</section>

		<!-- Footer -->
			<footer id="footer">

				<!-- Icons -->
					<ul class="actions">
						{***
						<li><a href="javascript:void(0)" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="javascript:void(0)" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="javascript:void(0)" class="icon fa-google-plus"><span class="label">Google+</span></a></li>
						<li><a href="javascript:void(0)" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
						<li><a href="javascript:void(0)" class="icon fa-pinterest"><span class="label">Pinterest</span></a></li>
						***}
						<li><a href="https://instagram.com/selfiepod_arg/" target="_blanck" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
					</ul>

				<!-- Menu -->
					<ul class="menu">
						<li>Copyright Selfiepod&copy; 2015</li>
						<!-- 
						<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						-->
					</ul>

			</footer>

		<!-- Scripts -->

{/block}