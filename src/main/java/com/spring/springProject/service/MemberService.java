package com.spring.springProject.service;

import org.springframework.web.multipart.MultipartFile;

import com.spring.springProject.vo.MemberVO;

public interface MemberService {

	public MemberVO getMemberIdCheck(String mid);

	public MemberVO getmemberNickCheck(String nickName);

	public String fileUpload(MultipartFile fName, String mid);

	public int setMemberJoinOK(MemberVO vo);

}
