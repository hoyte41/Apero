function gras(areaAModifier){
	$(areaAModifier).val($(areaAModifier).val()+'[b][/b]');
}

function italic(areaAModifier){
	$(areaAModifier).val($(areaAModifier).val()+'[i][/i]'); 
}

function souligne(areaAModifier){
	$(areaAModifier).val($(areaAModifier).val()+'[u][/u]'); 
}

function gauche(areaAModifier){
	$(areaAModifier).val($(areaAModifier).val()+'[left][/left]'); 
}

function centré(areaAModifier){
	$(areaAModifier).val($(areaAModifier).val()+'[center][/center]');
}

function droite(areaAModifier){
	$(areaAModifier).val($(areaAModifier).val()+'[right][/right]');
}

function justifie(areaAModifier){
	$(areaAModifier).val($(areaAModifier).val()+'[justify][/justify]');
}

function listePuces(areaAModifier){
	var text = "\n[list]\n";
	text = text + "[*]test\n";
	text = text + "[*]test\n";
	text = text + "[*]test\n";
	text = text + '[/list]';
	$(areaAModifier).val($(areaAModifier).val()+ text);
}

function image(areaAModifier){
	$(areaAModifier).val($(areaAModifier).val()+'[img][/img]');
}

function lien(areaAModifier){
	$(areaAModifier).val($(areaAModifier).val()+'[url][/url]');
}

function titre1(areaAModifier){
	$(areaAModifier).val($(areaAModifier).val()+'[t1][/t1]');
}

function titre2(areaAModifier){
	$(areaAModifier).val($(areaAModifier).val()+'[t2][/t2]');
}

function titre3(areaAModifier){
	$(areaAModifier).val($(areaAModifier).val()+'[t3][/t3]');
}

function youtube(areaAModifier){
	$(areaAModifier).val($(areaAModifier).val()+'[yt][/yt]');
}
