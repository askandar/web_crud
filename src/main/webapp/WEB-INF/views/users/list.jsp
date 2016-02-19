<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: askandar
  Date: 18.02.16
  Time: 2:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div>
    <h1>List users</h1>
    <spring:url value="/users" var="showUserUrl"/>
    <spring:url value="/users" var="editUserUrl"/>
    <spring:url value="/users/remove" var="removeUserUrl"/>


    <a class="btn btn-default" href="${showUserUrl}?form">Add User</a>

    <c:if test="${not empty users}">
        <table  id="results" class="table table-striped table-bordered" cellspacing="0" width="100%" >
            <thead>
            <tr>
                <th>Name</th>
                <th>Age</th>
                <th>isAdmin</th>
                <th>Created_time</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td>
                        <a href="${showUserUrl}/${user.id}">${user.name}</a>
                    </td>
                    <td>${user.age}</td>
                    <td>${user.admin}</td>
                    <td><joda:format value="${user.createdDate}" pattern="dd-MM-yyyy"/> </td>
                    <td><a href="${editUserUrl}/${user.id}?form">Edit</a> | <a href="${removeUserUrl}/${user.id}">Delete</a> </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <script>
            $(document).ready(function(){
                $('#results').dataTable(
                );
            });
        </script>
    </c:if>

</div>
