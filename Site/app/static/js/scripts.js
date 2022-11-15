// /* STEPS */
var form_2_progressbar = document.querySelector(".form_2_progressbar");
var form_3_progressbar = document.querySelector(".form_3_progressbar");
var form_4_progressbar = document.querySelector(".form_4_progressbar");

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

function validation() {
	var divEmail = document.getElementById("divEmail");
	const email = document.getElementById("c1_email").value;

	console.log(email);

	var text= document.getElementById("text");
	var pattern= /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;

	if (email.match(pattern))
	{
		divEmail.classList.add("valid");
		divEmail.classList.remove("invalid");
		text.innerHTML = "Seu e-mail é válido.";
		text.style.color = "#00ff00";
	}
	else
	{
		divEmail.classList.add("invalid");
		divEmail.classList.remove("valid");
		text.innerHTML = "Por favor, digite um e-mail válido.";
		text.style.color = "#ff0000";
	}
	if (email == "")
	{
		divEmail.classList.remove("valid");
		divEmail.classList.remove("invalid");
		text.innerHTML = "Por favor, digite um e-mail válido.";
		text.style.color = "#ff0000";
	}
}

form_1_next_btn.addEventListener("click", function() {

	const name = document.getElementById("c1_name").value;
	const email = document.getElementById("c1_email").value;
	const floorz = document.getElementById("c1_floor").value;
	const roomz = document.getElementById("c1_room").value;
	

	if (!name || !email || !floorz || !roomz) {
		alert("ERRO: Você não preencheu os dados necessários!");
		return;
	};

	form_1.style.display = "none";
	form_2.style.display = "block";

	form_1_btns.style.display = "none";
	form_2_btns.style.display = "flex";

	form_2_progressbar.classList.add("active");
});

form_2_back_btn.addEventListener("click", function() {
	form_1.style.display = "block";
	form_2.style.display = "none";

	form_1_btns.style.display = "flex";
	form_2_btns.style.display = "none";

	form_2_progressbar.classList.remove("active");
});

form_2_next_btn.addEventListener("click", function() {

	/* var pcChecked = false;
	const pcs = document.getElementsByName("c2_computadores"); ## CRIA UM DICIONÁRIO COM TODOS OS ELEMENTOS NO HTML QUE TEM O ATRIBUTO name="c2_computadores" ##

	## FAZ UM LOOP PRA VER SE TEM UM COMPUTADOR SELECIONADO ##
	pcs.forEach(pc => {
		if (pc.checked) {
			pcChecked = true;
			return; ## SAI DO LOOP ##
		}
	}); */

	/* if (!pcChecked) {
		alert("ERRO: Você não escolheu o computador!");
		return; ## BLOQUEIA O RESTO DO SCRIPT ##
	} */

	form_2.style.display = "none";
	form_3.style.display = "block";

	form_3_btns.style.display = "flex";
	form_2_btns.style.display = "none";

	form_3_progressbar.classList.add("active");
});

form_3_back_btn.addEventListener("click", function() {

	form_2.style.display = "block";
	form_3.style.display = "none";

	form_3_btns.style.display = "none";
	form_2_btns.style.display = "flex";

	form_3_progressbar.classList.remove("active");
});

form_3_next_btn.addEventListener("click", function() {

	/* const subject = document.getElementById("c3_assunto").value;
	const description = document.getElementById("c3_texto").value;
	
	/* if (!subject || !description) {
		alert("ERRO: Você não preencheu os dados necessários!");
		return; ## BLOQUEIA O RESTO DO SCRIPT ##
	} */

	form_3.style.display = "none";
	form_4.style.display = "block";

	form_4_btns.style.display = "flex";
	form_3_btns.style.display = "none";

	form_4_progressbar.classList.add("active");
});

document.querySelector('input[name="rate"]:checked').value;