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
    System.out.print(id);
    System.out.print(job);
%>
<div id="mystyle" class="myform">
    <form id="form" name="form" action="UpdateJob" method="post">
        <h1>Update Job ID:<%=job.getJob_id()%></h1>
        <p>Informacion a modificar:<%=job.getJob_id()%></p>
        <label><input type="hidden" name="job_id" id="job_id" value="<%=job.getJob_id()%>"/><span class="small"></span></label>
        <label>Name<span class="small">Enter Title</span></label>
        <input type="text" name="job_title" id="job_title" value="<%=job.getJob_title()%>"/>
        <label>Phone<span class="small">Enter min salary</span></label>
        <input type="text" name="min_salary" id="min_salary" value="<%=job.getMin_salary()%>"/>
        <label>Email<span class="small">Enter max salary</span></label>
        <input type="text" name="max_salary" id="max_salary" value="<%=job.getMax_salary()%>"/>
        <button type="submit">Update Job</button>
        <div class="spacer"></div>
    </form>
</div>
</body>
</html>