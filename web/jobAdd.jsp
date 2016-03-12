<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 07/03/16
  Time: 10:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="style.css" rel="stylesheet" type="text/css"/>
    <title>New Job</title>
</head>
<body>
<%@include file="header.jsp"%>
<form method="post" action="AddJob">
    <div id="mystyle" class="myform">
        <form id="form" name="form" action="AddJob" method="post">
            <h1>Job</h1>
            <p>To add new Job enter following information</p>
            <label>Enter Job ID</label>
            <input type="text" name="jobId" id="jobId" />
            <label>Enter title</label>
            <input type="text" name="jobTitle" id="jobTitle" />
            <label>Enter min salary</label>
            <input type="text" name="minSalary" id="minSalary" />
            <label>Enter max salary</label>
            <input type="text" name="maxSalary" id="maxSalary" />
            <button type="submit">Add New Job</button>
            <div class="spacer"></div>
        </form>
    </div>
</form>
</body>
</html>