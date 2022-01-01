package com.gk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gk.dao.AdminDao;
import com.gk.model.Admin;
import com.gk.model.Book;
import com.gk.model.Login;
import com.gk.model.Student;
@Service
public class AdminServiceImpl implements AdminService{
       
	
	  @Autowired 
	  AdminDao empDao;

	@Override
	public void register(Admin user) {
		empDao.register(user);	
	}

	@Override
	public Admin validateUser(Login login) {
		return empDao.validateUser(login);
	}

	@Override
	public List<Student> viewStudent() {
		return empDao.viewStudent();
	}

	@Override
	public void saveStudent(Student user) {
		 empDao.saveStudent(user);
		
	}

	@Override
	public List<Book> viewbook(int rollNumber) {
		 return empDao.viewbook(rollNumber);

	}

	@Override
	public void savebook(Book book) {
		empDao.savebook(book);
	}

	@Override
	public void deleteStudent(int rollNumber) {
		empDao.deleteStudent(rollNumber);
		
	}

	@Override
	public void deleteBook(int id) {
		empDao.deleteBook(id);
		
	}

	@Override
	public Admin viewAdmin() {
		return empDao.viewAdmin();
	}
	

}
