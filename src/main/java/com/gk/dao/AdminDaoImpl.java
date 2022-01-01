package com.gk.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.gk.model.Admin;
import com.gk.model.Book;
import com.gk.model.Login;
import com.gk.model.Student;

@Repository
public class AdminDaoImpl implements AdminDao {

	@Autowired
	DataSource datasource;
	@Autowired
	JdbcTemplate jdbcTemplate;

	public void register(Admin user) {
		String sql = "insert into admin values(?,?,?,?,?,?)";

		jdbcTemplate.update(sql, new Object[] { user.getContactNumber(), user.getName(), user.getAddress(),
				user.getDisignation(), user.getUserName(), user.getPassword() });
	}

	@Override
	public Admin validateUser(Login login) {

		String sql = "select * from admin where userName='" + login.getUsername() + "' and password='"
				+ login.getPassword() + "'";
		List<Admin> users = jdbcTemplate.query(sql, new UserMapper());
		return users.size() > 0 ? users.get(0) : null;
	}

	@Override
	public List<Student> viewStudent() {

		String sql = "SELECT * FROM Student";

		List<Student> student = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Student>(Student.class));

		return student;
	}

	@Override
	public void saveStudent(Student user) {
		String sql = "insert into student values(?,?,?,?)";

		jdbcTemplate.update(sql,
				new Object[] { user.getRollNumber(), user.getName(), user.getBranch(), user.getContactNumber() });

	}

	@Override
	public List<Book> viewbook(int rollNumber) {
		String sql = "SELECT * FROM book where rollNumber=" + rollNumber + "";

		List<Book> book = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Book>(Book.class));

		return book;
	}

	@Override
	public void savebook(Book book) {
		String sql = "insert into book values(?,?,?,?,?,?,?)";

		jdbcTemplate.update(sql, new Object[] { book.getBid(), book.getbName(), book.getbAuther(), book.getIssueDate(),
				book.getBprize(), book.getDays(),book.getRollNumber() });

	}

	@Override
	public void deleteStudent(int rollNumber) {
		String deleteQuery = "delete from Student where rollNumber = ?";
		jdbcTemplate.update(deleteQuery, rollNumber);
	}

	@Override
	public void deleteBook(int id) {

		String deleteQuery = "delete from book where bid = ?";
		jdbcTemplate.update(deleteQuery, id);		
	}

	@Override
	public Admin viewAdmin() {
		String contactNumber ="9876453134";
		String sql = "SELECT * FROM admin WHERE contactNumber = ?";

        return (Admin) jdbcTemplate.queryForObject( sql,  new Object[]{contactNumber}, 
            new BeanPropertyRowMapper<Admin>(Admin.class));
	}
}

class UserMapper implements RowMapper<Admin> {

	public Admin mapRow(ResultSet rs, int arg1) throws SQLException {
		Admin user = new Admin();

		user.setUserName(rs.getString("username"));
		user.setPassword(rs.getString("password"));
		user.setName(rs.getString("name"));
		user.setDisignation(rs.getString("disignation"));
		user.setContactNumber(rs.getString("contactNumber"));
		user.setAddress(rs.getString("address"));

		return user;
	}
}
