<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: syphan
  Date: 8/21/2018
  Time: 8:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete product from list</title>
</head>
<body>
<h1>Delete product</h1>
<p>
    <a href="/showList">Back to product list</a>
</p>
<p>Are you sure</p>
<form:form modelAttribute="product" method="post" action="/delete">
    <fieldset>
        <legend>Delete product from list</legend>
        <table>
            <tr>
                <td>Id:</td>
                <td><form:input path="id" readonly="true"/></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><form:input path="name"/></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><form:input path="price"/></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Delete"></td>
            </tr>
        </table>
    </fieldset>
</form:form>
</body>
</html>
