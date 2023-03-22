<script src="Navigatior.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<style>
.error {
	color: black;
}

.result {
	color: black;
	font-size: 15px;
}
</style>
<div class="content-wrapper">
	<div class="content">
		<div class="row">
			<div class="col-lg-6 col-10 mx-auto mt-3">
				<div class="card card-default">
					<div class="card-header card-header-border-bottom">
						<h2>NIC Validation</h2>
					</div>
					<div class="card-body">
						<div>
							<label for="FullName" class="fw-bold">NIC Number : </label> <input
								type="text" class="form-control" id="NIC" name="NIC"
								value="<%=request.getParameter("NIC")%>"> <br> <span
								class="error" id="New_or_Old"></span>
						</div>
						<div>
							<input type="hidden" class="form-control" id="Id" name="Id"
								value="<%=request.getParameter("id")%>" readonly> <br>
						</div>

						<!-- Show Results  -->
						<div id="results" style="display: none;">


							<table class="table">
								<tr>
									<td>Birth Day </td>
									<td><div class="result fs-2" id="birthday"></div></td>
								</tr>
								<tr>
									<td>Gender </td>
									<td><div class="result fs-2" id="gender"></div></td>
								</tr>
								<tr>
									<td>Age </td>
									<td><div class="result fs-2" id="age"></div></td>
								</tr>
							</table>
						</div>


						<!-- Show Error   -->
						<div id="deletes" style="display: none;">

							<div class="alert alert-danger" role="alert">
								<h4 class="alert-heading text-danger">Invalid User
									Information</h4>
								<hr>
								<p class="mb-0 text-danger">Since the user has registered on
									wrong information. Delete this User?</p>

								<div class="form-footer pt-4 pt-5 mt-1 border-top">
									<a href="deleteuser.jsp?id=<%=request.getParameter("id")%>"><button
											type="submit" class="btn btn-outline-danger btn-default">Delete</button></a>
									<a href="View.jsp"><button type="submit"
											class="btn btn-outline-secondary btn-default">Cancel</button></a>
								</div>
							</div>
						</div>


						<div class="form-footer pt-4 mt-4 border-top mx-auto">
							<button class="btn btn-outline-success" onclick="validNIC()">Find</button>
							<a href="View.jsp"><button class="btn btn-outline-secondary">Back</button></a>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="NICData.js">
	
</script>