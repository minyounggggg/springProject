package com.spring.javaclassS15.dao;

import org.apache.ibatis.annotations.Param;

import com.spring.javaclassS15.vo.MemberVO;

public interface MemberDAO {

	public MemberVO getMemberIdCheck(@Param("mid") String mid);

	public MemberVO getmemberNickCheck(@Param("nickName") String nickName);

	public int setMemberJoinOK(@Param("vo") MemberVO vo);

}
