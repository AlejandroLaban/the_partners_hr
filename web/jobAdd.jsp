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
            <label>Job ID<span class="small">Enter Job ID</span></label>
            <input type="text" name="job_id" id="job_id" />
            <label>Name<span class="small">Enter title</span></label>
            <input type="text" name="job_title" id="job_title" />
            <label>Phone<span class="small">Enter min salary</span></label>
            <input type="text" name="min_salary" id="min_salary" />
            <label>Email<span class="small">Enter max salary</span></label>
            <input type="text" name="max_salary" id="max_salary" />
            <button type="submit">Add New Job</button>
            <div class="spacer"></div>
        </form>
    </div>
</form>
</body>
</html>