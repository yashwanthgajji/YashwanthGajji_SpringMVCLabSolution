package com.yashwanthgajji.greatlearning.studentmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.yashwanthgajji.greatlearning.studentmanagement.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long>{

}
