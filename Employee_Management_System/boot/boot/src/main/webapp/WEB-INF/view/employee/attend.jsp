  

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
            <h1>All Employee List</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">DataTables</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
            <!--   <div class="card-header">
                <h3 class="card-title">DataTable with minimal features & hover style</h3>
              </div> -->
               <!-- /.card-header -->
     
              <!-- /.card-body -->
            </div> 
            <!-- /.card -->

            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Employee List With Basic Field</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
               <form action="/employee/saveAttendence" method="POST">   
                               
                               <div class="row">

                    <!-- text input -->
              
                
                </div>
                <table id="example1" class="table table-bordered table-striped">
                  <thead style="color: white; bordercolor="Black"; bgcolor="#A569BD">
                  <tr>
                   <th>
					<input type="checkbox" id="status" />
					</th>
                 	 <th>Picture</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Employee Code</th>
                    <th>Department</th>                    
                    <th>Designation</th>
                 
                    
                  </tr>
                  </thead>
                 <tbody>
                 
        		 <c:forEach items="${employees}" var="e">
                <tr>
              		  <td><input type="checkbox" name="${e.ecode}" /></td>
                	<td><img src="${e.photo }" alt="profile" width="60" height="50" class="rounded-corners" style="border-radius: 50%"></td>
                    <td>${e.fname}</td>
                    <td>${e.lname}</td>
                     <td>${e.ecode}</td>
                    <td>${e.deptName}</td>                 
                    <td>${e.desigName}</td>
                   
                </tr>
            </c:forEach>
                  </tbody>
                  <tfoot>
                  <tr>
                   <th>Check</th>
                   <th>Picture</th>
                     <th>First Name</th>
                    <th>Last Name</th>
                    <th>Employee Code</th>
                    <th>Department</th>
                    
                    <th>Designation</th>
                     
                   
                  </tr>
                  </tfoot>
                </table>
                    <input type="submit" class="btn btn-info" value="Take Attendence"/>
               </form>
                
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
      </div>


<jsp:include page="/WEB-INF/view/common/footer.jsp" />

<script>
$("#status").click(function(){
    $("input[type=checkbox]").prop('checked', $(this).prop('checked'));

});
</script>
