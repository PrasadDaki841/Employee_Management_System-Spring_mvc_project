package com.Employee.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Employee.dao.Emp_dao;
import com.Employee.entity.Employee;

@Controller
public class HomeController {

	@Autowired
	private Emp_dao emp_dao;

	@RequestMapping(path = "/home")
	public String Home(Model m) {

		List<Employee> list = emp_dao.getAllemp();
		m.addAttribute("emplist", list);
		return "home";
	}

	@RequestMapping(path = "/addemployee")
	public String addEmp() {
		return "add_employee";
	}

	@RequestMapping(path = "/creatEmp", method = RequestMethod.POST)
	public String creatEmp(@ModelAttribute Employee employee, HttpSession session) {
		System.out.println(employee);

		int i = emp_dao.save(employee);
		session.setAttribute("msg", "Register Succesfully");
		return "redirect:/addemployee";
	}
	
	@RequestMapping(path = "/edit_emp/{id}")
	public String editEmployee(@PathVariable int id,Model m) {
		
		Employee employee=emp_dao.getEmpBYID(id);
		m.addAttribute("emp", employee);
		
		return "edit_emp";
	}
	@RequestMapping(path = "/updateemp",method = RequestMethod.POST ) 
	public String updateemp(@ModelAttribute Employee employee,Model m) {
		
		emp_dao.updateEmp(employee);
		m.addAttribute("msg", "Update Sucessfully");
		return "redirect:/home";
	}
	@RequestMapping("/deleteEmp/{id}")
	public String deleteEmp(@PathVariable int id,HttpSession session) {
		
		emp_dao.deleteEmp(id);
		session.setAttribute("msg", "Deleted Sucesfully");
		return "redirect:/home";
	}

}
