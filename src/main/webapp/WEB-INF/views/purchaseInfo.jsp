<%-- 
    Document   : purchaseInfo
    Created on : May 20, 2014, 2:58:20 PM
    Author     : ib
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter Address/CreditCard</title>
    </head>
    <body>
         <body>
        <form:form action="invalidInfo" method="post">
            <form:errors path="*" cssClass="errorblock" element="div" />
            <table>
                <tr>
                    
                    <td>Address Line1:</td>
                    <td><form:input path="address.addressLine1" /> </td>
                    <td><form:errors path="address.addressLine1" cssClass="error"/> </td>
                </tr>
                <tr>
                    <td>Address Line2:</td>
                    <td><form:input path="address.addressLine2" /> </td>
                    <td><form:errors path="address.addressLine2" cssClass="error"/> </td>
                </tr>
                <tr>
                    <td>City:</td>
                    <td><form:input path="address.city" /> </td>
                    <td><form:errors path="address.city" cssClass="error"/> </td>
                </tr>
                <tr>
                    <td>State:</td>
                    <td><form:input path="address.state" /> </td>
                    <td><form:errors path="address.state" cssClass="error"/> </td>
                </tr>
                <tr>
                    <td>Zip Code:</td>
                    <td><form:input path="address.zipcode" /> </td>
                    <td><form:errors path="address.zipcode" cssClass="error"/> </td>
                </tr>
                <tr>
                    <td>Credit Card issuer:</td>
                    <td><form:input path="creditCard.issuer" /> </td>
                    <td><form:errors path="creditCard.issuer" cssClass="error"/> </td>
                </tr>
                <tr>
                    <td>Credit Card Number:</td>
                    <td><form:input path="creditCard.creditCardNumber" /> </td>
                    <td><form:errors path="creditCard.creditCardNumber" cssClass="error"/> </td>
                </tr>
                <tr>
                    <td>Credit Card Expiration Date:</td>
                    <td><form:input path="creditCard.expirationDate" /> </td>
                    <td><form:errors path="creditCard.expirationDate" cssClass="error"/> </td>
                </tr>


            </table>
            <input type="submit"/>

        </form:form>
    </body>
</html>
