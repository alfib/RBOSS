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
        <h1>Your Profile</h1>
        
            <table border="1" cellpadding="5">
                <tr>
                    <td>First Name :</td>
                    <td> ${u.firstName} </td>
                    <td> ${u.lastName} </td>
                    <td> ${u.email} </td>
                    <td> ${u.userName} </td>
                    <td> ${u.password} </td>
                    <td> ${u.address.addressLine1} </td>
                    <td> ${u.address.addressLine2} </td>
                    <td> ${u.address.state} </td>
                    <td> ${u.address.city} </td>
                    <td> ${u.address.zipcode} </td>
                    <td> ${u.creditCard.creditCardNumber} </td>
                    <td> ${u.creditCard.expirationDate} </td>
                    
                </tr>
                

            </table>
            
        
             
    </body>
</html>