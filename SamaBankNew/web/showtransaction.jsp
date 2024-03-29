<%-- 
    Document   : showtransaction
    Created on : Dec 11, 2014, 7:21:35 PM
    Author     : ning jittima
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/" prefix="info"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transaction Page</title>
        <link rel="stylesheet" href="assets/dist/css/flat-ui.min.css"/>
        <link rel="stylesheet" href="assets/dist/js/flat-ui.js"/>
        <link rel="stylesheet" href="assets/dist/css/vendor/bootstrap.min.css"/>
        <link rel="shortcut icon" href="assets/dist/img/icons/icon.jpg" />
        <link rel="stylesheet" href="assets/dist/css/menus.css"/>
    </head>
    <body>
        <info:pageHeader title="Show Transaction"/>
        <div class="container-fluid" align="center" width ="76%" style ="padding: 0;margin: 0 ;border-radius: 100px 100px 0px 0px" >
            <div id="main"style ="border-radius: 10px 10px 0px 0px" >
                <info:navbarmenu activepoint="5"/>
                <form action="Transaction" method="POST" class="form-group" style ="box-shadow: 2px 6px 68px -9px rgba(0,0,0,0.75);">
                    <h1 class="h1">Transactions</h1>
                    <table class="table table-responsive table-striped">
                        <tr>
                            <th>No</th>
                            <th>Account ID</th>
                            <th>Date and Time</th>
                            <th>#CODE</th>
                            <th>Amount</th>
                            <th>Balance</th>                     
                        </tr>
                        <c:set var="count" value="1"/>
                        <c:forEach var="trans" items="${transaction}">
                            <tr>
                                <td>${count}</td>
                                <td>${trans.accountId}</td>
                                <td>${trans.date}</td>
                                <%--  <td>${trans.time}</td>  --%>
                                <td>${trans.code}</td>
                                <td>${trans.amount}</td>
                                <%-- <td>${trans.oldBalance}</td> --%>
                                <td>${trans.balance}</td>
                            </tr>
                            <c:set var="count" value="${count+1}"/>
                        </c:forEach>
                    </table>

                    <font color="green">DEPO</font> = Deposit    //    <font color="green">WIDR</font> = Withdraw   //
                    <font color="green">TRAO</font> = Transfer Out      //  <font color="green">TRAI</font> = Transfer In
                </form>
                <h3 style="color: #c0392b">${msg}</h3>
            </div>
        </div>
        <info:footer/>
    </body>
</html>
