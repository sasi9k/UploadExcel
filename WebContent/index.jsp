<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" language="javascript">

/* function checkfile(sender) {
    var validExts = new Array(".xlsx", ".xls", ".csv");
    var fileExt = sender.value;
    fileExt = fileExt.substring(fileExt.lastIndexOf('.'));
    if (validExts.indexOf(fileExt) < 0) {
      alert("Invalid file selected, valid files are of " +
               validExts.toString() + " types.");
      return false;
    }
    else return true;
} */

function subcategoryComboChange()
{
 var Category = document.getElementById("subcategoryCombo");
var subCat = Category.options[Category.selectedIndex].text;
 document.getElementById('file').setAttribute("accept",".csv");

}
</script> 
</head>
<body>

	<form name="myForm" action="success.jsp" method="post">
		Submit File <input type="file" id="file" 
		
		 name="field"/>
		<!--  accept=".csv" -->
		 <!-- onchange="checkfile(this);" -->
		 <br> 
			<select
			id="subcategoryCombo"
			onchange="subcategoryComboChange();"
			name="fileType">
			<option value=""></option>
			<option value="csv">CSV</option>
			<option value="xlsx">Excel</option>
		</select>
		<div></div>
		<span>File Type</span> <input type="submit" value="Submit"
			name="submit">
	</form>
</body>
</html>