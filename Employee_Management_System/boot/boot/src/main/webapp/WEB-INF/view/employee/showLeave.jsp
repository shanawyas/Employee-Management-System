  

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
         
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <form action="">
              
                	<table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                  <th>Employee Code</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Department</th>
                    <th>Designation</th>
                    
                    <th>Apply For Leave</th>
                   
                    
                  </tr>
                  </thead>
                 <tbody>
                 
        		 <c:forEach items="${employees}" var="e">
                <tr>
                    <td>${e.ecode}</td>
                    <td>${e.fname}</td>
                    <td>${e.lname}</td>
                    <td>${e.deptName}</td>
                    <td>${e.desigName}</td>
                     
                   
                   
                    <td>
                        <a class="btn btn-block btn-info" href="/employee/createLeave/${e.id}">Apply </a>
                    </td>
                  
                         
                </tr>
            </c:forEach>
                  </tbody>
                  <tfoot>
                  <tr>
                     <th>Employee Code</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Department</th>
                    <th>Designation</th>
                     <th>Apply For Leave</th>
                
                   
                  </tr>
                  </tfoot>
                </table>
                
                
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
