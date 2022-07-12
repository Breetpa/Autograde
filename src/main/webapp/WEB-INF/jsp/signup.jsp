<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Autograde system | signup</title>
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
      body {
        background-color: #f5f5fa;
      }
      .landingImg {
        width: 100%;
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
    <jsp:include page="navbar.jsp"></jsp:include>
    <div
      class="container-fluid myContainer d-flex justify-content-center"
      style="margin-top: 30px"
    >
      <div class="row myCard">
        <div class="col-6 myCardLeft">
          <h2>Sign up</h2>
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
          <ul class="nav nav-tabs">
            <li class="nav-item">
              <a class="nav-link active" href="#home">Professor</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#menu1">Student</a>
            </li>
          </ul>

          <!-- Tab panes -->
          <div class="tab-content">
            <div id="home" class="container tab-pane active">
              <br />
              <form action="addUser" method="post">
                <div class="form-group">
                  <label for="name">Name:</label>
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Enter name"
                    id="name"
                    name="name"
                  />
                </div>
                <div class="form-group">
                  <label for="email">Email address:</label>
                  <input
                    type="email"
                    class="form-control"
                    placeholder="Enter email"
                    id="email"
                    name="email"
                  />
                </div>
                <div class="form-group">
                  <label for="pwd">Password:</label>
                  <input
                    type="password"
                    class="form-control"
                    placeholder="Enter password"
                    id="pwd"
                    name="password"
                  />
                </div>
                <div class="form-group">
                  <label for="cpwd">Confirm Password:</label>
                  <input
                    type="password"
                    class="form-control"
                    placeholder="Retype password"
                    id="cpwd"
                    name="rpassword"
                  />
                </div>
                <br/>
                <button type="submit" class="btn btn-primary">Submit</button>
              </form>
            </div>
            <div id="menu1" class="container tab-pane fade">
              <br />
              <form action="/action_page.php">
                <div class="form-group">
                  <label for="name">Name:</label>
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Enter name"
                    name
                    id="name"
                  />
                </div>
                <div class="form-group">
                  <label for="email">Email address:</label>
                  <input
                    type="email"
                    class="form-control"
                    placeholder="Enter email"
                    id="email"
                  />
                </div>
                <div class="form-group">
                  <label for="pwd">Password:</label>
                  <input
                    type="password"
                    class="form-control"
                    placeholder="Enter password"
                    id="pwd"
                  />
                </div>
                <div class="form-group form-check">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" /> Remember
                    me
                  </label>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
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
