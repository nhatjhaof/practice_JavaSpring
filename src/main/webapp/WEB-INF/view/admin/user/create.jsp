<%--
  Created by IntelliJ IDEA.
  User: HI
  Date: 11/22/2024
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>Title</title>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
    <!-- Latest compiled JavaScript -->
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js">

    </script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6 col-12 mx-auto">
                <h3>Create User</h3>
                <hr />
                <form:form action="/admin/user/create1" method="post" modelAttribute="newUser">
    <div class="mb-3">
        <label class="form-label">Email address</label>
        <form:input type="email" class="form-control" path="email"/>
    </div>
    <div class="mb-3">
        <label class="form-label">Password</label>
        <form:input type="password" class="form-control" path="password"/>
    </div>
    <div class="mb-3">
        <label  class="form-label">Phone Number</label>
        <form:input type="text" class="form-control" path="phone" />
    </div>
    <div class="mb-3">
        <label class="form-label">Full Name</label>
        <form:input type="text" class="form-control" path="fullname"/>
    </div>
    <div class="mb-3">
        <label  class="form-label">Address</label>
        <form:input type="text" class="form-control" path="address"/>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
                </form:form>
        </div>
        </div>
    </div>

</body>
</html>
