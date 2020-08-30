<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="C" %>
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
                password="root"/>
<C:set var="AgentID" value="${param.AgentID}" />
<sql:query var="AgentQuery" dataSource="${conn}">
           SELECT * FROM AGENT WHERE AGENTID=?
           <sql:param> value="${AgentID} />
           </sql:param>
 </sql:query> 
 <C:forEach var="e" items="${AgentQuery.rows}">
         AgentId:
         <C:out value="${e.AgentID}" /> <br/>
         Name:
         <C:out value="${e.Name}" /> <br/>
         City:
         <C:out value="${e.City}" /> <br/>
         Gender:
         <C:out value="${e.Gender}" /> <br/>
         MaritalStatus:
         <C:out value="${e.MaritalStatus}" /> <br/>
         Premium:
         <C:out value="${e.Premium}" /> <br/><hr/>
 </C:forEach>         
</body>
</html>

// HIS-301 sorrav making some changes please be patientce when you see this//
// just delete this and run your code//

// Practice for the git with HIS_300 //
// int i=10 //

