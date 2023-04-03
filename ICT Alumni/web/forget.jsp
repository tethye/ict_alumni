
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <style>
        a {
            text-decoration: none;
        }

        h2 {
            color: blanchedalmond;
        }

        body {
            background: gray;
            background-repeat: no-repeat;
            font-family: "Raleway", sans-serif;
            font-size: 15pt;
            color: blanchedalmond;
        }

        #forgot-pass {
            color: #dfdfdf;
            font-family: "Raleway", sans-serif;
            font-size: 12pt;
            margin-top: 3px;
            text-align: right;
        }

        #card {
            background: rgba(0, 0, 0, .3);
            border-radius: 8px;
            height: 450px;
            margin: 6rem auto 8.1rem auto;
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
            color: white;
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
            width: 200px;
        }
    </style>

</head>

<body>
<!--navbar-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">&nbsp; &nbsp; <b>ICT Alumni</b></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">&nbsp; &nbsp;<b> Home </b> </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="insert.jsp">&nbsp;&nbsp;<b> Sign Up</b></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="login.jsp">&nbsp;&nbsp;<b> Log In </b></a>
            </li>

        </ul>
    </div>
</nav>

<!--card-->
<div id="card">
    <div id="card-content">
        <div id="card-title">
            <h4>Reset Password</h4>
            <div class="underline-title"></div>
        </div>
        <form method="post" class="form">
            <label for="user-email" style="padding-top:13px">
                &nbsp;<b>Email</b>
            </label>
            <input id="user-email" class="form-content" type="email" name="email" autocomplete="on" required />


            <div class="form-border"></div>


            <label for="user-password" style="padding-top:22px">&nbsp;<b>Password</b></label>
            <input id="user-password" class="form-content" type="password" name="pass" placeholder="Enter new password" required />
            <input id="user-password1" class="form-content" type="password" name="pass2" placeholder="Retype new password" required />

            <div class="form-border"></div>

            <input id="submit-btn" type="submit" name="submit" value="Update" />
            <i><a href="reg.jsp" id="signup">Don't have account yet?</a></i>
        </form>
    </div>
</div>
</body>



</html>