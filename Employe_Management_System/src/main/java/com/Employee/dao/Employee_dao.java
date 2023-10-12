package com.Employee.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.Employee.entity.Employee;
@Repository
public class Employee_dao implements Emp_dao {

	

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public int save(Employee employee) {
		int i = (Integer) hibernateTemplate.save(employee);
		return i;
	}

	public Employee getEmpBYID(int id) {
		Employee employee = hibernateTemplate.get(Employee.class, id);
		return employee;
	}

	public List<Employee> getAllemp() {
		List<Employee> employees = hibernateTemplate.loadAll(Employee.class);
		return employees;
	}

	@Transactional
	public void updateEmp(Employee employee) {
		hibernateTemplate.update(employee);
	}

	public void deleteEmp(int id) {
		Employee employee = hibernateTemplate.get(Employee.class, id);
		hibernateTemplate.delete(employee);

	}

}
