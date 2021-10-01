<%-- <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <h1 style="text-align: center">Login Here:</h1>

        <form method="POST" action="/user/processlogin" class="container" >
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
                    <button type="submit" class="btn btn-success">Login</button>
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
  <title>Role | Log in</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../app-assets/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="../../app-assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../app-assets/dist/css/adminlte.min.css">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="../../index2.html"><b>User </b>Login</a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Sign in to start your session</p>

      <form method="POST" action="/user/processlogin">
        <div class="input-group mb-3">
          <input type="text" name="username" class="form-control" placeholder="User Name">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="form-group">
          <select class="form-control select2" name="login" style="width: 100%;">
            <option selected="selected">---Chose Role--- </option>
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
              <input type="checkbox" id="remember">
              <label for="remember">
                Remember Me
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Login</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

     
      <!-- /.social-auth-links -->

      <p class="mb-1">
        <a href="forgot-password.html">I forgot my password</a>
      </p>
      <p class="mb-0">
        <a href="/user/register" class="text-center">Register a new membership</a>
      </p>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="../../app-assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../app-assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../app-assets/dist/js/adminlte.min.js"></script>
</body>
</html>



