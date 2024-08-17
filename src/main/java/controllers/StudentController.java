package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import dao.StudentDAO;
import entities.Student;

@Controller
public class StudentController {
	@Autowired
	private StudentDAO studentDAO;
	
	@RequestMapping(value= {"/","students"},method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("students",studentDAO.getAll());
		return "index";
	}
	
	@RequestMapping(value= "addstudent",method = RequestMethod.GET)
	public String create(Model model) {
		var student=new Student();
		model.addAttribute("student",student);
		return "create";
	}
	
	@RequestMapping(value= "save",method = RequestMethod.POST)
	public String save(@ModelAttribute("student") Student student, Model model) {
		try {
			studentDAO.insert(student);
		}catch(Exception ex) {
			model.addAttribute("error",ex.getMessage());
			model.addAttribute("student",student);
			return "create";
		}
		return "redirect:/students";
	}

	@RequestMapping(value= "edit",method = RequestMethod.GET)
	public String edit(@RequestParam("id") String id,Model model) {
		var student=studentDAO.getById(id);
		model.addAttribute("student",student);
		return "edit";
	}
	
	@RequestMapping(value= "update",method = RequestMethod.POST)
	public String update(@ModelAttribute("student") Student student, Model model) {
		try {
			studentDAO.update(student);
		}catch(Exception ex) {
			model.addAttribute("error",ex.getMessage());
			model.addAttribute("student",student);
			return "create";
		}
		return "redirect:/students";
	}
	
	@RequestMapping(value= "search",method = RequestMethod.POST)
	public String update(String searchname, Model model) {
		model.addAttribute("students",studentDAO.search(searchname));
		return "index";
	}
	
	@RequestMapping(value= "delete",method = RequestMethod.GET)
	public String delete(@RequestParam("id") String id) {
		studentDAO.delete(id);
		return "redirect:/students";
	}
	
}
