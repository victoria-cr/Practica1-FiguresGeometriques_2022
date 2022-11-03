<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Figures Geomètriques</title>
    <style>
        canvas{
            background-color: white;
            border:1px solid black;
        }
    </style>
</head>
<body>
    <h1>Llibre de visites</h1>

    <c:forEach var="m" items="${messages}">
        <div style="margin-bottom: 10px; border: 1px solid black;">
            ${m.text}
        </div>
    </c:forEach>

    <form method="post" action"/index">
        text:<br>
        <textarea name="text">
        </textarea>
        <br>
        <input type="submit" value"Envia">
    </form>
</body>
</html>