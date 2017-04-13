 <!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="<?php echo ADRESSE_ABSOLUE_URL . STYLE_CSS; ?>">
		<link rel="icon" href="<?php echo ADRESSE_ABSOLUE_URL; ?>vue/images/favicon.ico" />
		<meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="TODO">
		<meta name="keywords" content="TODO">
		<meta name="Author" content="Kristen VIGUIER and Lucas GiCQUEL" />

		<title>La naturopathie</title>
	</head>
<body>
	<section class="corps">
	
	<header>
		 <ul>
			<li><a href="<?php echo ADRESSE_ABSOLUE_URL; ?>accueil" <?php if ($page == 'accueil') echo 'class="active"'; ?>>Accueil</a></li>
			<li><a href="<?php echo ADRESSE_ABSOLUE_URL; ?>galerie" <?php if ($page == 'galerie') echo 'class="active"'; ?>>Galerie photos</a></li>
			<li><a href="<?php echo ADRESSE_ABSOLUE_URL; ?>contact" <?php if ($page == 'contact') echo 'class="active"'; ?>>Contact</a></li>
			<li><a href="<?php echo ADRESSE_ABSOLUE_URL; ?>presentation" <?php if ($page == 'presentation') echo 'class="active"'; ?>>Qui suis-je ?</a></li>
		</ul>
		<?php
			// Si c'est un admin 
			if(isset($_SESSION['id']) && $_SESSION['id'] == 1){
				echo '
				<div class="dropdown">
					<button class="dropbtn">Menu Admin</button>
					<div class="dropdown-content">
						<a href="' . ADRESSE_ABSOLUE_URL . 'dashboard">Dashboard</a>
						<a href="' . ADRESSE_ABSOLUE_URL . 'gestionAccueil">Gestion accueil</a>
						<a href="' . ADRESSE_ABSOLUE_URL . 'gestionGalerie">Gestion galerie</a>
						<a href="' . ADRESSE_ABSOLUE_URL . 'gestionContact">Gestion contact</a>
						<a href="' . ADRESSE_ABSOLUE_URL . 'gestionPresentation">Gestion présentation</a>
						<a href="' . ADRESSE_ABSOLUE_URL . 'gestionCompte">Gestion compte</a>
						<a href="' . ADRESSE_ABSOLUE_URL . 'deconnexion" style="color:blue;">Déconnexion</a>
					</div>
				</div> 	
				';
			}	
		?>	
	</header>