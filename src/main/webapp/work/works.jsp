<%--
    Created by mingfei.net@gmail.com
    7/25/17 15:07
    https://github.com/thu/ssm-museum_work/
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/commons/inc.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <th>COUNT</th>
        <th>TITLE</th>
        <th>ARTIST</th>
        <th>PICTURE</th>
        <th>YEAR</th>
        <th>MUSEUM</th>
    </tr>
    <c:forEach var="work" items="${sessionScope.pagination.list}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>${work.title}</td>
            <td>${work.artist}</td>
            <td>${work.picture}</td>
            <td>${work.year}</td>
            <td>${work.museum.name}</td>
        </tr>
    </c:forEach>
</table>
<c:import url="${ctx}/commons/page.jsp">
    <c:param name="path" value="work/${sessionScope.pagination.statement}"/>
</c:import>
</body>
</html>
