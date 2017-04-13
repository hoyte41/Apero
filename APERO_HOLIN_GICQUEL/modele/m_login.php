<?php
	class m_login{
		
		private $base_de_donnee;
		
		public function __construct($base_de_donnee){
			$this->base_de_donnee = $base_de_donnee;
		}
	
        public function connexion($compte, $password){
            $connexion = $this->base_de_donnee->prepare('SELECT * FROM utilisateur WHERE login_utilisateur = ? AND password_utilisateur  = ?');
            
            $connexion->bindValue(1, $compte, PDO::PARAM_STR);
			//$connexion->bindValue(2, hash('sha256', $password), PDO::PARAM_STR);
			$connexion->bindValue(2, $password, PDO::PARAM_STR);
            $connexion->execute();
            
			$retour = $connexion->fetch(PDO::FETCH_OBJ);
			$connexion->closeCursor();
     
            return  $retour;  
        }
        
        public function verification_compte_existant($compte){
            $verification_compte_existant = $this->base_de_donnee->prepare('SELECT login_utilisateur FROM utilisateur where login_utilisateur = ?');

            $verification_compte_existant->bindValue(1, $compte, PDO::PARAM_STR);
            $verification_compte_existant->execute();
            
            $retour = $verification_compte_existant->fetch(PDO::FETCH_OBJ);
            $verification_compte_existant->closeCursor();
                
            return $retour;
        }
    }   
?>