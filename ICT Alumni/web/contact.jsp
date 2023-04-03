
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
       body{
           background: gray;
       }
        .map{
            height: 80%;
            width: 60%;
            float: left;
            margin-top: 30px;
        }
        .contact{
            background: black;
            float: right;
            color: blanchedalmond;
            width: 40%;
            margin-top: 30px;
        }
       a{
           text-decoration: none;
           color: #cccccc;
       }
       a:hover{
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
<body>
<!-- ...................navbar....................-->
<nav class="navbar navbar-expand-lg navbar-light bg-light" >
    <a class="navbar-brand" href="alumni.jsp">&nbsp; &nbsp; <b>ICT Alumni</b></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active" style="float: left;">
                <a class="nav-link" href="home.jsp">&nbsp; &nbsp;
                    <b>Alumni</b> </a>
            </li>
            <li class="nav-item active" style="float: left;">
                <a class="nav-link" href="profile.jsp">&nbsp; &nbsp;
                    <b>${user.id}</b> </a>
            </li>

            <li class="nav-item active" style="float: left;">
                <a class="nav-link" href="notice.jsp">&nbsp; &nbsp;
                    <b>Notice</b> </a>
            </li>

            <li class="nav-item" style="float: left;">
                <a class="nav-link" href="LogoutServlet">&nbsp;&nbsp; <b>Log out</b></a>
            </li>

        </ul>
    </div>
</nav>
<div class="container">
    <div class="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1819.0859613080804!2d89.88950825786908!3d24.2357649960881!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fdfc7edb573571%3A0xda791ddc1ce793bd!2sMawlana%20Bhashani%20Science%20and%20Technology%20University%20(MBSTU)!5e0!3m2!1sen!2sbd!4v1639668745020!5m2!1sen!2sbd" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
       <%--<iframe src="https://www.google.com/maps/place/Mawlana+Bhashani+Science+and+Technology+University+(MBSTU)/@24.2360484,89.8881807,17.04z/data=!4m5!3m4!1s0x39fdfc7edb573571:0xda791ddc1ce793bd!8m2!3d24.235765!4d89.8906026" width="100%" height="650px" frameborder="0" style="border:0" allowfullscreen></iframe>--%>
    </div>
    <div class="contact">
        <h2 class="title">Contact Us</h2><br>
        <h5>Mawlana Bhashani Science and Technology University, Santosh, Tangail-1902, Bangladesh.</h5>
        <br>
        <br>
        <h5>Phone:</h5><br>
        <h5><a href="tel: +88092162304">+88092162304</a></h5>
        <br>
        <br>
        <h5>Email:</h5><br>
        <h5><a href="mailto: department.ict@mbstu.ac.bd">department.ict@mbstu.ac.bd</a></h5>
        <br>

        <div class="gap-3 mt-3 icons d-flex flex-row justify-content-center align-items-center">  <span><a href="https://www.facebook.com/ictmbstu" target="_blank"  class="fa fa-facebook">f</a></span> <span><a href="#" target="_blank" class="fa fa-twitter"></a></span> <span><a href="${user.llink}"  target="_blank" class="fa fa-linkedin"></a></span> </div>


    </div>
</div>

</body>
</html>
