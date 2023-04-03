<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous"></script>
    <script type="text/javascript"
            src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
    <title>Document</title>

    <style>
        a {
            text-decoration: none;
        }

        h2 {
            color: black;
        }

        body {
            background: gray;
            background-repeat: no-repeat;
            font-family: "Raleway", sans-serif;
            font-size: 15pt;
            color: black;
        }

        #forgot-pass {
            color: black;
            font-family: "Raleway", sans-serif;
            font-size: 12pt;
            margin-top: 3px;
            text-align: right;
        }

        #card {
            background: rgba(0, 0, 0, 0.3);
            border-radius: 8px;
            height: 450px;
            margin: 1rem auto 8.1rem auto;
            width: 329px;
        }

        #card-content {
            padding: 12px 44px;
        }

        #card-title {
            font-family: "Raleway Thin", sans-serif;
            letter-spacing: 4px;
            padding-bottom: 23px;
            padding-top: 13px;
            text-align: center;
        }

        #signup {
            color: #201486;
            font-family: "Raleway", sans-serif;
            font-size: 12pt;
            margin-top: 16px;
            text-align: center;
        }

        #submit-btn {
            background: -webkit-linear-gradient(right, #a6f77b, #2dbd6e);
            border: none;
            border-radius: 21px;
            box-shadow: 0px 1px 8px #24c64f;
            cursor: pointer;
            color: black;
            font-family: "Raleway SemiBold", sans-serif;
            height: 42.3px;
            margin: 0 auto;
            margin-top: 50px;
            transition: 0.25s;
            width: 153px;
        }

        #submit-btn:hover {
            box-shadow: 0px 1px 18px #24c64f;
        }

        .form {
            align-items: left;
            display: flex;
            flex-direction: column;
        }

        .form-border {
            background: -webkit-linear-gradient(right, #a6f77b, #2ec06f);
            height: 1px;
            width: 100%;
        }

        .form-content {
            background: #d8c7d4;
            border: none;
            outline: none;
            padding-top: 14px;
        }

        .underline-title {
            background: -webkit-linear-gradient(right, #a6f77b, #2ec06f);
            height: 2px;
            margin: -1.1rem auto 0 auto;
            width: 89px;
        }
    </style>
</head>

<body>
<!--navbar-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><b>ICT Alumni</b></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="insert.jsp"><b>Sign Up</b></a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!--marquee-->
<br>
<marquee><h3>Welcome to ICT Alumni</h3></marquee>

<!--card-->
<div id="card">
    <div id="card-content">
        <div id="card-title">
            <h2><b>LOG IN</b></h2>
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
            <div class="underline-title"></div>
        </div>
        <form action="LoginServlet" method="post" class="form">
            <label for="user-email" style="padding-top:13px">
                &nbsp;<b>ID</b>
            </label>
            <input id="user-email" class="form-content" type="text" name="id" autocomplete="on" required />
            <div class="form-border"></div>
            <label for="user-password" style="padding-top:22px">&nbsp;<b>Password</b>
            </label>
            <input id="user-password" class="form-content" type="password"  name="pass" required />
            <div class="form-border"></div>
            <a href="forget.jsp">
                <legend id="forgot-pass"><i>Forget Password?</i></legend>
            </a>
            <input id="submit-btn" type="submit" name="submit" value="LOGIN" />
            <i><a href="insert.jsp" id="signup">Don't have account yet?</a></i>
        </form>
    </div>
</div>
</body>
<script type="text/javascript">

    $(document).ready(function() {
        $("#loginForm").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                },

                password: "required",
            },

            messages: {
                email: {
                    required: "Please enter email",
                    email: "Please enter a valid email address"
                },

                password: "Please enter password"
            }
        });

    });
</script>

</html>