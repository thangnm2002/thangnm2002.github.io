<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>


<head>

  <title>Spring MVC Form Handling</title>
</head>

<body>

<h2> Employees</h2>
<%--@elvariable id="employee" type="Employee"--%>
<form:form method="post" modelAttribute="employee" action="addEmployee">
  <table>
    <tr>
      <td><form:label path="id">Id</form:label></td>
      <td><form:input path="id"/></td>
    </tr>

    <tr>
      <td><form:label path="name">Name</form:label></td>
      <td><form:input path="name"/></td>
    </tr>

    <tr>
      <td><form:label path="Address">Address</form:label></td>
      <td><form:textarea path="address"/></td>
    </tr>

    <tr>
      <td><form:label path="email">Email</form:label></td>
      <td><form:input path="email"/></td>
    </tr>

    <tr>
      <td><form:label path="gender">Gender</form:label></td>
      <td>
        <form:radiobutton path="gender" value="male" label="male"/>
        <form:radiobutton path="gender" value="female" label = "female"/>
      </td>
    </tr>
    <tr>
      <td><form:label path="favorites">Favorites</form:label></td>
      <td>
      <form:checkboxes items="${listFavorites}" path="favorites"/>
      </td>
    </tr>

    <tr>
      <td><form:label path="positon">Position</form:label></td>
      <td><form:select path="positon">
      <form:option value="NONE" label="Select"/>
      <form:options items ="${listPosition}"/>
        </form:select>
      </td>
    </tr>
    <tr>
      <td colspan = "2" ><input type="submit" value="Submit"/></td>
    </tr>


  </table>


</form:form>


</body>
</html>
