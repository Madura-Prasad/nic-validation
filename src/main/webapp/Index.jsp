<%@page import="java.util.TimerTask"%>
<%@page import="java.util.Timer"%>
<script src="Navigatior.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>

<style>
.error {
	color: red;
	font-weight: bolder;
	margin-bottom: 10px;
	margin-right: 10px;
}

.success {
	background-color: green;
	color: white;
	border-radius: 5px;
}
</style>

<div class="content-wrapper">
	<div class="content">
		<div class="row">
			<div class="col-lg-6 col-10 mx-auto mt-3">
				<div class="card card-default">
					<div class="card-header card-header-border-bottom">
						<h2>Add Users</h2>
					</div>
					<div class="card-body">
						<form action="edit/insert_values.jsp" method="post"
							name="registration" id="registration">

							 <p class="success text-center fw-bold mb-5">${param.message}</p> 
							
							<div class="mt-5">
								<label for="FullName" class="fw-bold">Full Name : </label> <input
									type="text" class="form-control" id="FullName"
									placeholder="Enter Your Full Name" name="FullName"
									style="text-transform: capitalize;"> <br>
							</div>
							<div>
								<label for="exampleFormControlPassword">Address : </label> <input
									type="text" class="form-control" id="Address"
									placeholder="Enter Your Address" name="Address"
									style="text-transform: capitalize;"> <br>
							</div>
							<div>
								<label for="exampleFormControlPassword">Nationality : </label> <input
									type="text" class="form-control" id="Nationality"
									placeholder="Enter Your Nationality" name="Nationality"
									style="text-transform: capitalize;"> <br>
							</div>
							<div>
								<label for="exampleFormControlPassword">NIC : </label> <input
									type="text" class="form-control" id="NIC"
									placeholder="Enter Your NIC" name="NIC"> <br>
							</div>
							<div>
								<label for="exampleFormControlPassword">Mobile Number :
								</label> <input type="text" class="form-control" id="Mobile"
									placeholder="Enter Your Mobile Number" name="Mobile"> <br>
							</div>
							<div class="form-footer pt-4 mt-4 border-top mx-auto">
								<input name="submit" type="submit" id="submit"
									class="btn btn-outline-success btn-lg" value="Submit">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="Validation.js"></script>