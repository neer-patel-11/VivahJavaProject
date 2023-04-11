package com.project.JTProject.service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

import com.project.JTProject.model.Person;
import com.project.JTProject.model.PersonProffesionalDetails;


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
	
	
	public static Person getProfile(String email)
	{
		List<Person> persons = PersonService.getPerson();
		
		for(Person p : persons) {
			if(p.getEmailId().equals(email))
			{
				return p;
			}
		}
		
		return new Person();
		
	}
	
	public static PersonProffesionalDetails getProffesional(String email)
	{
		
		 SessionFactory sessionFactory=provideSessionFactory();
		 Session session=sessionFactory.openSession();
	     Transaction t=session.beginTransaction();
	     System.out.println("serviceproff");
		 List<PersonProffesionalDetails> ppd = (List<PersonProffesionalDetails>)session.createQuery("from PersonProffesionalDetails").list(); ;
		
		 for (PersonProffesionalDetails p : ppd)
		 {
			 if(p.getEmailId().equals(email))
			 {
				 t.commit();
				 sessionFactory.close();
				 return p;
			 }
		 }
		 
		 t.commit();
		sessionFactory.close();
		
		return new PersonProffesionalDetails();
		
	}
	
	public static void updateProfile(Person p)
	{
		System.out.println("update");
		 SessionFactory sessionFactory=provideSessionFactory();
		 Session session=sessionFactory.openSession();
	     Transaction t=session.beginTransaction();
	     System.out.println(p.getId());
	     Person oldP=(Person) session.get(Person.class,p.getId());
	     System.out.println(oldP);
	     oldP.setAddress(p.getAddress());
	     oldP.setCast(p.getCast());
	     oldP.setContact(p.getContact());
	     oldP.setDob(p.getDob());
	     oldP.setEmailId(p.getEmailId());
	     oldP.setFatherName(p.getFatherName());
	     oldP.setFirstName(p.getFirstName());
	     oldP.setLastName(p.getLastName());
	     oldP.setMiddleName(p.getMiddleName());
	     oldP.setPassword(p.getPassword());
	     oldP.setMotherName(p.getMotherName());
	     oldP.setReligion(p.getReligion());
	     session.update(oldP);
	     t.commit();
	     sessionFactory.close();
		
	}
	
	public static void delete(String email)
	{
		Person p = new Person();
		p=getProfile(email);
		int id=p.getId();
		SessionFactory sessionFactory=provideSessionFactory();
	    Session session=sessionFactory.openSession();
	    Transaction t=session.beginTransaction();
	    p=session.find(Person.class,id);
	    session.remove(p);
	    t.commit();
	   
		
	}
	

	public static void updateProffProfile(PersonProffesionalDetails p)
	{
		System.out.println("update");
		 SessionFactory sessionFactory=provideSessionFactory();
		 Session session=sessionFactory.openSession();
	     Transaction t=session.beginTransaction();
	     System.out.println(p.getId());
	     PersonProffesionalDetails oldP=(PersonProffesionalDetails) session.get(PersonProffesionalDetails.class,p.getId());
	     
	     oldP.setDescription(p.getDescription());
	     oldP.setEmailId(p.getEmailId());
	     oldP.setOccupation(p.getOccupation());
	     oldP.setQualification(p.getQualification());
	     oldP.setChoiceDescription(p.getChoiceDescription());
	     session.update(oldP);
	     
	     t.commit();
	     sessionFactory.close();
		
	}

}
