<%@page import="java.util.List"%>
<%@page import="Model.Users"%>
<%@page import="Handler.DataHandler"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<script src="Navigatior.js"></script>

<link href='assets/plugins/data-tables/datatables.bootstrap4.min.css'
	rel='stylesheet'>


<link id="sleek-css" rel="stylesheet" href="assets/css/sleek.css" />

<div class="content-wrapper">
	<div class="content">
		<div class="row">
			<div class="col-12">
				<div class="card card-default">
					<div
						class="card-header card-header-border-bottom d-flex justify-content-between">
						<h2>View User Data</h2>

					</div>

					<div class="card-body">
						<div class="basic-data-table compact">
							<table id="basic-data-table" class="table nowrap hover"
								style="width: 100%">
								<thead>
									<tr>
										<th>Full Name</th>
										<th>Address</th>
										<th>Nationality</th>
										<th>NIC</th>
										<th>Mobile</th>
										<th>Check NIC</th>
									</tr>
								</thead>

								<tbody>
									<%
									List<Users> users = DataHandler.getAllRecords();
									request.setAttribute("users", users);
									%>

									<c:forEach var="u" items="${users}">
										<tr>
											<td>${u.getFullName()}</td>
											<td>${u.getAddress()}</td>
											<td>${u.getNationality()}</td>
											<td>${u.getNIC()}</td>
											<td>${u.getMobile()}</td>
											<td><a class="btn btn-outline-warning"
												href="NICValidator.jsp?id=${u.getId()}&&NIC=${u.getNIC()}">Validate</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		$('#basic-data-table').DataTable();
	});
</script>

<script src="assets/plugins/data-tables/jquery.datatables.min.js"></script>
<script src="assets/plugins/data-tables/datatables.bootstrap4.min.js"></script>

