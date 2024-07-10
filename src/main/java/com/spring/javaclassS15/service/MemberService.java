package com.spring.javaclassS15.service;

import org.springframework.web.multipart.MultipartFile;

import com.spring.javaclassS15.vo.MemberVO;

public interface MemberService {

	public MemberVO getMemberIdCheck(String mid);

	public MemberVO getmemberNickCheck(String nickName);

	public String fileUpload(MultipartFile fName, String mid);

	public int setMemberJoinOK(MemberVO vo);

}