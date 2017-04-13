<?php
	/**** SESSION ****/
	session_start();

	/**** CLASS CONTROLEUR ****/
    require_once('class/t_texte.php');

    require_once('class/c_session.php');
    require_once('class/c_utilisateur.php');

	/**** MODELE ****/
	require_once('modele/m_session.php');
	require_once('modele/m_admin.php');
	
	/**** OBJETS ****/
	$m_session = new m_session($base_de_donnee);
	$c_session = new c_session($m_session, $t_texte);

	$m_admin = new m_admin($base_de_donnee);
	$c_utilisateur = new c_utilisateur($m_admin);

	/**** VERIF SESSION ****/
	$c_session->session();

    if($_SESSION['id'] == 0) header('Location: accueil');

    $c_utilisateur->deconnexion();

    $nom_page = 'Déconnexion - '.NOM_PAGE_DEFAUT;
?>