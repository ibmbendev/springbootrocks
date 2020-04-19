<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
<title>SpringBootRocks</title>
<%@ include file="../fragments/header.jspf"%>
<%@ include file="../fragments/navbar.jspf"%>
</head>
<body>
	<div class="container">
		<div style="text-align: center">
			<h2>
				<b>Manage Users</b>
			</h2>
			<h6>
				<b>AJAX Table With Zero Config Datatable</b>
			</h6>
			<div style="text-align: center">
				<button type="button" id="refreshButton"
					class="btn btn-sm btn-secondary btn-rounded" title="Refresh Page">
					<i class="fas fa-sync-alt"></i>
				</button>
				<sec:authorize access="hasAuthority('ADMIN')">
					<a href="<c:url value='/registration' />"
						class="btn btn-sm btn-success btn-rounded" title="Add New User"><span
						class="fa fa-plus"></span></a>
				</sec:authorize>
				<sec:authorize access="hasAuthority('ADMIN')">
					<a href="<c:url value='/alluserreportPDF'  />"
						class="btn btn-sm btn-danger btn-rounded"
						title="Export all to PDF" target="_blank"><i
						class="fas fa-file-pdf"></i></a>
				</sec:authorize>
				<sec:authorize access="hasAuthority('ADMIN')">
					<a href="<c:url value='/alluserreportCSV'  />"
						class="btn btn-sm btn-success btn-rounded"
						title="Export all to CSV"><i class="fas fa-file-code"></i></a>
				</sec:authorize>
				<sec:authorize access="hasAuthority('ADMIN')">
					<a href="<c:url value='/alluserreportExcel'  />"
						class="btn btn-sm btn-primary btn-rounded"
						title="Export all to Excel"><i class="fas fa-file-excel"></i></a>
				</sec:authorize>
				<sec:authorize access="hasAuthority('ADMIN')">
					<a href="<c:url value='/alluserreportJSON'  />"
						class="btn btn-sm btn-secondary btn-rounded"
						title="Export all to JSON" target="_blank"> { }</a>
				</sec:authorize>
				<sec:authorize access="hasAuthority('ADMIN')">
					<a href="<c:url value='/jasper-HTMLEXPORT-report'  />"
						class="btn btn-sm btn-warning btn-rounded"
						title="Export all to JASPER" target="_blank"><i
						class="fa fa-file" aria-hidden="true"></i></a>
				</sec:authorize>
			</div>

		</div>
		<table id="tableitems"
			class="table table-condensed table-hover table-responsive-sm  table_morecondensed">
			<thead class="thead-secondary">
				<tr>
					<th>ID</th>
					<th>UserName</th>
					<th>Email-Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Address</th>
					<th>Date Created</th>
					<th>Created By</th>
					<th>Last Modified</th>
					<th>Modified By</th>
				</tr>
			</thead>

			<tfoot>
				<tr>
					<th>ID</th>
					<th>UserName</th>
					<th>Email-Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Address</th>
					<th>Date Created</th>
					<th>Created By</th>
					<th>Last Modified</th>
					<th>Modified By</th>
				</tr>
			</tfoot>

		</table>
		<br />
	</div>
</body>
<%@ include file="../fragments/footer.jspf"%>
<script src="/js/ajaxdatatable.js"></script>
</html>