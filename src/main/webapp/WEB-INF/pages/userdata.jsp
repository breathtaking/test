<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="calendar" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>

<html>
<head>
  <title>UserData</title>

  <style type="text/css">
    .tg {
      border-collapse: collapse;
      border-spacing: 0;
      border-color: #ccc;
    }

    .tg td {
      font-family: Arial, sans-serif;
      font-size: 14px;
      text-align: center;
      padding: 10px 5px;
      border-style: solid;
      border-width: 1px;
      overflow: hidden;
      word-break: normal;
      border-color: #ccc;
      color: #333;
      background-color: #fff;
    }

    .tg th {
      font-family: Arial, sans-serif;
      font-size: 14px;
      font-weight: bold;
      padding: 10px 5px;
      border-style: solid;
      border-width: 2px;
      overflow: hidden;
      word-break: normal;
      border-color: #ccc;
      color: #333;
      background-color: #f0f0f0;
    }

    .tg .tg-4eph {
      background-color: #f9f9f9
    }
  </style>




</head>
<body>
<h1>User Details</h1>

<table class="tg">

  <tr>
    <th width="80">ID</th>
    <th width="120">Name</th>
    <th width="120">Age</th>
    <th width="120">Admin</th>
    <th width="120">Date</th>
  </tr>

  <tr>
    <td>${user.id}</td>
    <td>${user.name}</td>
    <td>${user.age}</td>
    <c:if test="${user.isAdmin==0}">
      <td>no</td>
    </c:if>
    <c:if test="${user.isAdmin==1}">
      <td>yes</td>
    </c:if>
    <td><calendar:formatDate  value="${user.createdDate}" pattern="dd-MM-yyyy"/></td>
  </tr>

</table>
</body>
</html>