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
     
      .landingImg {
        width: 100%;
      }
      .myContainer {
        padding-left: 15%;
        padding-right: 15%;
        margin-top: 50px;
        margin-bottom: 50px;
      }
      .myCard {
        border-radius: 15px;
        background-color: white;
        padding-bottom: 20px;
      }
      .myCardLeft {
        padding: 50px;
        border-top-left-radius: 10px;
        border-bottom-left-radius: 10px;
        border-right: 1px solid grey;
      }
      .myCardRight {
        background-color: white;
        color: black;
        padding: 50px;
        border-top-right-radius: 10px;
        border-bottom-right-radius: 10px;
      }
      .myCardAction {
        padding-right: 50px;
      }
    </style>
  </head>
  <body>
    <%
      if(!Boolean.TRUE.equals(session.getAttribute("isAuthorization"))){
        String site = "/login" ;
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", site);
      }
    %>
    <jsp:include page="navbar.jsp"></jsp:include>
    <div class="container-fluid myContainer">
      <div>
        <h5 class="pl-3">Submit Assignment</h5>
        <br />
      </div>
      <div class="card myCard">
        <form action="/submitAssignment" method="post" enctype = "multipart/form-data">
          <div class="row">
            <div class="col-6">
              <div class="myCardLeft">
                <div class="form-group">
                  <label for="course">Course:</label>
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Enter course"
                    id="course"
                  />
                </div>
                <div class="form-group">
                  <label for="module">Module:</label>
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Enter module"
                    id="module"
                  />
                </div>
                <div class="form-group">
                  <label for="assignment">Assignment:</label>
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Enter assignment"
                    id="assignment"
                  />
                </div>
                <div class="form-group">
                  <label for="upload">Upload_file:</label>
                  <div class="custom-file">
                    <input
                      type="file"
                      class="custom-file-input"
                      id="customFile"
                    />
                    <label class="custom-file-label" for="customFile"
                      >Choose file</label
                    >
                  </div>
                </div>
                <br />
                <a
                  type="button"
                  data-toggle="collapse"
                  data-target="#submission_review"
                >
                  Click here to review
                </a>
                <div id="submission_review" class="collapse">
                  <div class="table-responsive">
                    <table class="table">
                      <thead>
                        <tr>
                          <td>Test case Id</td>
                          <td>Name</td>
                          <td>Expected Output</td>
                          <td>Marks</td>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>1</td>
                          <td contenteditable="true">qwe</td>
                          <td contenteditable="true">asd</td>
                          <td contenteditable="true">zxc</td>
                        </tr>
                        <tr>
                          <td>1</td>
                          <td contenteditable="true">qwe</td>
                          <td contenteditable="true">asd</td>
                          <td contenteditable="true">zxc</td>
                        </tr>
                        <tr>
                          <td>1</td>
                          <td contenteditable="true">qwe</td>
                          <td contenteditable="true">asd</td>
                          <td contenteditable="true">zxc</td>
                        </tr>
                        <tr>
                          <td>1</td>
                          <td contenteditable="true">qwe</td>
                          <td contenteditable="true">asd</td>
                          <td contenteditable="true">zxc</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-6">
              <div class="myCardRight">
                <div class="form-group">
                  <label for="instruction">Instruction:</label>
                  <textarea
                    class="form-control"
                    placeholder="Enter instruction"
                    id="instruction"
                    rows="15"
                  ></textarea>
                </div>
              </div>
            </div>
          </div>
          <hr />
          <div class="myCardAction">
            <div class="float-right">
              <button class="btn btn-primary">Submit</button>
              <button class="btn btn-primary">Cancel</button>
            </div>
          </div>
        </form>
      </div>
    </div>
    <script>
      // Add the following code if you want the name of the file appear on select
      $(".custom-file-input").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
      });
    </script>
  </body>
</html>
