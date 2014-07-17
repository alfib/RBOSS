<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<script type="text/javascript" src="jquery-1.2.6.min.js"></script>
<title>Being Java Guys | Hello World</title>
</head>
<body>

	<center>
		<h2>Being Java Guys | Hello World</h2>
		<h3>Please select a file to upload !</h3>
		<br />
		<form:form method="post" enctype="multipart/form-data"
			modelAttribute="uploadedFile" action="fileUpload">
			<table>
				<tr>
					<td>Upload File:&nbsp;</td>
					<td><input type="file" name="file" />
					</td>
					<td style="color: red; font-style: italic;"><form:errors
							path="file" />
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td><input type="submit" value="Upload" />
					</td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</form:form>
	</center>
</body>
</html>
