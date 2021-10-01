  

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
            <h1>All Attendance List</h1>
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
             
                <table id="example1" class="table table-bordered table-striped">
                  <thead style="color: white; bordercolor="Black" bgcolor="#A569BD">
                  <tr>             
                 
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Employee Code</th>
                    <th>Department</th>                    
                    <th>Designation</th>
                     <th>Date</th>
                      <th>Status</th>
                 
                    
                  </tr>
                  </thead>
                 <tbody>
                 
        		 <c:forEach items="${attendences}" var="e">
                <tr>
              		 
            
                    <td>${e.firstName}</td>
                    <td>${e.lastName}</td>
                     <td>${e.empCode}</td>
                    <td>${e.department}</td>                 
                    <td>${e.designation}</td>
                      <td>${e.date}</td>
                      
                      <c:if test="${e.attended eq 'PRESENT'}">
                      	 <td style="color: green; font-weight: bold;">${e.attended}</td>
                      </c:if>
                        <c:if test="${e.attended eq 'ABSENT'}">
                      	 <td style="color: red; font-weight: bold;">${e.attended}</td>
                      </c:if>
                       
                    
                   
                </tr>
            </c:forEach>
                  </tbody>
                  <tfoot>
                  <tr>
                
                  
                     <th>First Name</th>
                    <th>Last Name</th>
                    <th>Employee Code</th>
                    <th>Department</th>
                    <th>Designation</th>
                      <th>Date</th>
                      <th>Status</th>
                     
                   
                  </tr>
                  </tfoot>
                </table>
    
                
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


