<%-- 
    Document   : addCreditCard
    Created on : Jul 15, 2014, 10:30:52 PM
    Author     : kokob
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>credit card registration Page</title>
        <link href="addcustomerStyle.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <h1> Please Enter your Credit card information here</h1>
         <h4 style="color:red">${msg}</h4>
         
         <form:form commandName="creditcard" action="addcreditcard" method="post">
            <form:errors path="*" cssClass="errorblock" element="div" />
            <table>
                <tr>
                    <td>Issuer Full Name:</td>
                    <td><form:input path="issuer" /> </td>
                    <td><form:errors path="issuer" cssClass="error" /> </td>
                </tr>
                <tr>
                    <td>Credit Card Number</td>
                    <td><form:input path="creditCardNumber" maxlength="16" /> </td>
                    <td><form:errors path="creditCardNumber" cssClass="error"/> </td>
                </tr>
                <tr>
                    <td>Expiration Date</td>
                    <td><form:input path="expirationDate"  /> </td>
                    <td><form:errors path="expirationDate" cssClass="error"/> </td>
                </tr>
                <tr>
                    <td>Security Code:</td>
                    <td><form:password path="securityCode" maxlength="3" /> </td>
                    <td><form:errors path="securityCode" cssClass="error"/> </td>
                </tr>
                
                
            </table>
            <input type="submit"/>

        </form:form>
         
    </body>
</html>
