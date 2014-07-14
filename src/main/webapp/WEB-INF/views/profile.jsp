<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit User</title>
        <link href="../resources/style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <jsp:include page="headerUSER.jsp"/>
        <h1>Edit User</h1>
        <form:form commandName="customer" action="yourProfile/${customer.id}" method="post">
            <form:hidden path="id" />
            <form:errors path="*" cssClass="errorblock" element="div" />
            <table>
                <tr>
                    <td>First Name :</td>
                    <td><form:input path="firstName" /> </td>
                    <td><form:errors path="firstName" cssClass="error" /> </td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><form:input path="lastName" /> </td>
                    <td><form:errors path="lastName" cssClass="error" /> </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><form:input path="email" /> </td>
                    <td><form:errors path="email" cssClass="error" /> </td>
                </tr>
                <tr>
                    <td>User Name</td>
                    <td><form:input path="userName" /> </td>
                    <td><form:errors path="userName" cssClass="error" /> </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><form:input path="password" /> </td>
                    <td><form:errors path="password" cssClass="error" /> </td>
                </tr>
                <tr>
                    <td>Address Line 1</td>
                    <td><form:input path="address.addressLine1" /> </td>
                    <td><form:errors path="address.addressLine1" cssClass="error" /> </td>
                </tr>
                <tr>
                    <td>Address Line 2</td>
                    <td><form:input path="address.addressLine2" /> </td>
                    <td><form:errors path="address.addressLine2" cssClass="error" /> </td>
                </tr>
                <tr>
                    <td>State</td>
                    <td><form:input path="address.state" /> </td>
                    <td><form:errors path="address.state" cssClass="error" /> </td>
                </tr>
                <tr>
                    <td>City</td>
                    <td><form:input path="address.city" /> </td>
                    <td><form:errors path="address.city" cssClass="error" /> </td>
                </tr>
                
                <tr>
                    <td>Zip code</td>
                    <td><form:input path="address.zipcode" /> </td>
                    <td><form:errors path="address.zipcode" cssClass="error" /> </td>
                </tr>
                <tr>
                    <td>Credit Card Number</td>
                    <td><form:input path="creditCard.creditCardNumber" /> </td>
                    <td><form:errors path="creditCard.creditCardNumber" cssClass="error" /> </td>
                </tr>
                <tr>
                    <td>Expiration Date</td>
                    <td><form:input path="creditCard.expirationDate" /> </td>
                    <td><form:errors path="creditCard.expirationDate" cssClass="error" /> </td>
                </tr>
            </table>
            <input type="submit" value="update"/>
        </form:form>       
        
        
             
    </body>
</html>