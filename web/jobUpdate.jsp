<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 07/03/16
  Time: 10:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.utp.partners.model.Job"%>
<%@page import="com.utp.partners.model.DBService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="style.css" rel="stylesheet" type="text/css"/>
    <title>Employee Update Page</title>
</head>
<body>
<%@include file="header.jsp"%>
<%
    String id = request.getParameter("updateId");
    DBService serv = new DBService();
    Job job = serv.getJobs(id);
%>
<div id="mystyle" class="myform">
    <form id="form" name="form" action="UpdateJob" method="post">
        <h1>Update Job ID:<%=job.getJobId()%></h1>
        <p>Fields to modify:<%=job.getJobId()%></p>
        <label><input type="hidden" name="jobId" id="jobId" value="<%=job.getJobId()%>"/><span class="small"></span></label>
        <label>Enter Title</label>
        <input type="text" name="jobTitle" id="jobTitle" value="<%=job.getJobTitle()%>"/>
        <label>Enter min salary</label>
        <input type="text" name="minSalary" id="minSalary" value="<%=job.getMinSalary()%>"/>
        <label>Enter max salary</label>
        <input type="text" name="maxSalary" id="maxSalary" value="<%=job.getMaxSalary()%>"/>
        <button type="submit">Update Job</button>
        <div class="spacer"></div>
    </form>
</div>
</body>
</html>