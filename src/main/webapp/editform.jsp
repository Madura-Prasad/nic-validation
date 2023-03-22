<%@page import="Database.DB"%>
<%@page import="com.mysql.jdbc.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.beans.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@page import="Handler.DataHandler"%>
<%@page import="Model.Users"%>


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
</style>


<div class="content-wrapper">
	<div class="content">
		<div class="row">
			<div class="col-lg-6 col-10 mx-auto mt-3">
				<div class="card card-default">
					<div class="card-header card-header-border-bottom">
						<h2>Edit Users</h2>
					</div>

					<div class="card-body">
						<form action="edit/edit_values.jsp" method="post"
							name="registration" id="registration">

							<%
							String Id = request.getParameter("id");
							try {
								Class.forName("com.mysql.jdbc.Driver");
								Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3308/jsp_crud", "root", "root");

								PreparedStatement ps = null;

								ps = conn.prepareStatement("SELECT * FROM users WHERE Id=?");
								ps.setString(1, Id);

								java.sql.ResultSet rs = ps.executeQuery();

								while (rs.next()) {
							%>

							<div>
								<label for="FullName" class="fw-bold">Full Name : </label> <input
									type="text" class="form-control" id="FullName"
									placeholder="Enter Your Full Name" name="FullName"
									value="<%=rs.getString("FullName")%>"
									style="text-transform: capitalize;"> <br>
							</div>

							<div>
								<label for="exampleFormControlPassword">Address : </label> <input
									type="text" class="form-control" id="Address"
									placeholder="Enter Your Address" name="Address"
									value="<%=rs.getString("Address")%>"
									style="text-transform: capitalize;"> <br>
							</div>
							<div>
								<label for="exampleFormControlPassword">Nationality : </label> <input
									type="text" class="form-control" id="Nationality"
									placeholder="Enter Your Nationality" name="Nationality"
									value="<%=rs.getString("Nationality")%>"
									style="text-transform: capitalize;"> <br>
							</div>

							<div>
								<label for="exampleFormControlPassword">NIC : </label> <input
									type="text" class="form-control" id="NIC"
									placeholder="Enter Your NIC" name="NIC"
									value="<%=rs.getString("NIC")%>"> <br>
							</div>
							<div>
								<label for="exampleFormControlPassword">Mobile Number :
								</label> <input type="text" class="form-control" id="Mobile"
									placeholder="Enter Your Mobile Phone" name="Mobile"
									value="<%=rs.getString("Mobile")%>"> <br>
							</div>

							<div>
								<input type="hidden" class="form-control" id="id"
									placeholder="Enter Your Mobile Phone" name="id"
									value="<%=rs.getString("Id")%>">
							</div>


							<div class="form-footer pt-4 mt-4 border-top mx-auto">
								<input name="submit" type="submit" id="submit"
									class="btn btn-outline-success btn-lg" value="Submit">
							</div>
							<%
							}
							ps.close();
							conn.close();
							} catch (Exception e) {
							System.out.print(e);
							e.printStackTrace();
							}
							%>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="Validation.js"></script>




