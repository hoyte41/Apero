	<footer>
		<p style="text-align: center;">Copyright © 2017 <br />GICQUEL Lucas & VIGUIER Kristen</p>
	</footer>
</section>
	<script src="<?php echo ADRESSE_ABSOLUE_URL.'vue/js/jquery.js'; ?>"></script>
	<script src="<?php echo ADRESSE_ABSOLUE_URL.'vue/js/bbcode.js'; ?>"></script>
	<?php
		if($_SESSION['id'] != 0) {
			echo '<script src="' . ADRESSE_ABSOLUE_URL.  'vue/js/confirmationSuppression.js"></script>';
		}
	
		if($page == 'galerie'){
			echo '<script src="' . ADRESSE_ABSOLUE_URL . 'vue/js/galerie_carousel_ajax.js"></script>';
		}
	?>
</body>
</html>