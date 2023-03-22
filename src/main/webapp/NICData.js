//Number of dates in months
var totalDates = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

//Names of Months
var months = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"];

function validNIC() {

	var nic = document.getElementById("NIC").value;

	//check month & day
	var oldnic = nic.substring(2, 5);
	var newnic = nic.substring(4, 7);

	//Validation start here
	if (nic.length == 10 && (oldnic <= 366 || (oldnic >= 501 && oldnic <= 866))) {
		document.getElementById("New_or_Old").innerHTML = "Old NIC Number";
		document.getElementById("deletes").style.display = "none";
		oldNIC(nic);
	} else if (nic.length == 12 && (newnic <= 366 || (newnic >= 501 && newnic <= 866))) {
		document.getElementById("New_or_Old").innerHTML = "New NIC Number";
		document.getElementById("deletes").style.display = "none";
		newNIC(nic);
	} else {
		document.getElementById("New_or_Old").innerHTML = "Invalid NIC Number";
		document.getElementById("results").style.display = "none";
		document.getElementById("deletes").style.display = "";
	}

	function oldNIC(nic) {

		//Get the First 2 digits(Birth year)
		var str = nic;
		var year = str.substring(0, 2);

		//Get the Next 3 digits in NIC(Birth month & day)
		var nextThreeDigits = parseInt(str.substring(2, 5));

		//Validate gender
		var gender = "Male";
		if (nextThreeDigits > 500) {
			nextThreeDigits -= 500;
			gender = "Female"; //If day value > 500 it means NIC owner is a female.
		}

		//Extract Birth month & day
		var total = 0;
		for (var i = 0; i <= totalDates.length; i++) {
			total += totalDates[i];
			if (nextThreeDigits <= total) {
				var month = months[i]; //Get the month
				var date = nextThreeDigits - (total - totalDates[i]); //Get the day
				break;
			}
		}

		//Start displaying values in form
		document.getElementById("results").style.display = "block";
		document.getElementById("birthday").innerHTML = "19" + year + "/" + month + "/" + date;

		if (gender == "Male") {
			document.getElementById("gender").innerHTML = gender;
		} else {
			document.getElementById("gender").innerHTML = gender;
		}


		const d = new Date();
		var Nowyear = d.getFullYear();
		document.getElementById("age").innerHTML = Nowyear - ("19" + year);
	}


	function newNIC(nic) {

		//Get the First 4 digits(Birth year)
		var str = nic;
		var year = str.substring(0, 4);

		//Get the Next 3 digits in NIC(Birth month & day)
		var nextThreeDigits = parseInt(str.substring(4, 7));

		//Validate gender
		var gender = "Male";
		if (nextThreeDigits > 500) {
			nextThreeDigits -= 500;
			gender = "Female"; //If day value > 500 it means NIC owner is a female.
		}

		//Extract Birth month & day
		var total = 0;
		for (var i = 0; i <= totalDates.length; i++) {
			total += totalDates[i];
			if (nextThreeDigits <= total) {
				var month = months[i]; //Get the month
				var date = nextThreeDigits - (total - totalDates[i]); //Get the day
				break;
			}
		}

		//Start displaying values in form
		document.getElementById("results").style.display = "block";
		document.getElementById("birthday").innerHTML = year + "/" + month + "/" + date;

		if (gender == "Male") {
			document.getElementById("gender").innerHTML = gender;
		} else {
			document.getElementById("gender").innerHTML = gender;
		}

		const d = new Date();
		var Nowyear = d.getFullYear();
		document.getElementById("age").innerHTML = Nowyear - year;
	}
}


