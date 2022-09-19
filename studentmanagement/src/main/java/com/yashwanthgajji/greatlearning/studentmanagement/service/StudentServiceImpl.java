package com.yashwanthgajji.greatlearning.studentmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yashwanthgajji.greatlearning.studentmanagement.model.Student;
import com.yashwanthgajji.greatlearning.studentmanagement.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	private StudentRepository studentRepository;

	@Override
	public void saveStudent(Student student) {
		studentRepository.save(student);
	}

	@Override
	public Student getStudentById(long studentId) {
		return studentRepository.findById(studentId).get();
	}

	@Override
	public List<Student> getAllStudents() {
		return studentRepository.findAll();
	}

	@Override
	public void deleteStudent(long studentId) {
		studentRepository.deleteById(studentId);
	}

}
