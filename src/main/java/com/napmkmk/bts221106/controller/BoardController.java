package com.napmkmk.bts221106.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.napmkmk.bts221106.dao.IDao;
import com.napmkmk.bts221106.dto.ContentDto;


/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	
	@Autowired
	private SqlSession sqlSession;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/")
	public String home() {
		return "redirect:list";
	}
	
	@RequestMapping(value = "list")
	public String list(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<ContentDto> dtos = dao.listDao();
		model.addAttribute("list", dtos);
		
		return "list";
	}
	
	
	@RequestMapping(value = "write_form")
	public String write_form() {
		return "write_form";
	}
	
	@RequestMapping(value = "write")
	public String write(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		//ContentDao dao = new ContentDao();
		String bname = request.getParameter("bname");
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		
		dao.writeDao(bname, btitle, bcontent);
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "content_view")
	public String content_view(HttpServletRequest request, Model model) {
		
		String bid = request.getParameter("bid");
		IDao dao = sqlSession.getMapper(IDao.class);
		ContentDto dto = dao.content_view_Dao(bid);
		
		model.addAttribute("viewdto", dto);
		
		return "content_view";
	}
	
	@RequestMapping(value = "delete")
	public String delete(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		String bid = request.getParameter("bid");
		
		dao.deleteDao(bid);
		
		return "redirect:list";
	}
	@RequestMapping(value = "modify_view")
	public String modify_view(HttpServletRequest request, Model model) {
		
		String bid = request.getParameter("bid");
		IDao dao = sqlSession.getMapper(IDao.class);
		ContentDto dto = dao.mviewDao(bid);
		
		model.addAttribute("mdto", dto);
		
		return "modify_view";
	}
	
	@RequestMapping(value = "modify")
	public String modify(HttpServletRequest request) {
		
		String bid = request.getParameter("bid");
		String bname = request.getParameter("bname");
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.modifyDao(bid, bname, btitle, bcontent);
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "reply_write")
	public String reply_write(HttpServletRequest request) {

		return "reply_write";
	}
	
	@RequestMapping (value = "reply")
	public String reply(HttpServletRequest request, Model model) {
	
		IDao dao = sqlSession.getMapper(IDao.class);
		//ContentDao dao = new ContentDao();
	
		String bname = request.getParameter("bname");
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		String bgroup = request.getParameter("bgroup");
		String bstep = request.getParameter("bstep");
		String bindent = request.getParameter("bindent");
		
		dao.replyDao(bname, btitle, bcontent,bgroup,bstep,bindent);
		//model.addAttribute("replydto", dto);
		
		return "redirect:list";// 요청을 다시 넣기
		
	}
}
