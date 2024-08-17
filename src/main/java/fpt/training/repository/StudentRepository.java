package fpt.training.repository;

import fpt.training.entity.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentRepository extends JpaRepository<Student, String> {

    @Query(value = "SELECT s from Student s where s.fullName ilike :name")
    List<Student> findAllByFullNameIsLikeIgnoreCase(String name);

}
