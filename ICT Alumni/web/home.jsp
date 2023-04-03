
<%@ page import="DAO.UserDAOImpl" %>
<%@ page import="entity.UserDtls" %>
<%@ page import="java.util.List" %>
<%@ page import="DB.DBConnection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />

<link rel="stylesheet" href="css/style.css">



</head>


<body style="background-color: gray">


<!-- ...................navbar....................-->
<nav class="navbar navbar-expand-lg navbar-light bg-light" >
<a class="navbar-brand" href="alumni.jsp">&nbsp; &nbsp; <b>ICT Alumni</b></a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="profile.jsp">&nbsp; &nbsp; <b>${user.id}</b> </a>
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


<div style="float: right;">
    <form class="form-content" action="SearchServlet" method="post" >

        <input type="text" name="svalue"  placeholder="Search Data">
        <button type="submit" class="btn btn-dark " style="font-weight: 600;">Search</button>


    </form>
</div>

<!...................Main part....................... -->
<main>

<div class="table-responsive mt-5">
<!--Table-->
<table class="table table-striped">




<caption style="caption-side: top; text-align: center; font-weight: 700;">All Data </caption>

<!--Table head-->
<thead class="table-dark">
<tr>
<th scope="col">ID</th>
<th scope="col">Name</th>
<th scope="col">Email</th>
<th scope="col">Phone</th>
<th scope="col">Current City</th>
<th scope="col">Home Town</th>
<th scope="col">Graduation Status</th>
<th scope="col">Male/Female</th>
<th scope="col">Profession</th>
<th scope="col">Job Details</th>
<th scope="col">---</th>
</tr>
</thead>
<!--Table head-->

<!--Table body-->
<tbody>
<%

UserDAOImpl userDAO = new UserDAOImpl(DBConnection.getConn());
List<UserDtls> list = userDAO.getAllUser();
for (UserDtls userDtls : list)
{
%>
<tr>
<th scope="row">
<%=userDtls.getId()%>
</th>
<td>
<%=userDtls.getName()%>
</td>
<td>
<%=userDtls.getEmail()%>
</td>
<td>
<%=userDtls.getPhone()%>
</td>
<td>
<%=userDtls.getCtown()%>
</td>
<td>
<%=userDtls.getPtown()%>
</td>
<td>
<%=userDtls.getGrad()%>
</td>
<td>
<%=userDtls.getSex()%>
</td>
<td>
<%=userDtls.getJob()%>
</td>
<td style="display: inline-block;
width: 180px;
white-space: nowrap;
overflow: hidden !important;
text-overflow: ellipsis;">
<%=userDtls.getJdtls()%>
</td>


<td>
<a href="profile1.jsp?id=<%=userDtls.getId()%>"><i>View Profile...</i></a>
</td>



</tr>
<%

}
%>


</tbody>
<!--Table body-->
</table>
<!--Table-->
</div>

</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>
