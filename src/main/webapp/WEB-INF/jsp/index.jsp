<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Autograde system</title>
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
      .landingImg {
        width: 100%;
      }
      body {
        background-color: #f5f5fa;
      }

      .myContainer {
        padding-top: 50px;
        padding-left: 15%;
        padding-right: 15%;
      }
    </style>
  </head>
  <body>
    <jsp:include page="navbar.jsp"></jsp:include>
    <div class="container-fluid myContainer" style="margin-top: 30px">
      <div class="row">
        <div class="col-sm-7">
          <h1>Fast and Accuracy Autograding system</h1>
          <br />
          <h5>Tools to empower teachers</h5>
          <p style="margin-right: 50%">
            With this system, teachers can identify gaps in their students
            understanding, tailor instruction, and meet the needs of every
            student.
          </p>
          <br />
          <a
            type="button"
            class="btn btn-primary btn-md"
            href="presentProblem"
          >
            Present Problem
          </a>
          <a
            type="button"
            class="btn btn-primary btn-md"
            href="submitAssignment"
          >
            Submit Answer
          </a>
        </div>
        <div class="col-sm-5">
          <img src="images/landing.jpg" class="landingImg rounded" />
        </div>
      </div>
    </div>
  </body>
</html>
