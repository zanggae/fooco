package com.kh.fooco.admin.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooco.admin.model.vo.MembershipCount;
import com.kh.fooco.admin.model.vo.MembershipStatus;
import com.kh.fooco.admin.model.vo.Search;
import com.kh.fooco.admin.model.vo.VisitorCount;
import com.kh.fooco.board.model.vo.Board;
import com.kh.fooco.common.model.vo.Image;
import com.kh.fooco.common.model.vo.PageInfo;
import com.kh.fooco.member.model.vo.Member;
import com.kh.fooco.restaurant.model.vo.Restaurant;
import com.kh.fooco.theme.model.vo.ThemeAdmin;

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
	public int insertVisitorCount() {
		return sqlSessionTemplate.insert("adminMapper.insertVisitorCount");
	}
	
	public int insertVisitorCount1() {
		return sqlSessionTemplate.insert("adminMapper.insertVisitorCount1");
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

	public ArrayList<Restaurant> selectListRestaurantAdmin(Search search, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("adminMapper.selectListRestaurant",search,rowBounds);
	}

	public int selectOneRestaurantCount(Search search) {
		return sqlSessionTemplate.selectOne("adminMapper.selectOneRestaurantCount", search);
	}

	public int deleteRestaurant(Restaurant r) {
		return sqlSessionTemplate.update("adminMapper.deleteRestaurant", r);
	}

	public int insertRestaurantMenu(String me) {
		return sqlSessionTemplate.insert("adminMapper.insertRestaurantMenu", me);
	}

	public int insertRestaurantFilter(String filter) {
		return sqlSessionTemplate.insert("adminMapper.insertRestaurantFilter", filter);
	}

	public int insertRestaurant(Restaurant r) {
		return sqlSessionTemplate.insert("adminMapper.insertRestaurant", r);
	}

	public int insertRestaurantImage(Image i) {
		return sqlSessionTemplate.insert("adminMapper.insertRestaurantImage", i);
	}

	public Restaurant selectOneRestaurant(Restaurant restaurant) {
		return sqlSessionTemplate.selectOne("adminMapper.selectOneRestaurant",restaurant);
	}

	public ArrayList<String> selectListRestaurantFilter(Restaurant restaurant) {
		return (ArrayList)sqlSessionTemplate.selectList("adminMapper.selectListRestaurantFilter",restaurant);
	}

	public ArrayList<String> selectListRestaurantMenu(Restaurant restaurant) {
		return (ArrayList)sqlSessionTemplate.selectList("adminMapper.selectListRestaurantMenu",restaurant);
	}

	public int deleteRestaurantMenu(Restaurant r) {
		return sqlSessionTemplate.delete("adminMapper.deleteRestaurantMenu",r);
	}

	public int deleteRestaurantFilter(Restaurant r) {
		return sqlSessionTemplate.delete("adminMapper.deleteRestaurantFilter",r);
	}

	public int updateRestaurantMenu(String me, int rId) {
		HashMap<String, Object> updateParameter = new HashMap<String, Object>();
		updateParameter.put("me", me);
		updateParameter.put("rId", rId);
		return sqlSessionTemplate.insert("adminMapper.updateRestaurantMenu",updateParameter);
	}

	public int updateRestaurantFilter(String fi, int rId) {
		HashMap<String, Object> updateParameter = new HashMap<String, Object>();
		updateParameter.put("filter", fi);
		updateParameter.put("rId", rId);
		return sqlSessionTemplate.insert("adminMapper.updateRestaurantFilter",updateParameter);
	}

	public int updateRestaurantImage(Image i, int rId) {
		String nName = i.getImageNewName();
		String oName = i.getImageOriginName();
		HashMap<String, Object> updateParameter = new HashMap<String, Object>();
		updateParameter.put("rId", rId);
		updateParameter.put("nName", nName);
		updateParameter.put("oName", oName);
		System.out.println(updateParameter);
		return sqlSessionTemplate.update("adminMapper.updateRestaurantImage",updateParameter);
	}

	public int updateRestaurant(Restaurant r) {
		return sqlSessionTemplate.update("adminMapper.updateRestaurant", r);
	}

	public int selectOneThemeCount(ThemeAdmin ta) {
		return sqlSessionTemplate.selectOne("adminMapper.selectOneThemeCount",ta);
	}

	public ArrayList<ThemeAdmin> selectListTheme(ThemeAdmin ta, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());		
		return (ArrayList)sqlSessionTemplate.selectList("adminMapper.selectListTheme",ta);
	}

	public int deleteTheme(ThemeAdmin ta) {
		return sqlSessionTemplate.delete("adminMapper.deleteTheme",ta);
	}

	public int deleteThemeBM(ThemeAdmin ta) {
		return sqlSessionTemplate.delete("adminMapper.deleteThemeBM",ta);
	}

	public int deleteThemeR(ThemeAdmin ta) {
		return sqlSessionTemplate.delete("adminMapper.deleteThemeR",ta);
	}

	


}
