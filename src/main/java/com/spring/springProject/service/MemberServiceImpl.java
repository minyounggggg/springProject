package com.spring.springProject.service;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.spring.springProject.common.JavaclassProvide;
import com.spring.springProject.dao.MemberDAO;
import com.spring.springProject.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDAO;
	
	@Autowired
	JavaclassProvide javaclassProvide;

	@Override
	public MemberVO getMemberIdCheck(String mid) {
		return memberDAO.getMemberIdCheck(mid);
	}

	@Override
	public MemberVO getmemberNickCheck(String nickName) {
		return memberDAO.getmemberNickCheck(nickName);
	}

	@Override
	public String fileUpload(MultipartFile fName, String mid) {
		UUID uid = UUID.randomUUID();
		String oFileName = fName.getOriginalFilename();
		String sFileName = mid + "_" + uid.toString().substring(0,8) + "_" + oFileName;
		
		try {
			javaclassProvide.writeFile(fName, sFileName, "member");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return sFileName;
	}

//	@Override
//	public int setMemberJoinOK(MemberVO vo) {
//		return memberDAO.setMemberJoinOK(vo);
//	}
	
}
