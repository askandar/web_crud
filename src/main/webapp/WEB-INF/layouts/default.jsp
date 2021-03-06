<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: askandar
  Date: 19.02.16
  Time: 8:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<head>


    <link href="<c:url value="/resources/styles/bootstrap.min.css"/>" rel="stylesheet" />
    <script type="text/javascript" src="<c:url value="/resources/scripts/jquery.min.js"/>"></script>
    <link rel="stylesheet" href="<c:url value="/resources/styles/jquery.dataTables.min.css"/>" />
    <script type="text/javascript" src="<c:url value="/resources/scripts/jquery.dataTables.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/scripts/bootstrap.min.js"/>"></script>
    <link rel="stylesheet" href="<c:url value="/resources/styles/jquery-ui.css"/>">
    <script src="<c:url value="/resources/scripts/jquery-ui.min.js"/>"></script>



    <title>Users</title>

</head>

<body class="tundra spring">

<div class="container">
    <div class="span12">
    <div id="headerWrapper">
        <tiles:insertAttribute name="header" ignore="true"/>
    </div>
    <div id="main">

        <tiles:insertAttribute name="body"/>

    </div>
    <div>
        <tiles:insertAttribute name="footer" ignore="true"/>
    </div>
    </div>
    </div>
</body>
