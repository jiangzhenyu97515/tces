package com.musictp.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.musictp.entity.Audience;
import com.musictp.entity.Platform;
import com.musictp.entity.Singer;
import com.musictp.services.InfoService;


@Controller
public class InfoController {
	@Autowired
	private InfoService infoService;

	@RequestMapping("/manager/audilist")
	public String audienceList(Model model){
		List<Audience> list=infoService.getAudience();
		model.addAttribute("audiences", list);
		return "manager/audienceList";
	}
	
	@RequestMapping("/audience/add")
	public String addaudience(){		
		return "manager/addaudience";
	}
	
	@RequestMapping("/audience/add/do")
	@ResponseBody
	public String add(Audience audience){
		int i=infoService.addAudience(audience);
		if(i>0){
			return "1";
		}else{
			return "0";
		}
		
	}
	@RequestMapping("/audience/edit/{id}")
	public String EditEmployee(@PathVariable("id")int id,Model model){
		Audience audience=infoService.getAudienceById(id);
		model.addAttribute("audience",audience);
		return "manager/editaudience";
	}
	
	@RequestMapping("/audience/update")
	public String update(Audience audience){
		int i=infoService.updateAudience(audience);
		if(i>0){
			return "1";
		}else{
			return "0";
		}
	}
	@RequestMapping("/audience/del")
	@ResponseBody
	public String delete(int id){
		int i=infoService.deleteAudience(id);
		if(i>0){
			return "1";
		}else{
			return "0";
		}
	}
	///////////////////////////歌手////////////////////////////////////////////////
	@RequestMapping("/manager/singerlist")
	public String singerList(Model model){
		List<Singer> list=infoService.getSinger();
		model.addAttribute("singers", list);
		return "manager/singerList";
	}
	
	@RequestMapping("/singer/add")
	public String addsinger(){		
		return "manager/addsinger";
	}
	
	@RequestMapping("/singer/add/do")
	public String upload(Singer singer,HttpServletRequest request,Model model) throws Exception{  
	    System.out.println(request.getParameter("name"));  
	      //保存数据库的路径  
	      String sqlPath = null;   
	      //定义文件保存的本地路径  
	      String localPath="D:\\File\\";  
	      //定义 文件名  
	      String filename=null;    
	      if(!singer.getFile().isEmpty()){    
	          //生成uuid作为文件名称    
	          String uuid = UUID.randomUUID().toString().replaceAll("-","");    
	          //获得文件类型（可以判断如果不是图片，禁止上传）    
	          String contentType=singer.getFile().getContentType();    
	          //获得文件后缀名   
	          String suffixName=contentType.substring(contentType.indexOf("/")+1);  
	          //得到 文件名  
	          filename=uuid+"."+suffixName;   
	          System.out.println(filename);  
	          //文件保存路径  
	          singer.getFile().transferTo(new File(localPath+filename));    
	      }  
	      //把图片的相对路径保存至数据库  
	      sqlPath = "/images/"+filename;  
	      System.out.println(sqlPath);  
	      singer.setImage(sqlPath); 
		infoService.addSinger(singer);
		model.addAttribute("singer", singer);  
		return "manager/singerList";
	}
	
	@RequestMapping("/singer/edit/{id}")
	public String EditSinger(@PathVariable("id")int id,Model model){
		Singer singer=infoService.getSingerById(id);
		model.addAttribute("singer",singer);
		return "manager/editsinger";
	}
	
	@RequestMapping("/singer/update")
	public String update(Singer singer){
		int i=infoService.updateSinger(singer);
		if(i>0){
			return "1";
		}else{
			return "0";
		}
	}
	@RequestMapping("/singer/del")
	@ResponseBody
	public String del(int id){
		int i=infoService.deleteSinger(id);
		if(i>0){
			return "1";
		}else{
			return "0";
		}
	}
	/////////////////对战平台////////////////////////////////////
	@RequestMapping("/platform/platlist")
	public String platList(Model model){
		List<Platform> list=infoService.getPlatform();
		model.addAttribute("platform", list);
		return "manager/platform/platformlist";
	}
	@RequestMapping("/platform/add")
	public String addplat(Model model){	
		List<Singer> list=infoService.getSinger();
		model.addAttribute("singers", list);
		return "manager/platform/addplatform";
	}
	@RequestMapping("/platform/add/do")
	@ResponseBody
	public String add(Platform platform){
		int i=infoService.addPlatform(platform);
		if(i>0){
			return "1";
		}else{
			return "0";
		}		
	}
	@RequestMapping("/platform/edit/{id}")
	public String aplatform(@PathVariable("id")int id,Model model,HttpSession session){
		Audience audience=(Audience)session.getAttribute("curAudience");
		Platform platform=infoService.getPlatformById(id);
		model.addAttribute("aplatform",platform);
		Audience idt=infoService.getAudienceById(audience.getId());
		model.addAttribute("audience",idt);
		return "audience/platforminfo";
	}
	
	@RequestMapping("/platforml/edit/{id}")
	public String platforml(@PathVariable("id")int id,Model model){
		Platform platform=infoService.getPlatformById(id);
		model.addAttribute("aplatform",platform);
		return "manager/platform/xstp";
	}
	
	@RequestMapping("/platforml/ticket")
	@ResponseBody
	public Map<String, Object> ticket(int id,Model model){
		Map<String,Object> map=new HashMap<>();
		Platform platform=infoService.getPlatformById(id);
		map.put("ticket1", platform.getTicket1());
		map.put("ticket2", platform.getTicket2());
		return map;
	}
	
	@RequestMapping("/platform/updateticket")
	public String updateticket1(Platform platform){
		int i=infoService.updateTicket(platform);
		if(i>0){
			return "1";
		}else{
			return "0";
		}
	}
	@RequestMapping("/platform/updateaticket")
	public String updateaticket(Audience audience){
		int i=infoService.updateaTicket(audience);
		if(i>0){
			return "1";
		}else{
			return "0";
		}
	}
	@RequestMapping("/platform/del")
	@ResponseBody
	public String delt(int id){
		int i=infoService.deletePlatform(id);
		if(i>0){
			return "1";
		}else{
			return "0";
		}
	}

}
