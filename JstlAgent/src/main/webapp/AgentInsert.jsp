<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
       <sql:setDataSource var="conn"
               driver="com.mysql.jdbc.Driver"
               url="jdbc:mysql://localhost:3306/exam"
               user="root"
               password="root" />
       <sql:update var="AgentUpdate" dataSource="${conn}">
               INSERT INTO AGENT VALUES(?,?,?,?,?,?)
               <sql:param value="${param.AgentID}" />
               <sql:param value="${param.Name}" />
               <sql:param value="${param.City}" />
               <sql:param value="${param.Gender}" />
               <sql:param value="${param.MaritalStatus}" />
               <sql:param value="${param.Premium}" />       
       </sql:update> 
       <c:out value="Record Inserted......." />       
</body>
</html>