package com.project.JTProject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.project.JTProject.model.Person;
import com.project.JTProject.model.PersonLogin;
import com.project.JTProject.model.PersonProffesionalDetails;
import com.project.JTProject.service.PersonService;

import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.http.HttpRequest;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;
import java.util.List;
import java.util.Optional;
@Controller 
public class HomeController {
	
	
	@RequestMapping("/registerPage")
	public String registerRender()
	{
		System.out.println("hello");
		return "register";
	}
	
	@RequestMapping(value="/register")
	public String register(@RequestParam("img") MultipartFile file,HttpServletRequest request)
	{
		
			Person p = new Person();
			PersonProffesionalDetails ppd = new PersonProffesionalDetails();
			PersonLogin pl = new PersonLogin();
			
			p.setFirstName((String) request.getParameter("fname"));
			p.setMiddleName((String) request.getParameter("mname"));
			p.setLastName((String) request.getParameter("lname"));
			p.setGender((String) request.getParameter("gender"));
			p.setAddress((String) request.getParameter("address"));
			p.setContact((String) request.getParameter("contact"));
			p.setEmailId((String) request.getParameter("email"));
			ppd.setEmailId((String) request.getParameter("email"));
			ppd.setQualification((String) request.getParameter("qualification"));
			ppd.setDescription((String) request.getParameter("description"));
			p.setMotherTongue((String) request.getParameter("motherTongue"));
			p.setReligion((String) request.getParameter("religion"));
			p.setCast((String) request.getParameter("cast"));
			ppd.setOccupation((String) request.getParameter("occupation"));
			ppd.setChoiceDescription((String) request.getParameter("choiceDescription"));
			p.setMotherName((String) request.getParameter("mothername"));
			p.setFatherName((String) request.getParameter("fathername"));
			p.setDob(LocalDate.parse((String)request.getParameter("dob")));
			p.setPassword((String) request.getParameter("password"));
			p.setPpd(ppd);
			ppd.setPerson(p);
			
			pl.setEmailId((String) request.getParameter("email"));
			pl.setPassword((String) request.getParameter("password"));
			pl.setP(p);
			
			p.setPl(pl);
			
			try{
				p.setImg(Base64.getEncoder().encodeToString(file.getBytes()));
			}
			catch(IOException e){
				e.printStackTrace();
			}
			
//			pr.save(p);
			PersonService.save(p);
			return "login";
		
	}
	
	@Transactional(readOnly=false)
	@RequestMapping(value="/login")
	public String login(HttpServletRequest request)
	{
		System.out.println("exc");
		if(request.getMethod().equals("POST"))
		{
			String em = (String)request.getParameter("email");
			String pass = (String)request.getParameter("password");
					
			List<Person> persons = (List<Person>) PersonService.getPerson();

			
			for (Person person : persons) {
				if (person.getEmailId().equals(em) && person.getPassword().equals(pass)) {
					request.getSession().setAttribute("name", person.getFirstName());
					request.getSession().setAttribute("email", person.getEmailId());
					request.getSession().setAttribute("gender", person.getGender());
					
					return "redirect:/home";
				}
			}

			
		}
		
		return "login";
	}
	
	@RequestMapping(value="/home")
	public String home(HttpServletRequest request)
	{
		
		return "Home";
	
		
	}
	
	
	@RequestMapping(value="/profile")
	public ModelAndView profile(HttpServletRequest request)
	{
		ModelAndView mv= new ModelAndView("profile");
		Person person =PersonService.getProfile((String)request.getSession().getAttribute("email"));
		mv.addObject("person",person);
		PersonProffesionalDetails ppd = PersonService.getProffesional((String)request.getSession().getAttribute("email"));
		mv.addObject("ppd",ppd);
		return mv;
		
	}
	
	@RequestMapping(value="/display")
	public ModelAndView display(HttpServletRequest request)
	{
		List<Person> persons =PersonService.getPerson();
		List<Person> newPerson=new ArrayList<Person>();
		for(int i=0;i<persons.size();i++)
		{
			if(!persons.get(i).getGender().equals(request.getSession().getAttribute("gender")))
			{
				newPerson.add(persons.get(i));
			}
			
		}
		ModelAndView map = new ModelAndView("display");
		map.addObject("ps", newPerson);
		System.out.println("Hello11");
		
		
		return map;
	
		
	}
		
	
	@RequestMapping(value="/logout")
	public String logout(HttpServletRequest request)
	{
		
		request.getSession().invalidate();
			
		return "redirect:/login";
		
	
	}
	
	int id;
	@RequestMapping(value="/updateProfile")
	public ModelAndView updateProfile(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView("updateProfile");
		System.out.println(request.getMethod());
		if(request.getMethod().equals("POST"))
		{
			Person p = new Person();
			
			p.setFirstName((String) request.getParameter("fname"));
			p.setMiddleName((String) request.getParameter("mname"));
			p.setLastName((String) request.getParameter("lname"));
			p.setGender("Male");
			p.setAddress((String) request.getParameter("address"));
			p.setContact((String) request.getParameter("contact"));
			p.setEmailId((String) request.getParameter("email"));
			p.setMotherTongue((String) request.getParameter("motherTongue"));
			p.setReligion((String) request.getParameter("religion"));
			p.setCast((String) request.getParameter("cast"));
			p.setMotherName((String) request.getParameter("mothername"));
			p.setFatherName((String) request.getParameter("fathername"));
			p.setDob(LocalDate.parse((String)request.getParameter("dob")));
			p.setPassword((String) request.getParameter("password"));
			p.setImg("hello");
			p.setId(id);
			p.setPl(null);
			p.setPpd(null);
			
			
			PersonService.updateProfile(p);
			
		}
		Person person =PersonService.getProfile((String)request.getSession().getAttribute("email"));
		mv.addObject("person",person);
		id=person.getId();
		
		return mv;
	
	}
	int proffId;
	@RequestMapping(value="/updateProff")
	public ModelAndView updateProff(HttpServletRequest request)
	{
		
		ModelAndView mv=new ModelAndView("updateProfileProff");
		System.out.println(request.getMethod());
		
		if(request.getMethod().equals("POST"))
		{
			PersonProffesionalDetails ppd=new PersonProffesionalDetails();
			
			ppd.setChoiceDescription((String) request.getParameter("choice"));
			ppd.setDescription((String) request.getParameter("description"));
			ppd.setOccupation((String) request.getParameter("occupation"));
			ppd.setEmailId((String) request.getParameter("email"));
			ppd.setQualification((String) request.getParameter("qualification"));
			
			ppd.setOccupation(null);
			ppd.setId(proffId);
			
			PersonService.updateProffProfile(ppd);
			
		}
		System.out.println("pp");
		PersonProffesionalDetails ppd = PersonService.getProffesional((String)request.getSession().getAttribute("email"));
		System.out.println("pp1");
		mv.addObject("pp",ppd);
		proffId=ppd.getId();
		
		return mv;

		
	
	}
	
	
	@RequestMapping(value="/deleteProfile")
	public String deleteAccount(HttpServletRequest request)
	{
		
		PersonService.delete((String)request.getSession().getAttribute("email"));
		return "redirect:/login";
		
	
	}
	
	@RequestMapping(value="/displayProfile")
	public ModelAndView displayProfile(HttpServletRequest request)
	{
		ModelAndView mv= new ModelAndView("profile");
		System.out.println((String)request.getParameter("email"));
		Person person =PersonService.getProfile((String)request.getParameter("email"));
		mv.addObject("person",person);
		PersonProffesionalDetails ppd = PersonService.getProffesional((String)request.getParameter("email"));
		mv.addObject("ppd",ppd);
		return mv;
		
	
	}
	
	
	

	
}
