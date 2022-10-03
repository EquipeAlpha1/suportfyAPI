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

const sizeRooms = {
	larger: [402], /* 4x4 - 4 */
	medium: [301, 302, 401], /* 3x3 - 4 */
	small: [303, 404, 405, 406, 407, 408, 409, 411, 412] /* 3x3 - 3 */
}

const lines = ['firstColumn','tenthColumn','secondColumn','ninthColumn','fifthRow'];

function loadLayout(targetRoom) { /* FUNÇÃO QUE MODIFICA DINAMICAMENTE O LAYOUT DOS COMPUTADORES */
	
	/* RESETA O ESTILO DOS COMPUTADORES */
	document.querySelectorAll('.computerSlot').forEach(pc => {pc.style.visibility = 'visible';});

	for(var currentSize in sizeRooms){ /* FAZ UM LOOP PELOS TAMANHOS DE SALA */
		sizeRooms[currentSize].forEach(currentRoom => { /* FAZ UM LOOP A PROCURA DA SALA */
			if(currentRoom === targetRoom){ /* SE ACHOU A SALA */
				var limit = 0;
				currentSize === 'small' ? limit = 5 :
				currentSize === 'medium' ? limit = 4 : limit = 2;			
				for(var i = 0; i < limit; i++){
					[].forEach.call(document.querySelectorAll('.'+lines[i]), function (el) {
						el.style.visibility = 'hidden';						
					});
				};
			};
		});
	};
};

const floors = {
	floor3: [301,302, 303],
	floor4: [401, 402, 404, 405, 406, 407, 408, 409, 411, 412]
};

function loadRooms(targetFloor) { /* FUNÇÃO QUE CRIA AS OPÇÕES DE SALA, PARA CADA ESCOLHA DE ANDAR */

	var dataList = document.getElementById('datalistOptionsRoom');
	
	if (targetFloor === '3º Andar') {
		floors.floor3.forEach(room => {
			var option = document.createElement('option');
			option.value = room;
			dataList.appendChild(option);
		});
	} else if (targetFloor === '4º Andar') {
		floors.floor4.forEach(room => {
			var option = document.createElement('option');
			option.value = room;
			dataList.appendChild(option);
		});
	} else { /* SE APAGOU A ESCOLHA DO ANDAR, APAGA A LISTA DE SALAS */			
		document.getElementById('c1_Room').value = ''; /* APAGA O INPUT DA SALA */
		dataList.innerHTML = '';
	};
};

form_1_next_btn.addEventListener("click", function(){

	/* const name = document.getElementById("c1_name").value;
	const email = document.getElementById("c1_email").value;

	if (name === '' || email === '') {
		alert("ERRO: Você não preencheu os dados necessários!");
		return;  ## BLOQUEIA O RESTO DO SCRIPT ##
	} */

	/* 
	4x4 - 4 ##### 402 
	3x3 - 4 ##### 301, 302, 401
	3x3 - 3 ##### 303, 404, 405, 406, 407, 408, 409, 411, 412
	*/	
	
	var targetR = parseInt(document.getElementById("c1_Room").value); /* parseInt converte o valor que é uma string, para integer */

	loadLayout(targetR);

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