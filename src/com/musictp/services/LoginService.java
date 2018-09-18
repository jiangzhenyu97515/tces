package com.musictp.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.musictp.dao.managerDao;
import com.musictp.entity.Audience;
import  com.musictp.entity.Manager;

@Service
public class LoginService {
	@Autowired
	private managerDao managerDao;	
	//判断用户是否登陆成功
	public boolean execute(int code,String password){
		Manager manager=new Manager();
		manager.setCode(code);
		manager.setPassword(password);
		Manager m=managerDao.getManager(manager);
		if(m!=null){
			return true;
		}else{
			return false;
		}
	}
	public boolean aexecute(String name,String password){
		Audience audience=new Audience();
		audience.setName(name);
		audience.setPassword(password);
		Audience a=managerDao.audiencelogin(audience);
		if(a!=null){
			return true;
		}else{
			return false;
		}
	}
}

