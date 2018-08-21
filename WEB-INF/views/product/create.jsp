<%--
  Created by IntelliJ IDEA.
  User: syphan
  Date: 8/20/2018
  Time: 10:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Form create new product</title>
</head>
<body>
<h1>Create new product</h1>
<p>
    <c:if test="${message != null}">
        <span>${message}</span>
    </c:if>
</p>
<p>
    <a href="/showList">Back to product list</a>
</p>
<form:form modelAttribute="product" action="create" method="post">
    <table>
        <tr>
            <td>Id: </td>
            <td><form:input path="id" readonly="true"/></td>
        </tr>
        <tr>
            <td>Name: </td>
            <td><form:input path="name"/></td>
        </tr>
        <tr>
            <td>Price: </td>
            <td><form:input path="price"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="Create"></td>
        </tr>
    </table>
</form:form>
</body>
</html>