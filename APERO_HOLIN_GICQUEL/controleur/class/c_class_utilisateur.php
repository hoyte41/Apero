<?php
	class c_class_utilisateur {
		
		private $modele;
		
		public function __construct($p_modele){
			$this->modele = $p_modele;
		}
		
        public function connexion($compte, $password, $retenir) {
			if(!empty($compte) AND !empty($password)) {
				$verification = $this->modele->connexion($compte, $password);
				if(!empty($verification)){
					$_SESSION['id'] = $verification->id;
					$_SESSION['time'] = time();
					return 0;
				}else{
					return 2;
				}
			} else { return 1; }
		}
        
        public function deconnexion() {
            setcookie('u', '', time()+1);
            setcookie('p', '', time()+1);
            
            $_SESSION['id'] = 0;
            session_destroy();
        }
}?>