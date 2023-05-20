<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cylinder Tracking tool-Pass out</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous"></link>
<link rel="stylesheet" href="style.css"></link>

</head>
<body>

	<div class="header">
		<h1>Cylinder Tracking Tool</h1>

		<p>Company Name</p>
	</div>
	<hr>
	<div class="customer">

		<div class="Cust_name" style="margin-left: 20px;">
			<h1>Customer Name: </h1>
		</div>
		<div >
		<input  type="text" class="cust_list" >

		</div>
		<%
		boolean flag = false;
		%>

		<div>
			<input <%if (flag) {%> disabled <%}%> type="date"
				style="border-color: blue; margin-left: 20px; margin-top: 15px; border-bottom-left-radius: 10px; border-top-right-radius: 10px;">
		</div>
		<h1>Pass out no:</h1>
	</div>
	<div>
		<table class="table">
			<thead class="thead-dark">
				<tr class="col1">
					<th scope="col">Sl.no</th>
					<th scope="col">Cylinder no</th>
					<th scope="col">Pass out no</th>
					<th scope="col">Extra</th>
				</tr>
			</thead>




			<thead class="thead-light">
			<tbody>
				<%
				int cyl_sum = 0;
				for (int i = 1; i <= 10; i++) {
					cyl_sum = cyl_sum + 1;
				%>
				<tr class="col1">
					<th scope="row"><%=i%>.</th>
					<td><input type="text"></td>
					<td><input type="text"></td>
					<td><a href="#" class="btn btn-primary  active" role="button"
						aria-pressed="true">Ok </a> <a href="#" class="btn active delete1"
						role="button" aria-pressed="true">Clear</a></td>
				</tr>

				<%
				}
				%>
				<tr class="col1">
					<td scope="row"></td>
					<td>Total Cylinders: <%=cyl_sum%>
					</td>
					<td></td>
					<td><a href="#" class="btn btn-primary active" role="button"
						aria-pressed="true">Push All </a> <a href="#"
						class="btn active delete1" role="button" aria-pressed="true">Clear
							All</a></td>

				</tr>
			</tbody>
		
		</table>


	</div>

</body>
</html>