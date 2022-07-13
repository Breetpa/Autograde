<html>
<head>
<style>
  .mynavbar {
    background-color: white;
    padding-top: 20px;
    padding-left: 12%;
    padding-right: 12%;
  }
  .navbar-brand img {
    width: 46px;
    height: 46px;
  }
</style>
</head>
<body>
<div class="mynavbar">
    <nav
      class="navbar navbar-expand-sm navbar-light d-flex justify-content-between"
    >
      <a class="navbar-brand" href="/">
        <img src="images/logo.png" />
        AutoGrade
      </a>
     
      <ul class="navbar-nav">
      <% if(Boolean.TRUE.equals(session.getAttribute("isAuthorization"))){ %>
          <li class="nav-item">
            <a class="nav-link" href="logout"><%=session.getAttribute("email") %></a>
          </li>
      <% }else{  %>
          <li class="nav-item">
            <a class="nav-link" href="login">LOGIN</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="signup">SIGNUP</a>
          </li>
      <% } %>
      </ul>
    </nav>
  </div>
</body>
</html>