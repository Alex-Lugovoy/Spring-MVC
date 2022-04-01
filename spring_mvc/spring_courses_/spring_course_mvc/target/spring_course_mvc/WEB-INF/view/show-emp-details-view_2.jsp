<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<body>

<h2>Вы ввели имя, Добро пожаловать!</h2>

<%--Ваше имя: ${param.employeeName}--%>

Ваше имя : ${employee.name}
<br>
<br>
Ваше фамилия : ${employee.surname}
<br>
<br>
Ваше зарплата : ${employee.salary}
<br>
Департамен : ${employee.department}
<br>
Ваш номер : ${employee.phoneNumber}
<br>
Ваш емаил : ${employee.email}
<br>
Вы знаете языки :
<ul>
    <c:forEach var="lang" items="${employee.languages}">

    <li> ${lang}</li>

    </c:forEach>

</ul>

</body>
</html>
