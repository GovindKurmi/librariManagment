package com.gk.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gk.model.Admin;
import com.gk.model.Book;
import com.gk.model.Login;
import com.gk.model.Student;
import com.gk.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	AdminService adminService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("login");
		mav.addObject("login", new Login());
		return mav;
	}

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public String loginProcess(@ModelAttribute("login") Login login,Model m) {
		String message="Please Enter Correct Username and Password and try again";
		Admin user = adminService.validateUser(login);
		if (null != user) {
			return "redirect:/viewstudent";
		} else {
			m.addAttribute("message",message);
			return "login";
		}
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("registration");
		mav.addObject("user", new Admin());
		return mav;
	}

	@RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
	public String addUser(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("user") Admin user) {

		adminService.register(user);
		// return new ModelAndView("redirect:" +"login" );
		return "redirect:/login";
	}

	@RequestMapping(value = "/viewstudent", method = RequestMethod.GET)
	public ModelAndView viewStudent() {
		ModelAndView mav = new ModelAndView("viewstudent");
		List<Student> student = adminService.viewStudent();
		Admin admin = adminService.viewAdmin();
		mav.addObject("admin", admin);
		mav.addObject("list", student);
		return mav;
	}

	@RequestMapping(value = "/addstudent", method = RequestMethod.GET)
	public ModelAndView addStudent(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("addstudent");
		mav.addObject("addstudent", new Student());
		return mav;
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveStudent(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("user") Student user) {
		adminService.saveStudent(user);
		// return new ModelAndView("redirect:" +"login" );
		return "redirect:/viewstudent";
	}

	@RequestMapping(value = "/deletestudent/{rollNumber}", method = RequestMethod.GET)
	public String deleteStudent(@PathVariable int rollNumber) {
		adminService.deleteStudent(rollNumber);
		// return new ModelAndView("redirect:" +"login" );
		return "redirect:/viewstudent";
	}

	@RequestMapping(value = "/bookdetail/{rollNumber}", method = RequestMethod.GET)
	public ModelAndView viewbook(@PathVariable int rollNumber) {
		ModelAndView mav = new ModelAndView("viewbook");
		List<Book> book = adminService.viewbook(rollNumber);
		mav.addObject("list", book);
		return mav;
	}

	@RequestMapping(value = "/addbook/savebook", method = RequestMethod.POST)
	public String savebook(@ModelAttribute("book") Book book) {
		adminService.savebook(book);
		// return new ModelAndView("redirect:" +"login" );
		return "redirect:/viewstudent";
	}

	@RequestMapping(value = "/addbook/{rollNumber}", method = RequestMethod.GET)
	public ModelAndView addbook(@PathVariable int rollNumber) {
		ModelAndView mav = new ModelAndView("addbook");
		Book book = new Book();
		mav.addObject("book", book);
		mav.addObject("rollNumber", rollNumber);
		return mav;
	}

	@RequestMapping(value = "/bookdetail/deletebook/{id}", method = RequestMethod.GET)
	public String deleteBook(@PathVariable int id) {
		adminService.deleteBook(id);
		return "redirect:/viewstudent";
	}
	@RequestMapping(value = "/viewadmin", method = RequestMethod.GET)
	public String showAdmin() {
		return "redirect:/viewstudent";
	}
}
