<%-- <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <h1 style="text-align: center">Register Here:</h1>

        <form method="POST" action="/user/processregister" class="container" >
            &nbsp;
            <div class="form-group row">
                <div class="col-md-3"></div>
                <div class="col-md-2">
                    <label for="username">User Name:</label>
                </div>
                <div class="col-md-4">
                    <input type="text" class="form-control" name="username" placeholder="Enter User Name">
                </div>
                <div class="col-md-3"></div>
            </div>
            &nbsp;
              <div class="form-group row">
               <div class="col-md-2">
                    <label for="password">Password:</label>
                </div>
          <select class="form-control select2" name="depertment" style="width: 100%;">
            <option selected="selected">---Chose Department--- </option>
            <option>Admin</option>
            <option>HR&Payroll</option>
            <option>Accounts & Finance</option>
            <option>Seles</option>
            <option>Production</option>
            <option>Supply Chine Management</option>
          </select>
       	 </div>
                  &nbsp;
            <div class="form-group row">
                <div class="col-md-3"></div>
                <div class="col-md-2">
                    <label for="password">Password:</label>
                </div>
                <div class="col-md-4">
                    <input type="password" class="form-control" name="password" placeholder="Enter Password">
                </div>
                <div class="col-md-3"></div>
            </div>

            &nbsp;

            <div class="row">
                <div class="col-md-5"></div>
                <div class="col-md-4">
                    <button type="submit" class="btn btn-success">Register</button>
                </div>
                <div class="col-md-3"></div>
            </div>
            &nbsp;
        </form>
    </body>
</html> --%>



<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Registration Page</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../app-assets/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="../../app-assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../app-assets/dist/css/adminlte.min.css">
</head>
<body class="hold-transition register-page">
<div class="register-box">
  <div class="register-logo">
    <a href="../../index2.html"><b>User</b>Registration</a>
  </div>

  <div class="card">
    <div class="card-body register-card-body">
      <p class="login-box-msg">Register a new membership</p>

      <form method="POST" action="/user/processregister" ">
       
        <div class="input-group mb-3">
          <input type="text" name="username" class="form-control" placeholder="User Name">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="form-group">
            
          <select class="form-control select2" name="depertment"style="width: 100%;">
            <option selected="selected">---Chose Department--- </option>
            <option value="admin">Admin</option>
            <option value="hr&payroll">HR&Payroll</option>
            <option value="accounts&finance">Accounts & Finance</option>
            <option value="sales">Seles</option>
            <option value="production">Production</option>
            <option value="supply chine">Supply Chine Management</option>
          </select>
       
        </div>
        <div class="input-group mb-3">
          <input type="password" name="password" class="form-control" placeholder="Password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
       
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="agreeTerms" name="terms" value="agree">
              <label for="agreeTerms">
               I agree to the <a href="#">terms</a>
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Register</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

     

      <a href="login" class="text-center">I already have a membership</a>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->

<!-- jQuery -->
<script src="../../app-assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../app-assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../app-assets/dist/js/adminlte.min.js"></script>
</body>
</html>
