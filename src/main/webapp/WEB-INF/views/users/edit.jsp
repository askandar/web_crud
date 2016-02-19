<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: askandar
  Date: 18.02.16
  Time: 3:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div>


    <script type="text/javascript">
        $(function(){
            $('#createdDate').datepicker({
                dateFormat: 'yy-mm-dd',
                changeYear: true
            });
        });
    </script>

    <spring:message text="Create New User" var="labelContactNew"/>
    <spring:message text="Editing User" var="labelContactUpdate"/>
    <spring:message text="Name" var="Name"/>
    <spring:message text="Age" var="Age"/>
    <spring:message text="admin" var="admin"/>
    <spring:message text="createdDate" var="createdDate"/>
    <spring:url value="/users" var="homeUrl"/>


    <spring:eval expression="user.id == null ? labelContactNew:labelContactUpdate" var="formTitle"/>



    <div id = "userUpdate">
            <h1 class="text-primary" align="center">${formTitle} ${user.name}</h1>
            <form:form modelAttribute="user" id="userUpdateForm" method="post">
                <form:label path="Name">
                    ${Name}
                </form:label>
                <form:input path="name" class="form-control"/>
                <div>
                    <form:errors path="name" cssClass="error" />
                </div>
                <p/>
                <form:label path="Age">
                    ${Age}
                </form:label>
                <form:input path="age" class="form-control" />
                <div>
                    <form:errors path="age" cssClass="error" />
                </div>
                <p/>

                <form:label path="createdDate">
                    ${createdDate}
                </form:label>
                <form:input path="createdDate" id="createdDate" class="form-control" />
                <div>
                    <form:errors path="createdDate" cssClass="error" />
                </div>
                <p/>

                <form:label path="admin">
                    ${admin}
                </form:label>
                <form:checkbox path="admin" />
                <div>
                    <form:errors path="admin" cssClass="error" />
                </div>
                <p/>

                <button class="btn btn-default" type="submit">Save</button>
                <button class="btn btn-default" type="reset">Reset</button>
               <a class="btn btn-default" href="${homeUrl}">Cancel</a>
            </form:form>
    </div>

</div>
