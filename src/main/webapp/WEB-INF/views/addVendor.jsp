<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Please Register</title>
        <link href="addcustomerStyle.css" rel="stylesheet" type="text/css" />
    </head>
    <body>

        <h1> Please Register Here</h1>
        <h4 style="color:red">${msg}</h4>

        <form:form commandName="vendor" action="addVendor" method="post">
            <form:errors path="*" cssClass="errorblock" element="div" />
            <table>
                <tr>
                    <td>First Name:</td>
                    <td><form:input path="firstName" /> </td>
                    <td><form:errors path="firstName" cssClass="error" /> </td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><form:input path="lastName" /> </td>
                    <td><form:errors path="lastName" cssClass="error"/> </td>
                </tr>
                <tr>
                    <td>email</td>
                    <td><form:input path="email" /> </td>
                    <td><form:errors path="email" cssClass="error"/> </td>
                </tr>

            </tr>
            <td>email</td>
            <td><form:input path="parentCompany" /> </td>
            <td><form:errors path="parentCompany" cssClass="error"/> </td>
        </tr>
        <tr>
            <td>User Name:</td>
            <td><form:input path="userName" /> </td>
            <td><form:errors path="userName" cssClass="error"/> </td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><form:password path="password" /> </td>
            <td><form:errors path="password" cssClass="error"/> </td>
        </tr>

    </table>
    <input type="submit"/>

</form:form>
</body>
</html>