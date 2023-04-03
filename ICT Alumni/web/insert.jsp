<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!doctype html>
<html lang="en">

<head>
    <title>Inset</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" rossorigin="anonymous">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Anton&family=Lobster&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

    <style>

        .pani {
            background: rgba(0, 0, 0, 0.3);
        }

    </style>

</head>

<body style="background-color: gray">

<!--nav bar-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">&nbsp; &nbsp; <b>ICT Alumni</b></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">

            <li class="nav-item">
                <a class="nav-link" href="login.jsp">&nbsp;&nbsp;<b> Login</b></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="insert.jsp">&nbsp;&nbsp;<b> Sign Up</b></a>
            </li>

        </ul>
    </div>
</nav>


<!-- ...................Main part....................... -->
<main>

    <div class=" container pt-5 pb-5 pani">
        <div class="row justify-content-center">
            <div class="registration  col-lg-7 col-md-7  shadow-lg p-5 mb-6 bg-white rounded">
                <h4 class="text-center" style="font-weight: 600; color: #4558C6;">Registration</h4>
                <form class="formcontrol" action="insertServlet" method="post" enctype="multipart/form-data">
                    <%-----start JSTL------%>
                    <c:if test="${not empty succMsg}">
                        <p class="text-center text-success" style="font-weight: 500">
                                ${succMsg}
                        </p>
                        <c:remove var="succMsg" scope="session"/>

                    </c:if>
                    <%--ne null--%>
                    <c:if test="${not empty failedMsg }">
                        <p class="text-center text-danger" style="font-weight: 500">
                                ${failedMsg}
                        </p>
                        <c:remove var="failedMsg" scope="session"/>
                    </c:if>
                    <%-----start JSTL------%>

                    <div class="form-group">
                        <label for="exampleInputEmail1"> ID : </label>
                        <input type="text" class="form-control" name="id" id="exampleInputEmail1"
                               aria-describedby="emailHelp" placeholder="IT-*****">

                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail2">Name: </label>
                        <input type="text" class="form-control" name="name" id="exampleInputEmail2"
                               aria-describedby="emailHelp" placeholder="Enter name" >

                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail3">Email: </label>
                        <input type="email" name="email" class="form-control" id="exampleInputEmail3"
                               aria-describedby="emailHelp" placeholder="* ID@mbstu.ac.bd" >

                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail33">Batch: </label>
                        <input type="text" name="batch" class="form-control" id="exampleInputEmail33"
                               aria-describedby="emailHelp" placeholder="* " >

                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail4">Password: </label>
                        <input type="password" name="pass" class="form-control" id="exampleInputEmail4"
                               aria-describedby="emailHelp" placeholder="* Type a new password" >
                        <input type="password" name="pass" class="form-control" id="exampleInputEmail5"
                               aria-describedby="emailHelp" placeholder="* Retype password" >

                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail6"> Phone Number : </label>
                        <input type="number" class="form-control" name="phone" id="exampleInputEmail6"
                               aria-describedby="emailHelp" placeholder="Enter Phone Number" >

                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail7"> Current City : </label>
                        <input type="text" class="form-control" name="ctown" id="exampleInputEmail7"
                               aria-describedby="emailHelp" placeholder="Enter Current City" >

                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail8">Home Town : </label>
                        <input type="text" class="form-control" name="ptown" id="exampleInputEmail8"
                               aria-describedby="emailHelp" placeholder="Enter Home Town" >

                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail9">Graduation Status: </label>
                        <input type="text" name="grad" class="form-control" id="exampleInputEmail9"
                               aria-describedby="emailHelp" placeholder="Graduate/Undergraduate" >

                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail10"> Sex: </label>
                        <input type="text" class="form-control" name="sex" id="exampleInputEmail10"
                               aria-describedby="emailHelp" placeholder="Male/Female" >

                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail11"> Profession: </label>
                        <input type="text" class="form-control" name="job" id="exampleInputEmail11"
                               aria-describedby="emailHelp" placeholder="Enter your profession" >

                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail12">Job Details: </label>
                        <input type="text" name="jdtls" class="form-control" id="exampleInputEmail12"
                               aria-describedby="emailHelp" placeholder="...." >

                    </div>


                    <div class="form-group">
                        <label for="exampleInputEmail13"> Facebook Link : </label>
                        <input type="text" class="form-control" name="flink" id="exampleInputEmail13"
                               aria-describedby="emailHelp" placeholder="Enter Faceebook ID link" >

                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail14">Instagram Link : </label>
                        <input type="text" class="form-control" name="ilink" id="exampleInputEmail14"
                               aria-describedby="emailHelp" placeholder="Enter Instagram Id link" >

                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail15">Linkedin Link </label>
                        <input type="text" name="llink" class="form-control" id="exampleInputEmail151"
                               aria-describedby="emailHelp" placeholder="Enter Linkdin ID link" >

                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail15">Picture</label>
                        <input type="file" name="picture" class="form-control" id="exampleInputEmail15"
                               placeholder="please insert your pic here" >

                    </div>


                    <div class="row justify-content-lg-center justify-content-center">
                        <button type="submit" class="btn btn-dark" style="font-weight: 600;">Submit</button>
                        <br>

                    </div>
                    <br>


                </form>
            </div>
        </div>
    </div>
</main>
<!-- ...................Main part....................... -->
<!-- ...................foooter part....................... -->
<footer id="foot" style="margin-top: 20px;">


</footer>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>
