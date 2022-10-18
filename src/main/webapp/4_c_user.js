
var arr = new Array();
var ind = -1;

function add_character() {

	document.getElementById('error').innerHTML = "";

	let character = document.getElementById('in').value;


	if (character == '') {
		document.getElementById('error').innerHTML = "Please enter a topic";

	} else if (arr.indexOf(character) > -1) {
		document.getElementById('error').innerHTML = "Please enter a different  topic";
	} else {
		document.getElementById('char_box').innerHTML = "";
		let char_box = document.getElementById('char_box');





		if (ind != -1) {
			arr[ind] = character;
			ind = -1;
		} else {
			arr.push(character);
		}


		arr.forEach(function(element, index) {

			let txt = document.createElement('text');
			txt.textContent = element;
			txt.style.color = "blue";
			txt.setAttribute('name', index);


			let li = document.createElement('li');
			li.appendChild(txt);


			let Edt = document.createElement('button');
			Edt.textContent = "Edit";
			Edt.setAttribute('class', 'btns');
			Edt.style.backgroundColor = "green";
			Edt.addEventListener("click", Edit);
			function Edit() {
				this.parentNode.remove();
				let update = this.parentNode.innerText;
				update = update.split('EditDelete');
				document.getElementById('in').value = update[0];
				let gg = arr.indexOf(update[0]);
				ind = gg;
				delete arr[gg];

			}
			li.appendChild(Edt);


			let dlt = document.createElement('button');
			dlt.textContent = "Delete";
			dlt.classList.add('btns');
			dlt.style.backgroundColor = "red";
			dlt.addEventListener("click", Delete);
			function Delete() {
				this.parentNode.remove();
				let update = this.parentNode.innerText;
				update = update.split('EditDelete');
				let gg = arr.indexOf(update[0]);
				arr.splice(gg, 1);
			}
			li.appendChild(dlt);
			char_box.appendChild(li);
		});


		document.getElementById('in').value = "";

	}
}



function formSubmit() {

	let obj = {

		org: document.getElementById('org').value,
		title: document.getElementById('title').value,
		description: document.getElementById('des').value,
		characters: arr,

	};

	alert(JSON.stringify(obj));

	let container = document.getElementById('registerform');

	let input = document.createElement('input');
	input.type = "text";
	input.setAttribute("id", "inputs");
	input.setAttribute('name', 'characters');
	input.value = arr;

	container.appendChild(input);

	let title = document.createElement('text');
	title.textContent = document.getElementById('title').value;
	title.style.color = "blue";
	let lii = document.createElement('li');
	lii.appendChild(title);
	
	let Edts = document.createElement('button');
	Edts.textContent = "Publish";
	Edts.setAttribute('class', 'btns');
	Edts.style.backgroundColor = "green";
	//Edts.addEventListener("click", formSubmit);
	lii.appendChild(Edts);
	
	let share = document.createElement('button');
	share.textContent = "Share";
	share.setAttribute('class', 'btns');
	share.style.backgroundColor = "rgb(14, 166, 226)";
	share.addEventListener("click", share);
	//function share() {
	//alert("Share on muliple social media sites");
	//}
	lii.appendChild(share);
	let lists = document.getElementById('lists');
	lists.appendChild(lii);


}








