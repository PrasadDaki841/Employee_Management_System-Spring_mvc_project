package com.Employee.dao;

import java.util.List;

import com.Employee.entity.Employee;

public interface Emp_dao {
		
	public int save(Employee employee);
	
	public Employee getEmpBYID(int id);
	
	public List<Employee> getAllemp();
	
	public void updateEmp(Employee employee);
	
	public void deleteEmp(int id);
}
