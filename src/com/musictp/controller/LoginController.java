package com.musictp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.musictp.entity.Audience;
import com.musictp.entity.Platform;
import com.musictp.services.InfoService;
import com.musictp.services.LoginService;





@Controller
public class LoginController {	
			@Autowired
			private LoginService loginService;
			@Autowired
			private InfoService infoService;
			//用于访问登陆页面
			@RequestMapping("/login")
			public String login(){
				return "login";
			}
			@RequestMapping("/welcome")
			public String welcome(){		
				return "manager/welcome";
			}
			//用于接收用户表单提交请求
			@RequestMapping("/submit")
			public String login_submit(int code,String password){
				boolean result=loginService.execute(code,password);
				if(result){

					return "manager/main";
				}else{
					return "login/login_fail";
				}
			}
			
			@RequestMapping("/alogin")
			public String alogin(){
				return "alogin";
			}
			
			//用于接收用户表单提交请求
			@RequestMapping("/asubmit")
			public String alogin_submit(String name,String password,HttpSession session){
				boolean result=loginService.aexecute(name,password);
				if(result){		
					Audience cnd=new Audience();
					cnd.setName(name);
					cnd.setPassword(password);
					Audience a=infoService.audiencelogin(cnd);
					session.setAttribute("curAudience", a);
					return "audience/awelcome";
				}else{
					return "login/login_fail";
				}
			}
}
