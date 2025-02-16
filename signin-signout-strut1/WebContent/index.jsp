<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to Struts 1</title>
</head>
<body>
    <h1>Welcome to Struts 1!</h1>
    <p>This is the index page.</p>
    <html:link action="/welcome">Go to Welcome Page</html:link>
</body>
</html>