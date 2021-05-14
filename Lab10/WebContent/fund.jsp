<%@page import="com.FundingService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Funding Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/items.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Funding Management</h1>
				<form id="formItem" name="formItem">
					Item code: <input id="ftype" name="ftype" type="text"
						class="form-control form-control-sm"> <br> Item name:
					<input id="fsource" name="fsource" type="text"
						class="form-control form-control-sm"> <br> Item
					price: <input id="famount" name="famount" type="text"
						class="form-control form-control-sm"> <br> Item
					description: <input id="fdate" name="fdate" type="text"
						class="form-control form-control-sm"> <br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidItemIDSave" name="hidItemIDSave" value="">
				</form>
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				<br>
				<div id="divItemsGrid">
					<%
						FundingService FundingObj = new FundingService();
					out.print(FundingObj.readFunding());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>