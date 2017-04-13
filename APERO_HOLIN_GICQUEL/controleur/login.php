<?php
session_start();

/**** CLASS CONTROLEUR ****/
	require_once('class/c_class_session.php');
	require_once('class/c_class_texte.php');
	require_once('class/c_class_utilisateur.php');
	require_once('class/c_class_formulaire.php');

/**** MODELE ****/
	require_once('modele/m_login.php');
	require_once('modele/m_session.php');

/**** OBJETS ****/
	$c_class_texte = new c_class_texte();
	$c_class_formulaire = new c_class_formulaire();

	$m_session = new m_session($base_de_donnee);
	$m_login = new m_login($base_de_donnee);
	$c_class_session = new c_class_session($m_session, $c_class_texte);
	$c_class_utilisateur = new c_class_utilisateur($m_login);

/**** VERIF SESSION ****/
	$c_class_session->session();

if(!empty($url_param[0])) {
		if(preg_match('#^[0-9]{1,}$#', $url_param[0])) {
			$num_page = $url_param[0];
		} else { $num_page = 1; }
	} else { $num_page = 1; }



	/* CONTROLE ADMIN */
	if($_SESSION['id'] != 0) {
		header('Location: '.ADRESSE_ABSOLUE_URL.'dashboard');
	}

// formulaire de connexion
	$codeRetour = -1;
	if(isset($_POST['login']) && isset($_POST['password'])){	
		$login = trim($_POST['login']);
		$password = trim($_POST['password']);

		$codeRetour = $c_class_utilisateur->connexion($login, $password, null);

		if($codeRetour == 0){
			header('Location: '.ADRESSE_ABSOLUE_URL.'accueil');
		}
	}
?>