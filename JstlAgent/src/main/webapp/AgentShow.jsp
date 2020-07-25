<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
           <sql:query var="AgentQuery" dataSource="${conn}">
           SELECT * FROM AGENT
           </sql:query>
           <c:forEach var="e" items="${AgentQuery.rows}">
                      AgentID:
                      <c:out value="${e.AgentID}" /> <br/>
                      Name:
                      <c:out value="${e.Name}" /> <br/>
                      City:
                      <c:out value="${e.City}" /> <br/>
                      Gender:
                      <c:out value="${e.Gender}" /> <br/>
                      MaritalStatus:
                      <c:out value="${e.MaritalStatus}" /> <br/>
                      Premium:
                      <c:out value="${e.Premium}" /> <br/><hr/>
              </c:forEach>        
</body>
</html>