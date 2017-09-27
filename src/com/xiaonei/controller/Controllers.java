package com.xiaonei.controller;


import java.util.Date;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;










import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.xiaonei.entity.User;
import com.xiaonei.service.UserService;


@Controller  
@RequestMapping("/")
public class Controllers {

	@Autowired
	private UserService service;
	
	
	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest request,String email, String pwd){
		ModelAndView modelView = new ModelAndView();
		User user = service.queryUserList(email, pwd);
		if(user==null){
			modelView.setViewName("/index.jsp");
		}else{
			request.getSession().setAttribute("user", user);
			modelView.addObject("user", service.queryUserList(email, pwd));
			modelView.setViewName("/self/home.jsp");
		}
		return modelView;
	}
	
	@RequestMapping("public/register")
	public 	ModelAndView addUser(HttpServletRequest request,HttpServletResponse response,
		String name,String email,String pwd,String level,String loginDate,
		String sex,String visited,String photo){
		service.addUsers( name, email, pwd,sex,level,loginDate,visited,photo);
		ModelAndView m=new ModelAndView("/self/home.jsp");
	    System.out.println(sex);
		return m;
	}
	@RequestMapping("self/AddBlog")
	public 	ModelAndView addBlog(HttpServletRequest request,HttpServletResponse response,
		String blogName,String descript,Date creTime,Date updTime,String userId){
		User user1 =(User) request.getSession().getAttribute("user");
		userId= user1.getId();
		service.addBlog(blogName, creTime, descript, updTime, userId);
		ModelAndView m=new ModelAndView("/self/homePage.jsp");
		return m;
	}
	
	@RequestMapping("/exit")
	public ModelAndView exit(HttpServletRequest request){
		ModelAndView modelView = new ModelAndView();
		request.getSession().removeAttribute("user");
		modelView.setViewName("/index.jsp");
		return modelView;
	}
	@RequestMapping("self/BlogList")
	public ModelAndView Blog(HttpServletRequest request){
		ModelAndView modelView = new ModelAndView();
		User user1 =(User) request.getSession().getAttribute("user");
		List<com.xiaonei.entity.Blog> bloglist = service.queryBlogList(user1);
		modelView.addObject("bloglist",bloglist);
		modelView.setViewName("/self/blog.jsp");
		return modelView;
	}
	@RequestMapping("self/BlogMain")
	public ModelAndView Blogmain(HttpServletRequest request,String id){
		ModelAndView modelView = new ModelAndView();
		List<com.xiaonei.entity.Blog_main> blogmain = service.queryBlogMain(id);
		modelView.addObject("blogmain",blogmain);
		modelView.setViewName("/self/blogmain.jsp");
		return modelView;
	}

	
}
