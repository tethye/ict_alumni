<%@ page import="DAO.UserDAOImpl" %>
<%@ page import="DB.DBConnection" %>
<%@ page import="entity.UserDtls" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>////////////
<!doctype html>
<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Anton&family=Lobster&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />

    <link rel="stylesheet" href="css/style.css">

</head>

<body style="background:gray">

<!--navbar-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="alumni.jsp"><b>ICT Alumni</b></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">

                <li class="nav-item">
                    <a class="nav-link" href="profile.jsp"><b>${user.id}</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="home.jsp"><b>Alumni</b></a>
                </li>

            </ul>
        </div>
    </div>
</nav>
<!-- ...................Main part.....-->
<main>

    <div class=" container pt-5 pb-5">
        <div class="row justify-content-center">
            <div class="registration  col-lg-7 col-md-7  shadow-lg p-5 mb-6 bg-white rounded">
                <h4 class="text-center" style="font-weight: 600; color: #4558C6;">Update </h4>



                <form class="formcontrol" action="updateServlet" method="post">

                    <%-----start JSTL------%>
                    <c:if test="${not empty succMsgg}">
                        <p class="text-center text-success" style="font-weight: 500">
                                ${succMsgg}
                        </p>
                        <c:remove var="succMsgg" scope="session"/>

                    </c:if>
                    <%--ne null--%>
                    <c:if test="${not empty failedMsgg }">
                        <p class="text-center text-danger" style="font-weight: 500">
                                ${failedMsgg}
                        </p>
                        <c:remove var="failedMsgg" scope="session"/>
                    </c:if>
                    <%-----start JSTL------%>



                    <%-- <input type="hidden" name="id" value="${user.getId()}">--%>
                    <div class="form-group">
                        <label for="exampleInputEmail00">ID </label>
                        <input type="text" name="id" value="${user.getId()}" class="form-control" id="exampleInputEmail00" aria-describedby="emailHelp"  readonly="readonly" required>

                    </div>


                    <div class="form-group">
                        <label for="exampleInputEmail2">Name </label>
                        <input type="text" name="name" value="${user.getName()}" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp"  required>

                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Email </label>
                        <input type="email" name="email" value="${user.getEmail()}" class="form-control" id="exampleInputEmail3" aria-describedby="emailHelp"  required>

                    </div>


                    <div class="form-group">
                        <label for="exampleInputEmail4">Phone Number </label>
                        <input type="number" name="phone" value="${user.getPhone()}" class="form-control" id="exampleInputEmail4" aria-describedby="emailHelp"  required>

                    </div>



                    <div class="form-group">
                        <label for="exampleInputEmail5">Current City </label>
                        <input type="text" name="ctown" value="${user.getCtown()}" class="form-control" id="exampleInputEmail5" aria-describedby="emailHelp"  required>

                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail6"> Home Town </label>
                        <input type="text" name="ptown" value="${user.getPtown()}" class="form-control" id="exampleInputEmail6" aria-describedby="emailHelp"  required>

                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail7">Graduation Status </label>
                        <input type="text" name="grad" value="${user.getGrad()}" class="form-control" id="exampleInputEmail7" aria-describedby="emailHelp"  required>

                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail8">Male/Female </label>
                        <input type="text" name="sex" value="${user.getSex()}" class="form-control" id="exampleInputEmail8" aria-describedby="emailHelp"  required>

                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail9">Working Status</label>
                        <input type="text" name="job" value="${user.getJob()}" class="form-control" id="exampleInputEmail9" aria-describedby="emailHelp"  required>

                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail10">Job Details </label>
                        <input type="text" name="jdtls" value="${user.getJdtls()}" class="form-control" id="exampleInputEmail10" aria-describedby="emailHelp"  required>

                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail11">Facebook Link </label>
                        <input type="text" name="flink" value="${user.getFlink()}" class="form-control" id="exampleInputEmail11" aria-describedby="emailHelp"  required>

                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail12">Instagram Link</label>
                        <input type="text" name="ilink" value="${user.getIlink()}" class="form-control" id="exampleInputEmail12" aria-describedby="emailHelp"  required>

                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail13">Linkdin Link</label>
                        <input type="text" name="llink" value="${user.getLlink()}" class="form-control" id="exampleInputEmail13" aria-describedby="emailHelp"  required>

                    </div>




                    <div class="form-group">
                        <label for="exampleInputEmail15">Password </label>
                        <input type="password" name="pass" value="" class="form-control" id="exampleInputEmail15" aria-describedby="emailHelp"  placeholder="* Enter Your Password" required>

                    </div>


                    <div class="row justify-content-lg-center">
                        <button type="submit" class="btn btn-dark " style="font-weight: 600;">Update</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
</main>
<!-- ...................Main part....................... -->
<!-- ...................foooter part....................... -->
<footer id="foot" style="margin-top: 20px;">


</footer>




<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
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