package com.kh.fooco.admin.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooco.admin.model.vo.MembershipCount;
import com.kh.fooco.admin.model.vo.MembershipStatus;
import com.kh.fooco.admin.model.vo.VisitorCount;
import com.kh.fooco.board.model.vo.Board;
import com.kh.fooco.common.model.vo.PageInfo;
import com.kh.fooco.member.model.vo.Member;

@Repository("adminDao")
public class AdminDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 방문자 수 조회
	public VisitorCount selectOneVisitorCount() {
		return sqlSessionTemplate.selectOne("adminMapper.selectOneVisitorCount");
	}

	// 회원현황 조회
	public MembershipStatus selectOneMembershipStatus() {
		return sqlSessionTemplate.selectOne("adminMapper.selectOneMembershipStatus");
	}

	// 맴버십 회원 조회
	public MembershipCount selectOneMembershipCount() {
		return sqlSessionTemplate.selectOne("adminMapper.selectOneMembershipCount");
	}
	
	// 첫 방문시 생성
	public int insertVisitorCount(String maxCount) {
		return sqlSessionTemplate.insert("adminMapper.insertVisitorCount",maxCount);
	}
	
	// 방문시 업데이트
	public int updateVisitorCount() {
		return sqlSessionTemplate.update("adminMapper.updateVisitorCount");
	}

	public ArrayList<Member> selectlistMember(PageInfo pi) {
		int offset = (pi.getCurrentPage() -1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSessionTemplate.selectList("adminMapper.selectlistMember", null, rowBounds);
	}

	public int memberNameCount(String searchMemberTextbox) {
		return sqlSessionTemplate.selectOne("adminMapper.memberNameSearchCount", searchMemberTextbox);
	}

	public ArrayList<Member> searchlistMember(PageInfo pi, String searchMemberTextbox) {
		int offset = (pi.getCurrentPage() -1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSessionTemplate.selectList("adminMapper.searchListMember", searchMemberTextbox, rowBounds);
	}

	public int updateMembershipSuspension(String memberId) {
		
		return sqlSessionTemplate.update("adminMapper.updateMembershipSuspension",memberId);		
	}

	public int updateMembershipSuspension2(String memberId) {
		return sqlSessionTemplate.update("adminMapper.updateMembershipSuspension2",memberId);
	}
	
	public Member selectOneMember(String memberId) {
		
		return sqlSessionTemplate.selectOne("adminMapper.selectOneMember2", memberId);		
	}

	public int updateMemberReviewStatus(String memberId) {
		return sqlSessionTemplate.update("adminMapper.updateMemberReviewStatus", memberId);	
	}

	public int updateMemberReviewStatus2(String memberId) {
		return sqlSessionTemplate.update("adminMapper.updateMemberReviewStatus2", memberId);	
	}

	public ArrayList<Board> selectListInquiryD() {
		return (ArrayList)sqlSessionTemplate.selectList("adminMapper.selectListInquiryD");
	}

	public ArrayList<Board> selectListInquiry(PageInfo pi, Board board) {
		int offset = (pi.getCurrentPage() -1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("adminMapper.selectListInquiry", board, rowBounds);
	}

	public Board selectInquiryOne(Board board) {
		return sqlSessionTemplate.selectOne("adminMapper.selectInquiryOne",board);
	}

	public int updateReplyInquiry(Board board) {
		return sqlSessionTemplate.update("adminMapper.updateReplyInquiry", board);
		
		
	}

	public int selectInquiryCount(Board board) {
		return sqlSessionTemplate.selectOne("adminMapper.selectInquiryCount", board);
	}

	public ArrayList<Board> selectBoardList(Board board, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());		
		return (ArrayList)sqlSessionTemplate.selectList("adminMapper.selectBoardList",board,rowBounds);
	}

	public int selectBoardCount(Board board) {
		return sqlSessionTemplate.selectOne("adminMapper.selectBoardCount",board);
	}

	public int deleteBoardAdmin(Board board) {
		return sqlSessionTemplate.update("adminMapper.deleteBoardAdmin",board);
	}

	public int registrationBoard(Board board) {
		return sqlSessionTemplate.insert("adminMapper.registrationBoard",board);
	}

	public int modifyBoardAdmin(Board board) {
		return sqlSessionTemplate.update("adminMapper.modifyBoardAdmin",board);
	}

	public int modifyBoardAdmin2(Board board) {
		return sqlSessionTemplate.update("adminMapper.modifyBoardAdmin2",board);
	}

	public String selectvisitorMaxCount() {
		return sqlSessionTemplate.selectOne("adminMapper.selectvisitorMaxCount");
	}


}
