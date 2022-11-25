<%@page import="java.util.ArrayList"%>
<%@page import="com.pramila.SearchResult"%>
<html>
<head>
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <form action = "Search">
        <input type="text" name = "keyword"></input>
        <button type ="submit">Search</button>
    </form>
    <table border=2>
    <tr>
    <td>Name</td>
    <td>Link</td>
    </tr>
    <%
    ArrayList<SearchResult> results=(ArrayList<SearchResult>) request.getAttribute("results");
    for(SearchResult result:results){
    %>
    <tr>
    <td><%out.println(result.getTitle());%></td>
    <td><a href="<%out.println(result.getLink());%>"><%out.println(result.getLink());%></a></td>
    </tr>
    <%
    }
    %>
    </table>
</body>
</html>