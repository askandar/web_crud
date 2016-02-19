<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: askandar
  Date: 18.02.16
  Time: 3:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div>
    <spring:url value="/users" var="editUserUrl"/>

    <div id="userinfo">
        <h1>Information about user ${user.name}</h1>
        <table  id="info" class="table table-bordered" cellspacing="10">
            <tr>
                <td>Name</td>
                <td>${user.name}</td>
            </tr>
            <tr>
                <td>Age</td>
                <td>${user.age}</td>
            </tr>
            <tr>
                <td>TimeDate</td>
                <td><joda:format value="${user.createdDate}" pattern="dd-MM-yyyy"/></td>
            </tr>
            <tr>
                <td>IsAdmin</td>
                <td>${user.admin}</td>
            </tr>
        </table>
        <a class="btn btn-default" href="${editUserUrl}/${user.id}?form">Edit</a>
    </div>
</div>
