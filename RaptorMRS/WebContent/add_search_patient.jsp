<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%@ page
	language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://localhost:8080/RaptorMRS/faces/jquery-ui-1.9.1.custom.css" />
<link rel="stylesheet"
	href="http://localhost:8080/RaptorMRS/faces/styles.css" />

<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
<script type="text/javascript">
function clock() {
	   var now = new Date();
	   var outStr = 'Time:' + now.getHours()+' hr';
	   document.getElementById('clockDiv').innerHTML = outStr;
	   var displayDate = 'Date: ' + (now.getMonth()+1) + '/' + (now.getDate()) + '/' + now.getFullYear();
	   document.getElementById('currentDate').innerHTML = displayDate;
	   setTimeout('clock()',1000);
	}
	clock();

</script>
<script>
	$(function() {
		var availableTags = [ "Marek", "Clinton", "Alex", "Jackson", "Sarah",
				"Ramez" ];
		$("#autocomplete").autocomplete({
			source : availableTags
		});
	});
		</script>
		<script>
		$(function() {
		 $( "#tabs" ).tabs();
	    });
		</script>
		<script>
		$(function() {
		 $( "#tabs2" ).tabs();
	    });
		</script>
		<script>
		$(function() {
		$("#datepicker").datepicker();
           			});
		</script>
		<script>
		$(function() {
	        $( "#accordion" ).accordion();
	        $("#accordion2" ).accordion();
	    });
		</script>
		<script>
		$(function() {
		$("#button").button();
	});
		 </script>
		<script>
	    $(function() {
	        $( "#radio" ).buttonset();
	    });
	   
</script>
<title>Search for or Add a Patient</title>
</head>
<body onload="clock();" >
	<div class="wrapper">
		<%@ include file="header.jsp"%>
		<div class="content">
		<f:view>
			<h:form>
				<div class="container">
					<div class="left">
						<img src="http://localhost:8080/RaptorMRS/faces/recent.png" /><br>
						<a href="add_photo_page">New Photo...</a>
					</div>
					
					<div class="right">
					<fieldset style="width:80%">
					<legend>Search/Add Patient</legend>
						
							<h:panelGrid columns="12">
							<h:outputLabel value="First: " styleClass="left-align" ></h:outputLabel>
								<h:inputText  style="first"></h:inputText>
							<h:outputLabel value="Last:" styleClass="left-align" ></h:outputLabel>
							<h:inputText  style="last"></h:inputText>
							<h:outputLabel value="ID#: " styleClass="left-align"></h:outputLabel>
								<h:inputText  style="id"></h:inputText>
							</h:panelGrid>
							
							<h:panelGrid columns="12">
							<h:outputLabel value="Residence" styleClass="left-align"></h:outputLabel>
							<h:inputText size="50"></h:inputText>
							
							
							<h:outputLabel value="Age: "></h:outputLabel>
							<h:inputText size="4"></h:inputText>
							<h:outputLabel value="Gender" styleClass="left-align"></h:outputLabel>
							<h:selectOneRadio id="radio">
								<f:selectItem itemLabel="Male" />
								<f:selectItem itemLabel="Female" />
							</h:selectOneRadio>
							<input type="submit" value="Search" id="button">
							</h:panelGrid>
							
						</fieldset>
							<fieldset style="width:25%" class="left"><legend>Keywords from Previous Encounters</legend>
								
							<h:panelGrid columns="1">
								<h:inputTextarea ></h:inputTextarea>
						</h:panelGrid>	</fieldset>
							<fieldset style="width:50%" class="right">
							<legend>Vitals</legend>
						
							<h:panelGrid columns="10" >
							
							<h:outputLabel value="Height"></h:outputLabel>
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="m"></h:outputLabel>
						
							<h:outputLabel value="Weight"></h:outputLabel>
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="Kg"></h:outputLabel>
							
							<h:outputLabel value="BMI"></h:outputLabel>
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="Kg/m"></h:outputLabel>
							</h:panelGrid>
							<h:panelGrid columns="18">

							<h:outputLabel value="BP"></h:outputLabel>
							
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="/"></h:outputLabel>
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="mmHg"></h:outputLabel>
							
			
							<h:outputLabel value="HR"></h:outputLabel>
							
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="BPM"></h:outputLabel>
							
							<h:outputLabel value="RR"></h:outputLabel>
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="Breaths/min"></h:outputLabel>
							</h:panelGrid>
							
							<h:panelGrid columns="8">

							<h:outputLabel value="Temp"></h:outputLabel>
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="C"></h:outputLabel>
							
							<h:outputLabel value="Ox"></h:outputLabel>
							<h:inputText size="5"></h:inputText>
							<h:outputLabel value="%"></h:outputLabel>
							
						</h:panelGrid>
						
						</fieldset>
					
						
						
					</div>
					</div>
				<div class="container">
					<h:panelGrid columns="2">

						<h:outputLabel value="Chief Complaint"></h:outputLabel>
						<h:inputTextarea ></h:inputTextarea>
					</h:panelGrid>
				</div>
				<div class="container">
					<h:panelGrid>

						<h:outputLabel
							value="HPI: Include Onset, Provokes/Palliates, Quality, Radiation, Score, Timing, and anything else"></h:outputLabel>

						<h:inputTextarea ></h:inputTextarea>
					</h:panelGrid>
				</div>
				<div class="container">
					<img src="http://localhost:8080/RaptorMRS/faces/deformity.png" /><img
						src="http://localhost:8080/RaptorMRS/faces/deformity.png" /><img
						src="http://localhost:8080/RaptorMRS/faces/deformity.png" /><br>
					<a href="add_photo_page" >New Photo...</a> <br />
					<a href="add_photo_page">Additional Photos...</a>
				</div>
				<div class="container">
					<table>
						<tr>
							<td><h:outputLabel value="Chronic Illnesses:"></h:outputLabel></td>
							<td><h:inputText ></h:inputText></td>
							<td><a href="remove_illness">Remove...</a></td>
						</tr>
						<tr>
							<td colspan="3" align="center"><a href="add_illness">Add...</a></td>
						</tr>
					</table>

				</div>
				<div class="container">
					<table>
						<tr>
							<td><h:outputLabel value="Medical Procedures:"></h:outputLabel></td>
							<td><h:inputText ></h:inputText></td>
							<td><a href="remove procedure">Remove...</a></td>
						</tr>
						<tr>
							<td colspan="3" align="center"><a href="add_procedure">Add...</a></td>
						</tr>
					</table>

				</div>
				<div class="container">
				<h:outputLabel value="Social History and Family History: Include familial illnesses, living situation, occupation"></h:outputLabel>
				<div id="accordion" >						
							<span >Current</span>
						<div>
						<h:inputText ></h:inputText>
						</div>
						<span >Previous</span>
						<div>
						<h:inputText></h:inputText>
						</div>
					
					</div>
				</div>
				<div class="container">
					

						<h:outputLabel value="Prescribed Medicine"></h:outputLabel>
						<div id="accordion2">
   							 <span >Current</span>
						<div>
						<h:inputText ></h:inputText>
						</div>
						<span >Previous</span>
						<div>
						<h:inputText></h:inputText>
						</div>
						</div>
				</div>
				
				<div class="container">
					<h:panelGrid>

						<h:outputLabel value="Overall Impression for this Visit:"></h:outputLabel>

					<h:inputTextarea></h:inputTextarea>
					</h:panelGrid>
				</div>
				<form>
					<div style="align: center">
						<input type="submit" value="Finish" id="button" style="width: 150px">
					</div>
				</form>
			</h:form>



		</f:view>
		
		</div>
		
	</div>
</body>
</html>