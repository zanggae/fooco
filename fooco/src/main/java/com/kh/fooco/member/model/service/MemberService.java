package com.kh.fooco.member.model.service;

import com.kh.fooco.admin.model.vo.VisitorCount;
import com.kh.fooco.member.model.vo.Member;

public interface MemberService {

	Member loginMember(Member m);

	int insertMember(Member m);

	int checkNickName(String nickName);


	

}
