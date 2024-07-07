package com.spring.springProject.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.springProject.service.MemberService;
import com.spring.springProject.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	

	@RequestMapping(value = "/memberLogin", method = RequestMethod.GET)
	public String memberLoginGet(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();

		if(cookies != null) {
			for(int i=0; i<cookies.length; i++) {
				if(cookies[i].getName().equals("cMid")) {
					request.setAttribute("mid", cookies[i].getValue());
					break;
				}
			}
		}
		return "member/memberLogin";
	}
	
	@RequestMapping(value = "/memberLogin", method = RequestMethod.POST)
	public String memberLoginPost(HttpServletRequest request, HttpServletResponse response, HttpSession session,
		String mid, String pwd, String idSave) {
		
		MemberVO vo = memberService.getMemberIdCheck(mid);
		
		if(vo != null && passwordEncoder.matches(pwd, vo.getPwd())) {
			session.setAttribute("sMid", mid);
			session.setAttribute("sNickName", vo.getNickName());
			
			if(idSave.equals("on")) {
				Cookie cookieMid = new Cookie("cMid", mid);
				cookieMid.setPath("/");		// 검색을 루트부터
				cookieMid.setMaxAge(60*60*24*7);		//쿠키의 만료시간을 7일로 지정
				response.addCookie(cookieMid);
			}
			else {
				Cookie[] cookies = request.getCookies();
				if(cookies != null) {
					for(int i=0; i<cookies.length; i++) {
						if(cookies[i].getName().equals("cMid")) {
							cookies[i].setMaxAge(0);	// 만료시긴을 0으로 줘서 삭제
							response.addCookie(cookies[i]);
							break;
						}
					}
				}
			}
			//request.setAttribute("msg", "로그인 되었습니다.");
			//request.setAttribute("url", "member/memberMain");
			
			//return "include/message";
			return "member/memberMain";
		}
		else return "member/memberLogin";
		
	}
	
	@RequestMapping(value = "/memberJoin", method = RequestMethod.GET)
	public String memberJoinGet() {
		return "member/memberJoin";
	}
	
	@RequestMapping(value = "/memberJoin", method = RequestMethod.POST)
	public String memberJoinPost() {
		
		
		
		return "member/memberMain";
	}
	
	@ResponseBody
	@RequestMapping(value = "/memberIdCheck", method = RequestMethod.POST)
	public String memberIdCheckPost(String mid) {
		
		MemberVO vo = memberService.getMemberIdCheck(mid);
		
		if(vo != null) return "1";
		else return "0";
	}
	
	@ResponseBody
	@RequestMapping(value = "/memberNickCheck", method = RequestMethod.POST)
	public String memberNickCheckPost(String nickName) {
		
		MemberVO vo = memberService.getmemberNickCheck(nickName);
		
		if(vo != null) return "1";
		else return "0";
	}
	
	@RequestMapping(value = "/memberMain", method = RequestMethod.GET)
	public String memberMainGet() {
		return "member/memberMain";
	}
	
	
}
