

 <jsp:include page="/WEB-INF/view/common/header.jsp" />
 
 
 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Salary Info Form</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">General Form</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
           <!--    <div class="card-header">
                <h3 class="card-title">Quick Example</h3>
              </div> -->
              <!-- /.card-header -->
              <!-- form start -->
              <form action="/employee/updateSal" method="POST">
					            
            <!-- /.card -->

            <!-- Input addon -->
          
            <!-- general form elements disabled -->
            <div class="card card-warning">
              <div class="card-header">
                <h1 class="card-title">Employee Salary Information</h1>
                
              </div>
            
              <!-- /.card-header -->
              <div class="card-body">
             

	 
                  <input type="hidden"  name="id" value="${e.id}">
                     
              
                  <div class="row">
                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label>First Name</label>
                        <input type="text" name="fname"  value="${e.fname}" class="form-control" placeholder="Enter Your First Name">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Last Name</label>
                        <input type="text" name="lname"  value="${e.lname}" class="form-control" placeholder="Enter Your Last Name">
                      </div>
                    </div>
                  </div>
          
          
        

                 
                
                  <div class="row">
                    <div class="col-sm-6">
                      <label>Department</label>
                      <select class="form-control select2" name="depertment"   style="width: 100%;">
                        <option selected="disabled">---Choose Department--- </option>
                        <option value="admin"${e.depertment == 'admin' ? 'selected' : ''}>Admin</option>
                        <option value="hr&payroll"${e.depertment == 'hr&payroll' ? 'selected' : ''}>HR&Payroll</option>
                        <option value="accounts&finance"${e.depertment == 'accounts&finance' ? 'selected' : ''}>Accounts & Finance</option>
                        <option value="sales"${e.depertment == 'sales' ? 'selected' : ''}>Seles</option>
                        <option value="production"${e.depertment == 'production' ? 'selected' : ''}>Production</option>
                        <option value="supply chine"${e.depertment == 'supply chine' ? 'selected' : ''}>Supply Chine Management</option>
                      </select>
                    </div>
                     <div class="col-sm-6">
                      <div class="form-group">
                        <label>Basic Salary</label>
                        <input type="text" name="salary" id="salary"  value="${e.salary}" class="form-control"  placeholder="Enter Basic salary">
                      </div>
                    </div>
                
                  </div>
                   
                  <div class="row">
                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label>House Rent </label>
                        <input type="text" name="house" id="house" value="${e.house}"class="form-control" placeholder="Enter House Rent">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Medical</label>
                        <input type="text" name="madic" id="madic" value="${e.madic}"class="form-control" placeholder="Enter Madic Allowance">
                      </div>
                    </div>
                  </div>
                    
                  <div class="row">
                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label>Food</label>
                        <input type="text" name="food" id="food"  value="${e.food}" class="form-control" placeholder="Enter Food Allowance">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Total Salary</label>
                        <input type="text" name="total" id="total"  value="${e.total}" class="form-control" placeholder="Total Salary">
                      </div>
                    </div>
                  </div>
          
          
                </div>
                <div class="row">
                  <div class="col-md-9"></div>
               
                  <div class="col-md-2"><button type="submit" value="Update" class="btn btn-block btn-success">Update</button></div>
                 
                </div>
              </form>
            </div>
            <!-- /.card -->


              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  
 
 
 
<jsp:include page="/WEB-INF/view/common/footer.jsp" />

 <script>
  	var salary = parseInt(document.getElementById("salary").value);
  	var houseRent = salary * 20 / 100;
  	var medical = salary * 10 / 100;
  	var food = salary * 5 / 100;
  	
  	document.getElementById("house").value = houseRent;
  	document.getElementById("madic").value = medical;
  	document.getElementById("food").value = food;
  	var total = salary + houseRent + medical + food;
  	document.getElementById("total").value = Math.round(total);
  
  </script>