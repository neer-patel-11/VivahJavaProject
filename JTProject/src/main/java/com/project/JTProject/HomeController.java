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
			
			p.setFirstName((String) request.getParameter("fname"));
			p.setMiddleName((String) request.getParameter("mname"));
			p.setLastName((String) request.getParameter("lname"));
			p.setGender((String) request.getParameter("gender"));
			p.setAddress((String) request.getParameter("address"));
			p.setContact((String) request.getParameter("contact"));
			p.setEmailId((String) request.getParameter("email"));
			p.setQualification((String) request.getParameter("qualification"));
			p.setDescription((String) request.getParameter("description"));
			p.setMotherTongue((String) request.getParameter("motherTongue"));
			p.setReligion((String) request.getParameter("religion"));
			p.setCast((String) request.getParameter("cast"));
			p.setOccupation((String) request.getParameter("occupation"));
			p.setChoiceDescription((String) request.getParameter("choiceDescription"));
			p.setMotherName((String) request.getParameter("mothername"));
			p.setFatherName((String) request.getParameter("fathername"));
			p.setDob(LocalDate.parse((String)request.getParameter("dob")));
			p.setPassword((String) request.getParameter("password"));
			
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
		if(request.getMethod().equals("POST"))
		{
			System.out.println("exc");
			String em = (String)request.getParameter("email");
			String pass = (String)request.getParameter("password");
					
			List<Person> persons = (List<Person>) PersonService.getPerson();

			
			for (Person person : persons) {
				if (person.getEmailId().equals(em) && person.getPassword().equals(pass)) {
					request.getSession().setAttribute("name", person.getFirstName());
					return "Home";
				}
			}

			
		}
		
		return "login";
	}
	
	@RequestMapping(value="/display")
	public ModelAndView display(HttpServletRequest request)
	{
		List<Person> persons =PersonService.getPerson();
		ModelAndView map = new ModelAndView("display");
		map.addObject("ps", persons);
		System.out.println("Hello11");
		
		
		return map;
	
		
	}
		
	

	
}
