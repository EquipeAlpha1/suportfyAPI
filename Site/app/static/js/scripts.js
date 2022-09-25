/* STEPS */
var form_2_progessbar = document.querySelector(".form_2_progessbar");
var form_3_progessbar = document.querySelector(".form_3_progessbar");
var form_4_progessbar = document.querySelector(".form_4_progessbar");

/* DIV CONTENTS */
var form_1 = document.querySelector(".form_1");
var form_2 = document.querySelector(".form_2");
var form_3 = document.querySelector(".form_3");
var form_4 = document.querySelector(".form_4");

/* DIV BUTTONS */
var form_1_btns = document.querySelector(".form_1_btns");
var form_2_btns = document.querySelector(".form_2_btns");
var form_3_btns = document.querySelector(".form_3_btns");
var form_4_btns = document.querySelector(".form_4_btns");

/* BUTTONS */
var form_1_next_btn = document.querySelector(".form_1_btns .btn_next");
var form_2_back_btn = document.querySelector(".form_2_btns .btn_back");
var form_2_next_btn = document.querySelector(".form_2_btns .btn_next");
var form_3_back_btn = document.querySelector(".form_3_btns .btn_back");
var form_3_next_btn = document.querySelector(".form_3_btns .btn_next");

form_1_next_btn.addEventListener("click", function(){

	/* const name = document.getElementById("c1_name").value;
	const email = document.getElementById("c1_email").value;

	if (name === '' || email === '') {
		alert("ERRO: Você não preencheu os dados necessários!");
		return;  ## BLOQUEIA O RESTO DO SCRIPT ##
	} */

	form_1.style.display = "none";
	form_2.style.display = "block";

	form_1_btns.style.display = "none";
	form_2_btns.style.display = "flex";

	form_2_progessbar.classList.add("active");
});

form_2_back_btn.addEventListener("click", function(){
	form_1.style.display = "block";
	form_2.style.display = "none";

	form_1_btns.style.display = "flex";
	form_2_btns.style.display = "none";

	form_2_progessbar.classList.remove("active");
});

form_2_next_btn.addEventListener("click", function(){

	/* var pcChecked = false;
	const pcs = document.getElementsByName("c2_computadores"); ## CRIA UM DICIONÁRIO COM TODOS OS ELEMENTOS NO HTML QUE TEM O ATRIBUTO name="c2_computadores" ##

	## FAZ UM LOOP PRA VER SE TEM UM COMPUTADOR SELECIONADO ##
	pcs.forEach(pc => {
		if (pc.checked === true) {
			pcChecked = true;
			return; ## SAI DO LOOP ##
		}
	});

	if (pcChecked === false) {
		alert("ERRO: Você não escolheu o computador!");
		return; ## BLOQUEIA O RESTO DO SCRIPT ##
	} */

	form_2.style.display = "none";
	form_3.style.display = "block";

	form_3_btns.style.display = "flex";
	form_2_btns.style.display = "none";

	form_3_progessbar.classList.add("active");
});

form_3_back_btn.addEventListener("click", function(){
	form_2.style.display = "block";
	form_3.style.display = "none";

	form_3_btns.style.display = "none";
	form_2_btns.style.display = "flex";

	form_3_progessbar.classList.remove("active");
});

form_3_next_btn.addEventListener("click", function(){

	/* const subject = document.getElementById("c3_assunto").value;
	const description = document.getElementById("c3_texto").value;
	
	if (subject === '' || description === '') {
		alert("ERRO: Você não preencheu os dados necessários!");
		return; ## BLOQUEIA O RESTO DO SCRIPT ##
	} */

	form_3.style.display = "none";
	form_4.style.display = "block";

	form_4_btns.style.display = "flex";
	form_3_btns.style.display = "none";

	form_4_progessbar.classList.add("active");
});