


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
            <h1> Employee Information Form</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Update Employee</li>
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
              <form action="/employee/update" method="POST">
					            
            <!-- /.card -->

            <!-- Input addon -->
          
            <!-- general form elements disabled -->
            <div class="card card-warning">
              <div class="card-header">
                <h1 class="card-title">Employee Information</h1>
                
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
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Employee Code</label>
                        <input type="text" name="ecode" value="${e.ecode }" class="form-control" placeholder="Enter Code">
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <label>Department</label>
                      <select class="form-control select2" name="deptName" style="width: 100%;">
                        <option selected disabled>---Choose Department--- </option>
                
                        <option value="HR & Payroll"${e.deptName == 'HR & Payroll' ? 'selected' : ''}>HR&Payroll</option>
                        <option value="Accounts &  Finance"${e.deptName == 'Accounts &  Finance' ? 'selected' : ''}>Accounts &  Finance</option>
                        <option value="Sales"${e.deptName == 'Sales' ? 'selected' : ''}>Sales</option>
                        <option value="Production"${e.deptName == 'Production' ? 'selected' : ''}>Production</option>
                         <option value="Supply Chain"${e.deptName == 'Supply Chain ' ? 'selected' : ''}>Supply Chain </option>
                      
                      </select>
                    </div>
                      <div class="col-sm-4">
                   
                        <label>Designation</label>
                        <select class="form-control select2" name="desigName" style="width: 100%;">
                      
											<option selected disabled>---Choose Designation--- </option>
                  
                        <option value="Sr. Manager"${e.desigName == 'Sr. Manager' ? 'selected' : ''}>Sr. Manager</option>
                        <option value="Ast. Manager"${e.desigName == 'Ast. Manager' ? 'selected' : ''}>Ast. Manager</option>
                        <option value="Sr. Officer"${e.desigName == 'Sr. Officer'? 'selected' : ''}>Sr. Officer</option>
                        <option value="Officer"${e.desigName == 'Officer'? 'selected' : ''}>Officer</option>
                            <option value="Trainee Officer"${e.desigName == 'Trainee Officer'? 'selected' : ''}>Trainee Officer</option>
                               <option value="Production Officer"${e.desigName == 'Production Officer'? 'selected' : ''}>Production Officer</option>
                                  <option value="Jr. Officer"${e.desigName == 'Jr. Officer'? 'selected' : ''}>Jr. Officer</option>
                       
											</select>
                         
                      </div>
                    
                  </div>
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label> Date Of Birth:</label>
                          <div class="input-group date" id="reservationdate" data-target-input="nearest">
                              <input type="text" name="dob"  value="${e.dob}" class="form-control datetimepicker-input" data-target="#reservationdate"/>
                              <div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
                                  <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                              </div>
                          </div>
                      </div>
                    </div>
                   
                    
                    <div class="col-sm-6">
                      
                        <label>Gender</label>
                        <select class="form-control select2" name="gender" style="width: 100%;">
                          <option selected disabled>---Select Gender--- </option>
                          <option value="male"${e.gender == 'male' ? 'selected' : ''}>Male</option>
                          <option value="female"${e.gender == 'female' ? 'selected' : ''}>Female</option>
                        </select>
                      </div>
                      <!-- text input -->
                      
                    </div>
                 
                  <div class="row">
                    <div class="col-sm-6">
                     
                        <!-- textarea -->
                        <div class="form-group">
                          <label>Address</label>
                          <textarea name="address" value="${e.address}" class="form-control" rows="1" placeholder="Enter ..."></textarea>
                        </div>
                      </div>
                     
                        <!-- text input -->
                        <div class="col-sm-6">
                          
                        <div class="form-group">
                          <i class="fas fa-phone"></i>
                          <label>Phone No</label>
                         
                          <input type="text" name="phone"  value="${e.phone}" class="form-control" placeholder="Enter Your Phnone Number">
                         
                        </div>
                      </div>
                    
                    </div>
                    <div class="row">
                      <div class="col-sm-6">
                  
                        <label>Division</label>
                        <select name="division" name="division"   class="form-control select2" style="width: 100%;">
                          <option selected disabled>---Select Division--- </option>
                          <option value="Barishal" ${e.division == 'Barishal' ? 'selected' : ''} >Barishal</option>
                          <option value="Chattogram" ${e.division == 'Chattogram' ? 'selected' : ''} >Chattogram</option>
                          <option value="Dhaka" ${e.division == 'Dhaka' ? 'selected' : ''} >Dhaka</option>
                          <option value="Khulna" ${e.division == 'Khulna' ? 'selected' : ''} >Khulna</option>
                          <option value="Mymensingh" ${e.division == 'Mymensingh' ? 'selected' : ''} >Mymensingh</option>
                          <option value="Rajshahi" ${e.division == 'Rajshahi' ? 'selected' : ''} >Rajshahi</option>
                          <option value="Rangpur" ${e.division == 'Rangpur' ? 'selected' : ''} >Rangpur</option>
                          <option value="Sylhet" ${e.division == 'Sylhet' ? 'selected' : ''} >Sylhet</option>
                        </select>
                      </div>
                 
                    <!-- text input -->
                    <div class="col-sm-6">
                  
                      <label>District</label>
                      <select class="form-control select2" name="district"   style="width: 100%;">
                        <option selected disabled>---Select District --- </option>
                      
                          <option value="Bagerhat">Bagerhat</option>
                          <option value="Bandarban">Bandarban</option>
                          <option value="Barguna">Barguna</option>
                          <option value="Barisal">Barisal</option>
                          <option value="Bhola">Bhola</option>
                          <option value="Bogra">Bogra</option>
                          <option value="Brahmanbaria">Brahmanbaria</option>
                          <option value="Chandpur">Chandpur</option>
                          <option value="Chittagong">Chittagong</option>
                          <option value="Chuadanga">Chuadanga</option>
                          <option value="Comilla">Comilla</option>
                          <option value="Cox'sBazar">Cox'sBazar</option>
                          <option value="Dhaka">Dhaka</option>
                          <option value="Dinajpur">Dinajpur</option>
                          <option value="Faridpur">Faridpur</option>
                          <option value="Feni">Feni</option>
                          <option value="Gaibandha">Gaibandha</option>
                          <option value="Gazipur">Gazipur</option>
                          <option value="Gopalganj">Gopalganj</option>
                          <option value="Habiganj">Habiganj</option>
                          <option value="Jaipurhat">Jaipurhat</option>
                          <option value="Jamalpur">Jamalpur</option>
                          <option value="Jessore">Jessore</option>
                          <option value="Jhalokati">Jhalokati</option>
                          <option value="Jhenaidah">Jhenaidah</option>
                          <option value="Khagrachari">Khagrachari</option>
                          <option value="Khulna">Khulna</option>
                          <option value="Kishoreganj">Kishoreganj</option>
                          <option value="Kurigram">Kurigram</option>
                          <option value="Kushtia">Kushtia</option>
                          <option value="Lakshmipur">Lakshmipur</option>
                          <option value="Lalmonirhat">Lalmonirhat</option>
                          <option value="Madaripur">Madaripur</option>
                          <option value="Magura">Magura</option>
                          <option value="Manikganj">Manikganj</option>
                          <option value="Maulvibazar">Maulvibazar</option>
                          <option value="Meherpur">Meherpur</option>
                          <option value="Munshiganj">Munshiganj</option>
                          <option value="Mymensingh">Mymensingh</option>
                          <option value="Naogaon">Naogaon</option>
                          <option value="Narail">Narail</option>
                          <option value="Narayanganj">Narayanganj</option>
                          <option value="Narsingdi">Narsingdi</option>
                          <option value="Natore">Natore</option>
                          <option value="Nawabganj">Nawabganj</option>
                          <option value="Netrokona">Netrokona</option>
                          <option value="Nilphamari">Nilphamari</option>
                          <option value="Noakhali">Noakhali</option>
                          <option value="Pabna">Pabna</option>
                          <option value="Panchagarh">Panchagarh</option>
                          <option value="Patuakhali">Patuakhali</option>
                          <option value="Pirojpur">Pirojpur</option>
                          <option value="Rajbari">Rajbari</option>
                          <option value="Rajshahi">Rajshahi</option>
                          <option value="Rangamati">Rangamati</option>
                          <option value="Rangpur">Rangpur</option>
                          <option value="Satkhira">Satkhira</option>
                          <option value="Shariatpur">Shariatpur</option>
                          <option value="Sherpur">Sherpur</option>
                          <option value="Sirajganj">Sirajganj</option>
                          <option value="Sunamganj">Sunamganj</option>
                          <option value="Sylhet">Sylhet</option>
                          <option value="Tangail">Tangail</option>
                          <option value="Thakurgaon">Thakurgaon</option>
                 
                      </select>
                    </div>
                
                </div>
                         <div class="row">
                          <div class="col-sm-6">
                      
                            <label>Nationality</label>
                            <select class="form-control select2" name="nation" style="width: 100%;">
                              <option selected disabled>---Select Nationality--- </option>
                              <option value="bangladeshi"${e.nationality == 'bangladeshi' ? 'selected' : ''}>Bangladeshi</option>
                           
                            </select>
                          </div>
                     
                        <!-- text input -->
                        <div class="col-sm-6">
                        <div class="form-group">
                          <label>Nid No</label>
                          <input type="text" class="form-control" name="nid"  value="${e.nid}" placeholder="Enter Your Nid Number">
                        </div>
                      </div>
                    
                    </div>
                    <div class="row">
                      <div class="col-sm-6">
                  
                        <label>Marital Status</label>
                        <select class="form-control select2" name="maridge"   style="width: 100%;">
                          <option selected disabled>---Select Marital Status--- </option>
                          <option value="married"${e.status == 'married' ? 'selected' : ''}>Married</option>
                          <option value="unmarried"${e.status == 'unmarried' ? 'selected' : ''}>Unmarried</option>
                        </select>
                      </div>
                 
                    <!-- text input -->
                    <div class="col-sm-6">
                  
                      <label>Religion</label>
                      <select class="form-control select2" name="religion"   style="width: 100%;">
                        <option selected disabled>---Select Religion --- </option>
                        <option value="muslim"${e.religion == 'muslim' ? 'selected' : ''}>Muslim</option>
                        <option value="hindu"${e.religion == 'hindu' ? 'selected' : ''}>Hindu</option>
                        <option value="chirstian"${e.religion == 'chirstian' ? 'selected' : ''}>Chirstian</option>
                        <option value="buddha"${e.religion == 'buddha' ? 'selected' : ''}>Buddha</option>
                      </select>
                    </div>
                
                </div>
                 
                 
                
                  <div class="row">
                  <div class="col-sm-6">
                      <div class="form-group">
                        <label>Basic Salary</label>
                        <input type="text" name="salary"  value="${e.salary}" class="form-control"  placeholder="Enter Basic salary">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label> Joining Date:</label>
                           <div class="input-group date" id="joindate" data-target-input="nearest">
                              <input type="text" value="${e.joining}" name="join"  class="form-control datetimepicker-input" data-target="#joindate"/>
                              <div class="input-group-append" data-target="#joindate" data-toggle="datetimepicker">
                                  <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                              </div>
                          </div>
                      </div>
                    </div>
                  </div>

                </div>
                <div class="row">
                  <div class="col-md-9"></div>
                 <!--  <div class="col-md-2"><button type="button" class="btn btn-block btn-success">Save</button></div> -->
                <!--   <div class="col-md-2"><button type="submit" value="Update" class="btn btn-block btn-success">Update</button></div> -->
                     <input type="submit" value="Update" class="btn btn-success" />
              <!-- <input type="submit" value="Save" class="btn btn-success"/> -->
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