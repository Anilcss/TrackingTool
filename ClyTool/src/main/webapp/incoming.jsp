<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cylinder Tracking tool</title>

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
			<h1>Customer Name</h1>
		</div>
		<div class="dropdown_cust_dropdown"
			style="margin-left: 20px; margin-top: 10px;">
			<button class="btn btn-secondary dropdown-toggle"
				id="dropdownMenuButton2" data-bs-toggle="dropdown"
				aria-expanded="true">
				Select Customer
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
					<li><a class="dropdown-item active" href="#">Action111</a></li>
					<li><a class="dropdown-item" href="#">Another action</a></li>
					<li><a class="dropdown-item" href="#">Something else here</a></li>
					<li><hr class="dropdown-divider"></li>
					<li><a class="dropdown-item" href="#">Separated link</a></li>
				</ul>
			</button>

		</div>
		<%
		boolean flag = false;
		%>

		<div>
			<input <%if (flag) {%> disabled <%}%> type="date"
				style="border-color: blue; margin-left: 20px; margin-top: 15px; border-bottom-left-radius: 10px; border-top-right-radius: 10px;">
		</div>
		<h1>Pass in no:</h1>
	</div>
	<div>
		<table class="table">
			<thead class="thead-dark">
				<tr class="col1">
					<th scope="col">Sl.no</th>
					<th scope="col">Cylinder name</th>
					<th scope="col">Incoming no</th>
					<th scope="col">Extra</th>
				</tr>
			</thead>

			<form action="Incoming">

				<thead class="thead-light">
				<tbody>
					<%
					int cyl_sum = 0;
				for(int i=1;i<=10;i++)
					{
						cyl_sum = cyl_sum + 1;
					%>
					<tr class="col1">
						<th scope="row"><%=i%>.</th>
						<td><input type="text" name="clyname<%=i%>"></td>
						
						
						
						<!--Make it dynamic from database  -->
						
						
						
						<td><input type="text" name="clyno<%=i%>"></td>
						<td><button class="btn btn-primary active" type="submit">Push
								All</button>
							<button class="btn active delete1">Clear All</button></td>
					</tr>

					<%
					}
					%>
					<tr class="col1">
						<td scope="row"></td>
						<td>Total Cylinders: <%=cyl_sum%>
						</td>
						<td></td>
						<td><button class="btn btn-primary active" type="submit">Push
								All</button>
							<button class="btn active delete1">Clear All</button></td>

					</tr>
				</tbody>

				</thead>


			</form>



		</table>
	</div>

</body>
</html>