<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="entity.UserDtls" %>
<%@ page import="DAO.UserDAOImpl" %>
<%@ page import="DB.DBConnection" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>My Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        * {
            margin: 0;
            padding: 0
        }

        body {
            background-color: blanchedalmond;
        }

        .card {
            width: 350px;
            background-color: rgba(0, 0, 0, 0.3);
            border: none;
            cursor: pointer;
            transition: all 0.5s
        }

        .image img {
            transition: all 0.5s
        }

        .card:hover .image img {
            transform: scale(1.5)
        }

        .btn {
            height: 140px;
            width: 140px;
            border-radius: 50%
        }

        .name {
            font-size: 22px;
            font-weight: bold
        }

        .idd {
            font-size: 14px;
            font-weight: 600
        }

        .idd1 {
            font-size: 12px
        }

        .number {
            font-size: 15px;
            font-weight: bold
        }

        .follow {
            font-size: 12px;
            font-weight: 500;
            color: blanchedalmond;
        }

        .btn1 {
            height: 40px;
            width: 150px;
            border: none;
            background-color: blanchedalmond;
            color: blanchedalmond;
            font-size: 15px
        }

        .text span {
            font-size: 13px;
            color: blanchedalmond;
            font-weight: 500
        }

        .icons i {
            font-size: 19px
        }

        hr .new1 {
            border: 1px solid
        }

        .join {
            font-size: 14px;
            color: blanchedalmond;
            font-weight: bold
        }

        .date {
            background-color: #ccc
        }

        #editp {
            text-align: center;
            color: indianred;
        }

        a {
            text-decoration: none;
            color: blanchedalmond;
        }

        a:hover {
            text-decoration: none;
            color: tomato;
        }

        .fa {
            padding: 20px;
            font-size: 20px;
            width: 50px;
            text-align: center;
            text-decoration: none;
            margin: 5px 2px;
            border-radius: 50%;
        }

        .fa:hover {
            opacity: 0.7;
        }

        .fa-facebook {
            background: #3B5998;
            color: white;
        }

        .fa-twitter {
            background: #55ACEE;
            color: white;
        }

        .fa-google {
            background: #dd4b39;
            color: white;
        }

        .fa-linkedin {
            background: #007bb5;
            color: white;
        }

        .fa-youtube {
            background: #bb0000;
            color: white;
        }

        .fa-instagram {
            background: #882321;
            color: white;
        }


    </style>
</head>
<body style="background: gray">

<!-- ...................navbar....................-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="alumni.jsp">&nbsp; &nbsp; <b>ICT Alumni</b></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">

            <li class="nav-item active" style="float: left;">
                <a class="nav-link" href="home.jsp">&nbsp; &nbsp;
                    <b>Alumni</b> </a>
            </li>
            <li class="nav-item active" style="float: left;">
                <a class="nav-link" href="notice.jsp">&nbsp; &nbsp;
                    <b>Notice</b> </a>
            </li>
            <li class="nav-item" style="float: left;">
                <a class="nav-link" href="contact.jsp">&nbsp;&nbsp; <b>Contact us</b></a>
            </li>

            <li class="nav-item" style="float: left;">
                <a class="nav-link" href="LogoutServlet">&nbsp;&nbsp; <b>Log out</b></a>
            </li>

        </ul>
    </div>
</nav>

<br>
<br>
<h1>${user}</h1>
<br>
<br>

<div class="container mt-4 mb-4 p-3 d-flex justify-content-center">
    <div class="card p-4">
        <div class=" image d-flex flex-column justify-content-center align-items-center">
            <button class="btn btn-secondary">
                <img src="${pageContext.request.contextPath}/File-Server/${user.picture}" height="100"
                     width="100"/>
            </button>
            <span class="name mt-3">${user.name}</span> <span class="idd">${user.id}</span>
            <div class="d-flex flex-row justify-content-center align-items-center gap-2"><span class="idd1"><b><a
                    href="mailto: ${user.email}">${user.email}</a> </b></span></div>
            <div class="d-flex flex-row justify-content-center align-items-center gap-2"><span class="idd1"><b><a
                    href="tel: ${user.phone}">${user.phone}</a></b></span></div>
            <div class="d-flex flex-row justify-content-center align-items-center gap-2"><span
                    class="idd1"><b>${user.batch}</b></span></div>
            <div class="d-flex flex-row justify-content-center align-items-center mt-3"><span
                    class="number"><b>${user.job}</b><span class="follow"></span></span></div>
            <div class=" d-flex mt-2"><a href="Update.jsp" id="editp" class="btn1 btn-dark"><b>Edit Profile</b> </a>
            </div>
            <div class="text mt-3"> <span>
                ${user.jdtls}<br><br>
                <b>Current City :</b> &nbsp; ${user.ctown} <br>
                <b>Home town :</b> &nbsp; ${user.ptown} <br>
                <b>Graduation Status :</b> &nbsp; ${user.grad} <br>
                <b>Sex:</b> &nbsp; ${user.sex} <br>
            </span></div>


            <div class="gap-3 mt-3 icons d-flex flex-row justify-content-center align-items-center"><span><a
                    href="${user.flink}" target="_blank" class="fa fa-facebook"></a></span> <span><a
                    href="${user.ilink}" target="_blank" class="fa fa-instagram"></a></span> <span><a
                    href="${user.llink}" target="_blank" class="fa fa-linkedin"></a></span></div>
            <div class=" px-2 rounded mt-4 date "><span class="join">${user.date}</span></div>
        </div>
    </div>
</div>
</body>
</html>
