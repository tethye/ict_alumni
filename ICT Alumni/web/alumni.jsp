
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Image Slider | With Manual Buttons and Autoplay Navigation Visibility</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="stylesheet" href="style.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }

        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-image: url('ict.png');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }

        .img-slider {
            position: relative;
            width: 100%;
            height: 100%;
            margin: 10px;
            background: #1D212B;
        }

        .img-slider .slide {
            z-index: 1;
            position: absolute;
            width: 100%;
            clip-path: circle(0% at 0 50%);
        }

        .img-slider .slide.active {
            clip-path: circle(150% at 0 50%);
            transition: 2s;
            transition-property: clip-path;
        }

        .img-slider .slide img {
            z-index: 1;
            width: 100%;
            border-radius: 5px;
        }

        .img-slider .slide .info {
            position: absolute;
            top: 0;
            padding: 15px 30px;
        }

        .img-slider .slide .info h2 {
            color: black;
            font-size: 45px;
            text-transform: uppercase;
            font-weight: 800;
            letter-spacing: 2px;
        }

        .img-slider .slide .info p {
            color: red;
            background: rgba(0, 0, 0, 0.1);
            font-size: 16px;
            width: 60%;
            padding: 10px;
            border-radius: 4px;
        }

        .img-slider .navigation {
            z-index: 2;
            position: absolute;
            display: flex;
            bottom: 30px;
            left: 50%;
            transform: translateX(-50%);
        }

        .img-slider .navigation .btn {
            background: rgba(255, 255, 255, 0.5);
            width: 12px;
            height: 12px;
            margin: 10px;
            border-radius: 50%;
            cursor: pointer;
        }

        .img-slider .navigation .btn.active {
            background: #2696E9;
            box-shadow: 0 0 2px rgba(0, 0, 0, 0.5);
        }

        @media (max-width: 820px) {
            .img-slider {
                width: 600px;
                height: 375px;
            }
            .img-slider .slide .info {
                padding: 10px 25px;
            }
            .img-slider .slide .info h2 {
                font-size: 35px;
            }
            .img-slider .slide .info p {
                width: 70%;
                font-size: 15px;
            }
            .img-slider .navigation {
                bottom: 25px;
            }
            .img-slider .navigation .btn {
                width: 10px;
                height: 10px;
                margin: 8px;
            }
        }

        @media (max-width: 620px) {
            .img-slider {
                width: 400px;
                height: 250px;
            }
            .img-slider .slide .info {
                padding: 10px 20px;
            }
            .img-slider .slide .info h2 {
                font-size: 30px;
            }
            .img-slider .slide .info p {
                width: 80%;
                font-size: 13px;
            }
            .img-slider .navigation {
                bottom: 15px;
            }
            .img-slider .navigation .btn {
                width: 8px;
                height: 8px;
                margin: 6px;
            }
        }

        @media (max-width: 420px) {
            .img-slider {
                width: 320px;
                height: 100px;
            }
            .img-slider .slide .info {
                padding: 5px 10px;
            }
            .img-slider .slide .info h2 {
                font-size: 25px;
            }
            .img-slider .slide .info p {
                width: 90%;
                font-size: 11px;
            }
            .img-slider .navigation {
                bottom: 10px;
            }
        }
    </style>

</head>



<body>




<div class="img-slider">
    <!--navbar-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="index.jsp">&nbsp; &nbsp; <b>ICT Alumni</b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div style="clear: both;"></div>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="profile.jsp">&nbsp; &nbsp; <b>${user.id}</b> </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="home.jsp">&nbsp; &nbsp; <b>Alumni</b> </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="notice.jsp">&nbsp; &nbsp; <b>Notice</b> </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="contact.jsp">&nbsp; &nbsp; <b>Contact us</b> </a>
                </li>
                <li class="nav-item" style="float: left;">
                    <a class="nav-link" href="LogoutServlet">&nbsp;&nbsp; <b>Log out</b></a>
                </li>
            </ul>
        </div>


    </nav>

    <%-----start JSTL------%>

    <c:if test="${not empty succMsg}">
        <h5 class="text-center text-success" style="font-weight: 500">
                ${succMsg}
        </h5>
        <c:remove var="succMsg" scope="session" />

    </c:if>
    <%--ne null--%>
    <c:if test="${not empty failedMsg }">
        <h5 class="text-center text-danger" style="font-weight: 500">
                ${failedMsg}
        </h5>
        <c:remove var="failedMsg" scope="session" />
    </c:if>

    <%-----end JSTL------%>
    <div class="slide active">
        <img src="ict2.jpg" alt="">
        <div class="info">
            <h2>Welcome to ICT Alumni</h2>
            <p><b>Department of Information and Communication Technology,<br> Mawlana Bhashani Science and Technology University (MBSTU), shantosh, Tangail-1902</b></p>
        </div>
    </div>
    <%--<div class="slide">
        <img src="ict3.jpg" alt="">
        <div class="info">
            <h2>Welcome to ICT Alumni</h2>
            <p><b>Department of Information and Communication Technology,<br> Mawlana Bhashani Science and Technology University (MBSTU), shantosh, Tangail-1902, Bangladesh</b></p>
        </div>
    </div>--%>
    <div class="slide">
        <img src="ict1.jpg" alt="">
        <div class="info">
            <h2>Welcome to ICT Alumni</h2>
            <p><b>The Department of Information and Communication Technology (ICT) was established in Mawlana Bhashani Science and Technology University (MBSTU) by the approval of Bangladesh University Grand Commission (BUGC) under the Faculty of Computer Science and Engineering (CSE) on 28th January 2003. Initially the Department offers the degree of B.Sc (Engg.) in ICT and the formal inaugural of academic activity of the Department commissioned on 26th October 2003 with 02(two) teachers and 40 students in the session of 2003-2004. Till today, ICT Department has produced around 100 graduates who have established a good reputation in different IT sectors in home and abroad. In this session it started conducting classes for the 7th batch on 9th January 2010. Currently there are 250 students are studying in different semesters. The Department is located on 12,500 sq. ft. of space on the south side of the second floor of the New Academic Building, MBSTU.</b></p>
        </div>
    </div>
    <%--<div class="slide">
        <img src="ict3.jpg" alt="">
        <div class="info">
            <h2>Welcome to ICT Alumni</h2>
            <p><b>The Department of Information and Communication Technology (ICT) was established in Mawlana Bhashani Science and Technology University (MBSTU) by the approval of Bangladesh University Grand Commission (BUGC) under the Faculty of Computer Science and Engineering (CSE) on 28th January 2003. Initially the Department offers the degree of B.Sc (Engg.) in ICT and the formal inaugural of academic activity of the Department commissioned on 26th October 2003 with 02(two) teachers and 40 students in the session of 2003-2004. Till today, ICT Department has produced around 100 graduates who have established a good reputation in different IT sectors in home and abroad. In this session it started conducting classes for the 7th batch on 9th January 2010. Currently there are 250 students are studying in different semesters. The Department is located on 12,500 sq. ft. of space on the south side of the second floor of the New Academic Building, MBSTU.</b></p>
        </div>
    </div>--%>
    <%--<div class="slide">
        <img src="ict4.jpg" alt="">
        <div class="info">
            <h2>Welcome to ICT Alumni</h2>
            <p><b>The Department of Information and Communication Technology (ICT) was established in Mawlana Bhashani Science and Technology University (MBSTU) by the approval of Bangladesh University Grand Commission (BUGC) under the Faculty of Computer Science and Engineering (CSE) on 28th January 2003. Initially the Department offers the degree of B.Sc (Engg.) in ICT and the formal inaugural of academic activity of the Department commissioned on 26th October 2003 with 02(two) teachers and 40 students in the session of 2003-2004. Till today, ICT Department has produced around 100 graduates who have established a good reputation in different IT sectors in home and abroad. In this session it started conducting classes for the 7th batch on 9th January 2010. Currently there are 250 students are studying in different semesters. The Department is located on 12,500 sq. ft. of space on the south side of the second floor of the New Academic Building, MBSTU.</b></p>
        </div>
    </div>--%>
    <div class="navigation">
        <div class="btn active"></div>
        <div class="btn"></div>
        <%--<div class="btn"></div>--%>
        <%--<div class="btn"></div>
        <div class="btn"></div>--%>
    </div>
</div>

<script type="text/javascript">
    var slides = document.querySelectorAll('.slide');
    var btns = document.querySelectorAll('.btn');
    let currentSlide = 1;

    // Javascript for image slider manual navigation
    var manualNav = function(manual) {
        slides.forEach((slide) => {
            slide.classList.remove('active');

        btns.forEach((btn) => {
            btn.classList.remove('active');
    });
    });

        slides[manual].classList.add('active');
        btns[manual].classList.add('active');
    }

    btns.forEach((btn, i) => {
        btn.addEventListener("click", () => {
            manualNav(i);
    currentSlide = i;
    });
    });

    // Javascript for image slider autoplay navigation
    var repeat = function(activeClass) {
        let active = document.getElementsByClassName('active');
        let i = 1;

        var repeater = () => {
            setTimeout(function() {
                [...active].forEach((activeSlide) => {
                    activeSlide.classList.remove('active');
            });

                slides[i].classList.add('active');
                btns[i].classList.add('active');
                i++;

                if (slides.length == i) {
                    i = 0;
                }
                if (i >= slides.length) {
                    return;
                }
                repeater();
            }, 10000);
        }
        repeater();
    }
    repeat();
</script>

</body>

</html>