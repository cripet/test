<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// extragem datele din formular

String fullname = request.getParameter("fullname");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
float mark = Float.valueOf(request.getParameter("mark"));
String faculty = request.getParameter("faculty");


// salvam datele in cookies
Cookie fnameCookie = new Cookie("fullname", fullname);
Cookie emailCookie = new Cookie("email", email);
Cookie phoneCookie = new Cookie("phone", phone);
Cookie markCookie  = new Cookie("mark", String.valueOf(mark));
Cookie facultyCookie = new Cookie("faculty",faculty);


response.addCookie(fnameCookie);
response.addCookie(emailCookie);
response.addCookie(phoneCookie);
response.addCookie(markCookie);
response.addCookie(facultyCookie);


%>

Nume complet: <%=fullname %> <br>
Email: <%=email %> <br>
Telefon: <%=phone %> <br>
Nota medie: <%=mark %> <br>
Facultatea aleasa: <%=faculty %> <br>
</body>
</html>