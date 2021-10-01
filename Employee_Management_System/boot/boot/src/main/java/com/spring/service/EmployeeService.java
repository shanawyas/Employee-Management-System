package com.spring.service;

import com.spring.common.ICommonService;
import com.spring.dao.EmployeeDAO;
import com.spring.dao.LeaveDAO;
import com.spring.model.Attendence;
import com.spring.model.Employee;
import com.spring.model.Leave;
import com.spring.model.Salary;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;


@Service(value = "EmployeeService")
public class EmployeeService implements ICommonService<Employee>{

	@Autowired
    EmployeeDAO employeeDAO;
	@Autowired
	LeaveDAO leaveDAO;
	@Autowired
	ServletContext servletContext;
	public final String imagePath = "/app-assets/images/";
    public Employee save(HttpServletRequest request, MultipartFile photo)throws IOException {
    		Employee e=new Employee();
    		saveFile(photo, photo.getOriginalFilename(), imagePath);
    	
    		int val1=0;
    		

		  e.setFname(request.getParameter("fname")); 
		  e.setLname(request.getParameter("lname")); 
		  e.setEcode(request.getParameter("ecode"));
		  e.setDob(request.getParameter("dob")); 
		  e.setGender(request.getParameter("gender")); 
		  e.setAddress(request.getParameter("address")); 
		  e.setPhone(request.getParameter("phone")); 
		  e.setDivision(request.getParameter("division")); 
		  e.setDistrict(request.getParameter("district")); 
		  e.setNationality(request.getParameter("nation")); 
		  e.setNid(request.getParameter("nid")); 
		  e.setStatus(request.getParameter("maridge")); 
		  e.setReligion(request.getParameter("religion")); 
		  e.setDeptCode(request.getParameter("dept_code"));
		  e.setDeptName(request.getParameter("dept_name"));
		  e.setDesigCode(request.getParameter("desig_code"));
		  e.setDesigName(request.getParameter("desig_name"));
		  e.setJoining(request.getParameter("join")); 
		  e.setPhoto(imagePath + photo.getOriginalFilename());
		  e.setSalary(Double.valueOf(request.getParameter("salary")));
		  e.setLeaveStatus("no");
		
		  e.setLeave(val1);
		         return employeeDAO.save(e);
    }
	public void saveFile(MultipartFile file, String fileName, String path) throws IOException {
		byte[] bytes = file.getBytes();

		String filePath = servletContext.getRealPath(path);
		File dir = new File(filePath);
		File serverFile = new File(dir.getAbsolutePath() + File.separator + fileName);
		BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
		stream.write(bytes);
		stream.close();
	}
	public List<Employee> getAll() {
        return employeeDAO.getAll();
    }
    
 

    public Employee getProductById(int pid) {
        return employeeDAO.getProductById(pid);
    }
	@Override
    public Employee update(HttpServletRequest request) {
	
        Employee e = new Employee();

        e.setId(Integer.valueOf(request.getParameter("id")));
        e.setEcode(request.getParameter("ecode"));
        e.setFname(request.getParameter("fname"));
        e.setLname(request.getParameter("lname"));
        e.setDob(request.getParameter("dob"));
        e.setGender(request.getParameter("gender"));
        e.setAddress(request.getParameter("address"));
        e.setPhone(request.getParameter("phone"));
        e.setDivision(request.getParameter("division"));
        e.setDistrict(request.getParameter("district"));
        e.setNationality(request.getParameter("nation"));
        e.setNid(request.getParameter("nid"));
        e.setStatus(request.getParameter("maridge"));
        
        e.setReligion(request.getParameter("religion"));

        e.setJoining(request.getParameter("join"));
        e.setSalary(Double.valueOf(request.getParameter("salary")));
    


        return employeeDAO.update(e);
    }
	
	
    public Employee updateSal(HttpServletRequest request) {
    	
        Employee e = new Employee();
        


        e.setId(Integer.valueOf(request.getParameter("id")));
		 e.setFood(Double.valueOf(request.getParameter("food"))); 
		  e.setHouse(Double.valueOf(request.getParameter("house"))); 
		  e.setMadic(Double.valueOf(request.getParameter("madic"))); 
		  e.setTotal(Double.valueOf(request.getParameter("total"))); 
		 

        return employeeDAO.updateSal(e);
    }
    

//    public Employee save1(HttpServletRequest request){
//        //Map<String, String[]> map = request.getParameterMap();
////        String name = request.getParameter("name");
//   
//        
//        
//        Map<String, String[]> map = request.getParameterMap();
//		String[] fname = (String[]) map.get("fname[]");
//		String[] lname = (String[]) map.get("lname[]");
//		String[] pid = (String[]) map.get("pid[]");
//		
//
//		for (int i = 0; i < pid.length; i++) {
//			System.out.println(fname[i]);
//			Employee p = new Employee();
//			p.setId(4+i);
//			p.setFname(fname[i]);
//			p.setLname(lname[i]);
//			employeeDAO.save(p);
//		}

    public Employee delete(int pid) {
        Employee e = employeeDAO.getProductById(pid);
        return employeeDAO.delete(e);
    }

	@Override
	public Employee edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	public void paySalary(HttpServletRequest request) {
		Map<String, String[]> map = request.getParameterMap();
	
		String[] empCode = map.get("emp_code[]");
		String[] total = map.get("total[]");
		String[] fname= map.get("fname[]");
		String[] lname= map.get("lname[]");
		String[] deptName= map.get("dept_name[]");
		String[] deptCode= map.get("dept_code[]");
		String[] desigName= map.get("desig_name[]");
		String[] disigCode= map.get("desig_code[]");
		String[] basic= map.get("basic[]");
		String[] house= map.get("house[]");
		String[] madic= map.get("madic[]");
		String[] food= map.get("food[]");
		
		
		 
	
		for (int i = 0; i< empCode.length; i++) {
		Salary s=new Salary();
		s.setFname(fname[i]);
		s.setLname(lname[i]);
		s.setEcode(empCode[i]);
		s.setDeptCode(deptCode[i]);
		s.setDeptName(deptName[i]);
		s.setDesigCode(disigCode[i]);
		s.setDesigName(desigName[i]);
		s.setMonth(request.getParameter("month"));
		s.setYear(request.getParameter("year"));
		s.setSalary(Double.valueOf(basic[i]));
		s.setHouse(Double.valueOf(house[i]));
		s.setFood(Double.valueOf(food[i]));
		s.setMadic(Double.valueOf(madic[i]));
		s.setTotal(Double.valueOf(total[i]));
		employeeDAO.paySalary(s);
		
		}
		
	}

	@Override
	public Employee save(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public Employee takeAttendence(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}
	public void saveAllAttendence(List<Attendence> attendences) {
		employeeDAO.saveAllAttendence(attendences);
		
	}
	
	  public Employee applyLeave(HttpServletRequest request) { Leave l=new Leave();
	  
	  Date fromDate=Date.valueOf(request.getParameter("from")); Date
	  toDate=Date.valueOf(request.getParameter("to")); 
	  int days= toDate.getDate()-fromDate.getDate();
	  
	  l.setFname(request.getParameter("fname"));
	  l.setLname(request.getParameter("lname"));
	  l.setEcode(request.getParameter("ecode"));
	  l.setDeptName(request.getParameter("deptName"));
	  l.setMonth(request.getParameter("month"));
	  l.setLeaveStatus(request.getParameter("leaveStatus"));
	  l.setFrom(fromDate); 
	  l.setTo(toDate); 
	  
	  l.setTotalLeave(days);
	  
	  return employeeDAO.applyLeave(l);
	  
	  }
	 
	
	
}
