$(document).ready(function() {

	jQuery.validator.addMethod("validnic", function(value, element) {
		if (/^([0-9]{9}[v|V]|[0-9]{12})$/.test(value)) {
			return true;
		} else {
			return false;
		};
	}, "please enter valid nic number");


	jQuery.validator.addMethod("validname", function(value1, element) {
		if (/^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$/.test(value1)) {
			return true;
		} else {
			return false;
		};
	}, "please enter valid name");


	jQuery.validator.addMethod("valimobile", function(value2, element) {
		if (/^(?:7|0|(?:\+94))[0-9]{9,10}$/.test(value2)) {
			return true;
		} else {
			return false;
		};
	}, "please enter valid mobile number");



	$("#registration").validate({
		// Specify validation rules
		rules: {
			FullName: "required",
			Address: "required",
			FullName: {
				required: true,
				validname: true
			},
			Address: {
				required: true,
				minlength: 5
			},
			Nationality: {
				required: true,
				minlength:5
			},
			NIC: {
				required: true,
				validnic: true
			},
			Mobile: {
				required: true,
				valimobile: true
			}
		},
		messages: {
			FullName: {
				required: "Please enter full name",
			},
			Address: {
				required: "Please enter address",
				minlength:"Please enter valid address"
			},
			Nationality: {
				required: "Please enter nationality",
				minlength:"Please enter valid nationality"
			},
			NIC: {
				required: "Please enter nic number",
			},
			Mobile: {
				required: "Please enter phone number",
			},
		},

	});
});