package com.gk.service;

import java.util.List;

import com.gk.model.Admin;
import com.gk.model.Book;
import com.gk.model.Login;
import com.gk.model.Student;

public interface AdminService {

	public void register(Admin user);

	public Admin validateUser(Login login);

	public List<Student> viewStudent();

	public void saveStudent(Student user);

	public List<Book> viewbook(int rollNumber);

	public void savebook(Book book);

	public void deleteStudent(int rollNumber);

	public void deleteBook(int id);

	public Admin viewAdmin();


}
