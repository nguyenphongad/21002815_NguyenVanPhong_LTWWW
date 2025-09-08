<%@ page import="java.util.List" %>
<%@ page import="iuh.fit.se.model.User" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>User List</title>
</head>
<body>
<h2>Registered Users</h2>
<table border="1" cellpadding="8">
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Gender</th>
        <th>Birthday</th>
    </tr>
    <%
        List<User> users = (List<User>) request.getAttribute("users");
        if (users != null) {
            for (User u : users) {
    %>
    <tr>
        <td><%= u.getFirstName() %>
        </td>
        <td><%= u.getLastName() %>
        </td>
        <td><%= u.getEmail() %>
        </td>
        <td><%= u.getGender() %>
        </td>
        <td><%= u.getBirthday() %>
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>
