<?php
	/* CHEMINS */
	define('DS', '/'); //DIRECTORY_SEPARATOR
	define('ROOT', dirname(dirname(__FILE__)));


	/* BASE DE DONNEE */
	define('CONST_DB_HOST', "localhost");
	//define('CONST_DB_PORT', "8098");
	//define('CONST_DB_PORT', "3307");
	define('CONST_DB_NAME', "naturopathe");
	define('CONST_DB_USER', "root");
	define('CONST_DB_PASS', "root");
	
	/* PARAMETRES */
	define('AFFICHER_ERREURS', true);
	define('PAGE_DEFAUT', 'accueil');
	define('TIMEOUT_CONNEXION', 2592000);
	define('TIMEOUT_MOBILE_SESSION', 3600);
	define('NB_ELEMENT_PAGE', 10);
	define('NB_ELEMENT_PAGE_LISTE_STATISTIQUES', 15);
	define('NB_TENTATIVE_SOUMISSION', 5);
	define('TEMPS_AVANT_NOUVELLE_TENTATIVE_SOUMISSION', 5);
	define('TAILLE_MINIMAL_PASSWORD', 6);
	define('NB_MAX_PHOTOS_GALERIE', 10);

    /* CHAINES */
    define('NOM_PAGE_DEFAUT', '');
    define('DESCRIPTION_DEFAUT', '');
    define('KEYWORDS_DEFAUTS', '');

    /* PATH  */
    define('STYLE_CSS', 'vue/css/style.css');
    define('IMAGES_STYLE', './vue/images/');
    define('ADRESSE_ABSOLUE_URL', 'http://localhost:8098/naturopathe/');

    /* INCLUSION DE FICHIERS CONF */
    require_once('pages_existantes.php');
    require_once('upload_file_config.php');
    require_once('code_retour.php');


    /* CONSTANTES TAILLES CHAMPS FORMULAIRES CONTACT */
    define('INPUT_LENGTH_NAME', 30);
    define('INPUT_LENGTH_FIRSTNAME', 30);
    define('INPUT_LENGTH_EMAIL', 100);
    define('INPUT_LENGTH_SUBJECT', 50);
    define('INPUT_LENGTH_MESSAGE', 500);

?>