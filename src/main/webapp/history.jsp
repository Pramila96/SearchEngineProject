<%@page import="java.util.ArrayList"%>
<%@page import="com.pramila.HistoryResult"%>
<html>
<head>
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>

<body>
<form action = "Search">
        <input type="text" name = "keyword"></input>
        <button type ="submit">Search</button>
    </form>
    <form action="History">
    <button type="submit">History</button>
    </form>
<div class="resultTable">
    <table border=2>
    <tr>
    <td>Name</td>
    <td>Link</td>
    </tr>
    <%
    ArrayList<HistoryResult> results=(ArrayList<HistoryResult>) request.getAttribute("results");
    for(HistoryResult result:results){
    %>
    <tr>
    <td><%out.println(result.getName());%></td>
    <td><a href="<%out.println(result.getLink());%>"><%out.println(result.getLink());%></a></td>
    </tr>
    <%
    }
    %>

    </table>
    </div>
</body>
</html>