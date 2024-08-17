package fpt.training.service;

import fpt.training.entity.Student;
import fpt.training.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {

    @Autowired
    private StudentRepository studentRepository;




    public List<Student> getAll() {
        return studentRepository.findAll();
    }

    public void save(Student student) {
        studentRepository.save(student);
    }

    public Student getById(String id) {
        return this.studentRepository.findById(id).orElseThrow();
    }

    public void delete(String id) {
        studentRepository.deleteById(id);
    }

    public List <Student> search(String name) {
        return this.studentRepository.findAllByFullNameIsLikeIgnoreCase(name);
    }
}
