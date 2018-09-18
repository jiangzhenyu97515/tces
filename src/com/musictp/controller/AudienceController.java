package com.musictp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.musictp.entity.Audience;
import com.musictp.entity.Platform;
import com.musictp.services.AudienceService;
import com.musictp.services.InfoService;



@Controller
public class AudienceController {
	@Autowired
	private InfoService infoService;
	private AudienceService audienceService;
	@RequestMapping("/aplatform/aplatlist")
	public String aplatList(Model model,HttpSession session){	
		Audience audience=(Audience)session.getAttribute("curAudience");
		System.out.println(audience.getId());
		List<Platform> list=infoService.getPlatform();
		model.addAttribute("platform", list);
		return "audience/amain";
	}
}
