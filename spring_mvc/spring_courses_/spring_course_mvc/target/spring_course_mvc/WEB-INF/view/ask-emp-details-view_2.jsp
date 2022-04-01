<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="forn" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>Пожалуйста введите своё имя</h2>



<form:form action="showDetails" modelAttribute="employee">

    Name<form:input path="name"/>
    <form:errors path="name"/>
    <br>
    Surname<form:input path="surname"/>
    <form:errors path="surname"/>
    <br>
    Salary<form:input path="salary"/>
    <form:errors path="salary"/>
    <br>
    PhoneNumber<form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br>
    <br>
    Email<form:input path="email"/>
    <form:errors path="email"/>
    <br>
    <br>
    <br>
    <br>
    <br>
    <form:select path="department">
    <form:option value="IT_1" label="IT"/>
    <form:option value="Salex" label="Sales"/>
    </form:select>
    <br>
    <br>
    Which car do you want?
    BMW <form:radiobutton path="carBrand" value="BMW"/>
    Audi <form:radiobutton path="carBrand" value="AUDI"/>
    Mercedes <form:radiobutton path="carBrand" value="MERS"/>

    <br>
    <br>
    <br>
    Выберите языки которые вы знаете
    <br>
    EN<forn:checkbox path="languages" value="English"/>
    SP<forn:checkbox path="languages" value="Spanish"/>
    FR<forn:checkbox path="languages" value="French"/>
    DE<forn:checkbox path="languages" value="Deutch"/>

    <input type="submit" value="OK">

    <br>

</form:form>

</body>
</html>
