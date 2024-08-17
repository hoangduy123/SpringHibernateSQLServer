package dao;

import java.util.List;

import jakarta.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import entities.Student;

@Repository
public class StudentDAO {
    @Autowired
    SessionFactory sessionFactory;

    public StudentDAO() {

    }

    // Lấy tất cả sinh viên
    public List<Student> getAll() {
        Session session = sessionFactory.openSession();
        List result = session.createQuery("from Student").getResultList();
        return result;
    }

    // Tìm kiếm theo tên
    public List<Student> search(String name) {
        Session session = sessionFactory.openSession();
        Query query = session.createQuery("from Student where fullName like :name");
        query.setParameter("name", "%" + name + "%");
        return query.getResultList();
    }

    // Insert sinh viên vào database
    public void insert(Student student) {
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        session.save(student);
        session.getTransaction().commit();
    }

    // Update lại thông tin sinh viên
    public void update(Student student) {
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        session.update(student);
        session.getTransaction().commit();
    }

    // Xóa sinh viên
    public void delete(String id) {
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        var st = session.get(Student.class, id);
        session.remove(st);
        session.getTransaction().commit();
    }

    // Lấy sinh viên theo id
    public Student getById(String id) {
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        Student st = session.get(Student.class, id);
        session.getTransaction().commit();
        return st;
    }
}
