<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>New Tattoo</title>
</head>

<body>
	<div class="container">
		<h1>New Tattoo</h1>
		<form:form action="/Dashboard" method="post"
			modelAttribute="newArtist">
			<h3>What Style of Tattoo are you looking for?</h3>
			<div class="leftSide">
				<div>
					<input type="checkbox" value="japaneseTraditional"> <label
						for="japaneseTraditional">Japanese Traditional</label>
				</div>
				<div>
					<input type="checkbox" value="americanTraditional"> <label
						for="americanTraditional">American Traditional</label>
				</div>
				<div>
					<input type="checkbox" value="tribal"> <label for="tribal">Tribal</label>
				</div>
				<div>
					<input type="checkbox" value="realism"> <label
						for="realism">Realism/Photo Realism</label>
				</div>
				<div>
					<input type="checkbox" value="portraiture"> <label
						for="portraiture">Portraiture</label>
				</div>
				<div>
					<input type="checkbox" value="schoolTraditional"> <label
						for="schoolTraditional">New School/Neo-Traditional</label>
				</div>
				<div>
					<input type="checkbox" value="blackGrey"> <label
						for="blackGrey">Black and Grey</label>
				</div>
				<div>
					<input type="checkbox" value="fullColor"> <label
						for="fullColor">Full Color</label>
				</div>
				<div>
					<input type="checkbox" value="unsure"> <label for="unsure">Not
						Sure Yet</label>
				</div>
			</div>
			<div class="rightSide">
				<h3>Where do you want this tattoo to be placed?</h3>
				<div>
					<input type="checkbox" value="headNeck"> <label
						for="headNeck">Head/Neck </label>
				</div>
				<div>
					<input type="checkbox" value="chest"> <label for="chest">Chest</label>
				</div>
				<div>
					<input type="checkbox" value="back"> <label for="back">Back</label>
				</div>
				<div>
					<input type="checkbox" value="legs"> <label for="legs">Legs</label>
				</div>
				<div>
					<input type="checkbox" value="arm"> <label for="arm">Arm</label>
				</div>
				<div>
					<input type="checkbox" value="handsFeet"> <label
						for="handsFeet">Hands/Feet</label>
				</div>
				<h3>What size do you want this?</h3>
				<div>
					<input type="checkbox" value="xs"> <label for="xs">Extra-Small
						(Could fit on your knuckle)</label>
				</div>
				<div>
					<input type="checkbox" value="s"> <label for="s">Small</label>
				</div>
				<div>
					<input type="checkbox" value="m"> <label for="m">Medium</label>
				</div>
				<div>
					<input type="checkbox" value="l"> <label for="l">Large</label>
				</div>
				<div>
					<input type="checkbox" value="xl"> <label for="xl">Extra
						Large ( Full Pieces )</label>
				</div>
				<h3>Do you want any color?</h3>
				<div>
					<input type="checkbox" value="blackGrey"> <label
						for="blackGrey">Black and Grey</label>
				</div>
				<div>
					<input type="checkbox" value="mix"> <label for="mix">Mix</label>
				</div>
				<div>
					<input type="checkbox" value="fullColor"> <label
						for="fullColor">Full Color</label>
				</div>
			</div>
			<input type="submit" value="Next" class="btn btn-primary" />
		</form:form>
	</div>
</body>

</html>