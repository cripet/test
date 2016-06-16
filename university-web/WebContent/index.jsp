<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="local.university.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
form {
	background: -webkit-linear-gradient(bottom, #CCCCCC, #EEEEEE 175px);
	background: -moz-linear-gradient(bottom, #CCCCCC, #EEEEEE 175px);
	background: linear-gradient(bottom, #CCCCCC, #EEEEEE 175px);
	margin: auto;
	position: relative;
	width: 380px;
	height: auto;
	font-family: Tahoma, Geneva, sans-serif;
	font-size: 14px;
	font-style: italic;
	line-height: 24px;
	font-weight: bold;
	color: #09C;
	text-decoration: none;
	border-radius: 10px;
	padding: 10px;
	border: 1px solid #999;
	border: inset 1px solid #333;
	-webkit-box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.3);
	-moz-box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.3);
}

input {
	width: 375px;
	display: block;
	border: 1px solid #999;
	height: 25px;
	-webkit-box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.3);
	-moz-box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.3);
}

textarea#feedback {
	width: 375px;
	height: 150px;
	display: block;
}

button {
	width: 100px;
	position: absolute;
	right: 20px;
	bottom: 20px;
	background: #09C;
	color: #fff;
	font-family: Tahoma, Geneva, sans-serif;
	height: 30px;
	border-radius: 15px;
	border: 1p solid #999;
}

#faculty {
	margin-left: 10px;
	margin-top: 5px;
	margin-bottom: 10px;
	height: 25px;
}

input.button:hover {
	background: #fff;
	color: #09C;
}
</style>
</head>
<body>
	<%
		String fullname = "";
		String email = "";
		float mark = 0;
		String phone = "";
		String facultate = "";
		String select = "";

		Cookie[] cookies = request.getCookies();

		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("fullname"))
				fullname = cookie.getValue();
			else if (cookie.getName().equals("email"))
				email = cookie.getValue();
			else if (cookie.getName().equals("phone"))
				phone = cookie.getValue();
			else if (cookie.getName().equals("faculty"))
				facultate = cookie.getValue();
			else if (cookie.getName().equals("mark"))
				mark = Float.valueOf(cookie.getValue());
		}
	%>
	<form action="apply.jsp" method="get">
		Nume/Prenume: <input type="text" name="fullname" value="<%=fullname%>">
		<br> 
		Adresa de email: <input type="text" name="email" value="<%=email%>">
		<br>
		Telefon: <input type="text" name="phone" value="<%=phone%>">
		<br>
		Nota medie:<input type="text" name="mark" value="<%=mark%>">
		<br>
		Alege Facultatea: <select name="faculty">
			<%
				for (Faculty faculty : University.faculties) {
					if (faculty.name.equals(facultate))
						select = "selected";
			%>
			<option <%=select%>><%=faculty.name%></option>
			<%
				}
			%>
		</select> <br> <input type="submit" value="Aplica">
	</form>


</body>
</html>