package com.kh.fooco.member.model.service;

import com.kh.fooco.admin.model.vo.VisitorCount;
import com.kh.fooco.member.model.vo.Member;

public interface MemberService {

	Member loginMember(Member m);

	int insertMember(Member m);

	int checkNickName(String nickName);


	int searchMemberPwd(Member m);

	String searchPwdMember(Member m);

	int selectOneFollowCount(Member m);

	int selectOneFollowingCount(Member m);

	String selectOneProFile(Member m);

	int updateMemberProfile(Member m);




	

}
