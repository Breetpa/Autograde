<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Bootstrap 4 Website Example</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <style>
      .fakeimg {
        height: 200px;
        background: #aaa;
      }
      body {
        background-color: #f5f5fa;
      }
      .myContainer {
        padding-top: 50px;
        padding-left: 15%;
        padding-right: 15%;
      }
      .myCard {
        border-radius: 15px;
        width: 80%;
      }
      .myCardLeft {
        background-color: rgb(10, 42, 102);
        color: white;
        padding: 50px;
        border-top-left-radius: 10px;
        border-bottom-left-radius: 10px;
      }
      .myCardRight {
        background-color: white;
        color: black;
        padding: 50px;
        border-top-right-radius: 10px;
        border-bottom-right-radius: 10px;
      }
    </style>
  </head>
  <body>
    <%
      if(Boolean.TRUE.equals(session.getAttribute("isAuthorization"))){
        String site = "/" ;
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", site);
      }
    %>
    <jsp:include page="navbar.jsp"></jsp:include>
    <div
      class="container-fluid myContainer d-flex justify-content-center"
      style="margin-top: 30px"
    >
      <div class="row myCard">
        <div class="col-6 myCardLeft">
          <h2>Login</h2>
          <br />
          <p>A world class education for anyone, anywhere. 100% free.</p>
          <p>
            Join Khan Academy to get personalized help with what you’re studying
            or to learn something completely new. We’ll save all of your
            progress.
          </p>
          <p>
            By signing up for Khan Academy, you agree to our Terms of use and
            Privacy Policy.
          </p>
        </div>
        <div class="col-6 myCardRight">
          <!-- Tab panes -->
          <div id="home" class="container tab-pane active">
            <br />
            <form action="login" method="post">
              <div class="form-group">
                <label for="email">Email address:</label>
                <input
                  type="email"
                  class="form-control"
                  placeholder="Enter email"
                  id="email"
                  name = "email"
                />
              </div>
              <div class="form-group">
                <label for="pwd">Password:</label>
                <input
                  type="password"
                  class="form-control"
                  placeholder="Enter password"
                  id="pwd"
                  name ='password'
                />
              </div>
              <div class="form-group">
                <label for="category">Category:</label>
                <select class="form-control" id="category" name="usertype">
                  <option>Professor</option>
                  <option>Student</option>
                  <option>Admin</option>
                </select>
              </div>
              <button type="submit" class="btn btn-primary">LOGIN</button>
            </form>
          </div>
        </div>
      </div>
    </div>
    <script>
      $(document).ready(function () {
        $(".nav-tabs a").click(function () {
          $(this).tab("show");
        });
      });
    </script>
  </body>
</html>
