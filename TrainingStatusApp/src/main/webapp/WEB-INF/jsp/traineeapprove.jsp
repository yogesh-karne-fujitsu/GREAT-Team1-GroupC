
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<!-- Popper JS -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="ISO-8859-1">

<title>Trainee Records</title>

<style>
table {
	border-collapse: collapse;
}

table, th, td {
	border: 0px;
}

th, td {
	padding: 10px;
}

th {
	text-align: left;
}

tr, center1:nth-child(odd) {
	background-color:;
}

tr, center5 { <
	td1 style="visibility: collapse;
	"></
	td1
	>
	<td2
	style="visibility
	:
	collapse;
	"></
	td2
	>
	<td3
	style="visibility
	:
	collapse;
	"></
	td3
	>
	<td4
	style="visibility
	:
	collapse;
	"></
	td4
	>
	<td5
	style="visibility
	:
	collapse;
	"></
	td5
	>
	<td6
	style="visibility
	:
	collapse;
	"></
	td6
	>
	<td7
	style="visibility
	:
	collapse;
	"></
	td7
	>
}

body {
	background-color: rgb(234, 232, 232);
	padding: 3%;
	background: url(https://cdn.dribbble.com/users/3419046/screenshots/15428526/fujitsu-800_600.gif);
    background-color: rgb(234, 232, 232); 
    background-size: 180px 100px;
    background-position:  right top;
    background-repeat: no-repeat;
    padding: 2%;  
}

}
body {
	font-family: Arial, Helvetica, sans-serif;
}

.ImgThumbnail {
	border-radius: 3px;
	cursor: pointer;
	transition: 0.3s;
}

.ImgThumbnail:hover {
	opacity: 0.7;
}

.modal {
	display: none;
	position: fixed;
	z-index: 1;
	padding-top: 100px;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.2);
}

.modalImage {
	margin: auto;
	display: block;
	width: 100%;
	max-width: 950px;
}

#caption {
	margin: auto;
	display: initial;
	width: 80%;
	max-width: 700px;
	text-align: center;
	color: #ccc;
	padding: 10px 0;
	height: 150px;
}

.modalImage, #caption {
	-webkit-animation-name: zoom;
	-webkit-animation-duration: 0.5s;
	animation-name: zoom;
	animation-duration: 0.5s;
}

@
-webkit-keyframes zoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes zoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}
.close {
	position: absolute;
	top: 40px;
	right: 100px;
	color: #ff0000;
	font-size: 40px;
	font-weight: bold;
	transition: 0.3s;
}

.close:hover, .close:focus {
	color: #bbb;
	text-decoration: none;
	cursor: pointer;
}

@media only screen and (max-width: 700px) {
	.modal-content {
		width: 100%;
	}
}
</style>
<body class="container-fluid">
<form id="Back" align="left" method="GET" action="Back">
 		<button type="Back" class="btn btn btn-info btn-m">Back</button>
  	</form>
	<h2 class="card-header" style="background-color: D3d3d3">Trainee
		Records</h2>
	<table class="table table-hover"
		style="background-color: rgb(249, 245, 245)">
		<br>
		<tr>
			<center1>
			<td><label><b>APPROVER NAME :</b> </label> </td>
			<td><label><b>SUBMIT DATE :</b></label> </td>
			<td><label><b>BATCH NAME :</b></label> </td>
			<td><label><b>EMPLOYEE ID :</b></label></td>
			</center1>

		</tr>
	</table>
	</br>
	<table class="table table-hover"
		style="background-color: rgb(249, 245, 245)">
		<tr>
			<td style=" text-align:center"><b><label>EMPLOYEE ID</label></b></td>
			<td style=" text-align:center"><b><label>EMPLOYEE NAME</label></b></td>
			<td style=" text-align:center"><b><label>EMP MAIL ID</label></b></td>
			<td style=" text-align:center"><b><label>COURSE ID</label></b></td>
			<td style=" text-align:center"><b><label>COURSE NAME</label></b></td>
			<td style=" text-align:center"><b><label>SUBMITTED DATE</label></b></td>
			<td style=" text-align:center"><label><b>APPROVER NAME</b></label></td>
			<td style=" text-align:center"><label><b>TEST SCORE</b></label></td>
			<td style=" text-align:center"><label><b>SABA SCREENSHOT</b></label></td>
			<td style=" text-align:center"><label><b>MAIL SCREENSHOT</b></label></td>
			<td style=" text-align:center"><label><b>TEST SCREENSHOT</b></label></td>
				
		</tr>

		

	</table>

</body>
</html>