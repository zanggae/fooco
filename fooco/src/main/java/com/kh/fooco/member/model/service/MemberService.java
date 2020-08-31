package com.kh.fooco.member.model.service;

import java.util.ArrayList;

import com.kh.fooco.admin.model.vo.VisitorCount;
import com.kh.fooco.member.model.vo.Follower;
import com.kh.fooco.member.model.vo.Following;
import com.kh.fooco.member.model.vo.Member;

public interface MemberService {

	Member loginMember(Member m);

	int insertMember(Member m);

	int checkNickName(String nickName);

	int selectOneFollowCount(Member m);

	int selectOneFollowingCount(Member m);

	String selectOneProFile(Member m);

	int updateMemberProfile(Member m);

	ArrayList<Follower> selectFollower(Member m);

	ArrayList<Following> selectFollowing(Member m);







	

}
