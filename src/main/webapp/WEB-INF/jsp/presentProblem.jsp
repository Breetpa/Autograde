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
        <h5 class="pl-3">Create Assignment</h5>
        <br />
      </div>
      <div class="card myCard">
        <form action="/action_page.php">
          <div class="row">
            <div class="col-6">
              <div class="myCardLeft">
                <div class="form-group">
                  <label for="name">Assignment Name:</label>
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Enter name"
                    id="name"
                  />
                </div>
                <div class="form-group">
                  <label for="name">Assignment Name:</label>
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Enter name"
                    id="name"
                  />
                </div>
                <div class="form-group">
                  <label for="description">Assignment description:</label>
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Enter description"
                    id="description"
                  />
                </div>
                <div class="form-group">
                  <label for="date">Due Date:</label>
                  <input
                    type="date"
                    class="form-control"
                    placeholder="Enter date"
                    id="date"
                  />
                </div>
                <div class="form-group">
                  <label for="marking_completed">Marking completed:</label>
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Is marking completed"
                    id="marking_completed"
                    readonly
                  />
                </div>
                <div class="form-group">
                  <label for="module">Module:</label>
                  <select class="form-control" id="module">
                    <option>m1</option>
                    <option>m2</option>
                    <option>m3</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="number_of_test_case">Number of test cases:</label>
                  <input
                    type="number"
                    class="form-control"
                    placeholder="Enter number of test case"
                    id="number_of_test_case"
                  />
                </div>
                <div class="form-group">
                  <label for="total_marks">Total marks:</label>
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Enter total marks"
                    id="total_marks"
                  />
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
  </body>
</html>