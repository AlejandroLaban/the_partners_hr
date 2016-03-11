<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 07/03/16
  Time: 12:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Jobs</title>
</head>
<body>
    <div id="mystyle" style="border: none;">
        <h1>JAVA</h1>
        <p><br/>
            <b>Modelo HR tabla Jobs</b><br/>
                <%=new Date()%>  </br>
            <a href="jobAdd.jsp">Añadir jobs</a><br>
            <a href="jobView.jsp">Ver jobs</a>
        </p>
    </div>
</body>
</html>