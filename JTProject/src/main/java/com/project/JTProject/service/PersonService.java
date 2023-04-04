package com.project.JTProject.service;

import java.io.File;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

import com.project.JTProject.model.Person;


@Service
public class PersonService {
	

	@Bean(name="entityManagerFactory")
	 public static SessionFactory provideSessionFactory()
	    {
//	        Configuration config=new Configuration();
//	        config.configure("./src/main/resources/hibernate.cfg.xml");
//	        return config.buildSessionFactory();
		 	SessionFactory sessionFactory = new Configuration().configure(new File("C:\\Users\\Admin\\eclipse-workspace\\JTProject (2)\\JTProject\\src\\main\\java\\com\\project\\JTProject\\service\\hibernate.cfg.xml")).buildSessionFactory();
		 	return sessionFactory;
	    }
	
	public static void save(Person p)
	{
		 SessionFactory sessionFactory=provideSessionFactory();
		 Session session=sessionFactory.openSession();
	     Transaction t=session.beginTransaction();
	     session.persist("person", p);
	     t.commit();
	     session.clear();
	     
	}
	
	
	
	
	public static List<Person> getPerson()
	{
		 SessionFactory sessionFactory=provideSessionFactory();
		 Session session=sessionFactory.openSession();
	     Transaction t=session.beginTransaction();
	     
	    
		List<Person> persons=(List<Person>) session.createQuery("from Person").list();
		System.out.println("11hello");
	     t.commit();
		sessionFactory.close();
		return persons;
	}

}
