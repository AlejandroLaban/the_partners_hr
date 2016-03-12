
<%@page import="com.utp.partners.model.Job"%>
<%@page import="com.utp.partners.model.DBService"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="style.css" rel="stylesheet" type="text/css"/>
    <title>JSP Page</title>
</head>
<body>
<%@include file="header.jsp"%>
<div>
    <table>
        <thead>
        <tr>
            <th>Job ID</th>
            <th>Title</th>
            <th>Min Salary</th>
            <th>Max Salary</th>
        </tr>
        </thead>
        <tbody>
        <%
            DBService serv = new DBService();
            List<Job> list = serv.getJobs();
            for (Job job : list) {
        %>

        <tr>
            <td><%=String.valueOf(job.getJobId())%></td>
            <td><%=job.getJobTitle()%></td>
            <td><%=job.getMinSalary()%></td>
            <td><%=job.getMaxSalary()%></td>
            <td style="border: none;">
                <div>
                    <form method="post" action="jobUpdate.jsp">
                        <input type="hidden" id="updateId" name="updateId" value="<%=String.valueOf(job.getJobId())%>"/>
                        <input type="submit" value="Modify..."/>
                    </form>
                </div>
            </td>
            <td style="border: none;">
                <div>
                    <form method="post" action="DeleteJob">
                        <input type="hidden" id="delId" name="delId" value="<%=String.valueOf(job.getJobId())%>"/>
                        <input type="submit" value="Delete"/>
                    </form>
                </div>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>
