<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Minutes</title>
<script type="text/javascript" src="jquery-3.4.0.js"></script>
<script type="text/javascript">
$(document).ready(
		function(){
			$.getJSON('http://localhost:8080/FitnessTracker/activities.json',{
				ajax: 'true'
			},function(data) {
				var html ='<option value="">-- Please Select --</option>';
				var len = data.length;
				for (var i=0;i<len;i++)	{
					html +='<option value="'+ data[i].desc + '">'
					       + data[i].desc +'</option>';
					}
				html +='</option>';
				$('#actvities').html(html);
			});
		});
</script>

</head>
<body>
	<h1>Add minutes</h1>
	Language :
	<a href="?language=en">English</a> |
	<a href="?language=es">Spanish</a>
	<p>
		Link : <a href="/FitnessTracker/">Back to Home</a>
	</p>


	<form:form modelAttribute="exercise">

		<table>
			<tr>
				<td><spring:message code="goal.text" /></td>
				<td><form:input path="minutes" /></td>
				<td><form:select id="actvities" path="activity"></form:select></td>
			</tr>
			<tr>
				<td colspan="4"><input type="submit" value="enter exercise">
			</tr>
		</table>

	</form:form>
	<h1>Minutes updated: ${goal.minutes}</h1>
</body>
</html>
