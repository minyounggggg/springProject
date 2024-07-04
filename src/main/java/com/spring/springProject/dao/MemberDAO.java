package com.spring.springProject.dao;

import org.apache.ibatis.annotations.Param;

import com.spring.springProject.vo.MemberVO;

public interface MemberDAO {

	MemberVO getMemberIdCheck(@Param("mid") String mid);

}
