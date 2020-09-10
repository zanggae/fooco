package com.kh.fooco.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooco.admin.model.vo.MyListAdmin;
import com.kh.fooco.board.model.vo.Board;
import com.kh.fooco.common.model.vo.Image;
import com.kh.fooco.member.model.vo.BoardInfo;
import com.kh.fooco.member.model.vo.Checkin;
import com.kh.fooco.member.model.vo.CheckinImage;
import com.kh.fooco.member.model.vo.Follower;
import com.kh.fooco.member.model.vo.Following;
import com.kh.fooco.member.model.vo.MZ;
import com.kh.fooco.member.model.vo.Member;
import com.kh.fooco.restaurant.model.vo.Info;
import com.kh.fooco.restaurant.model.vo.Res;
import com.kh.fooco.restaurant.model.vo.Restaurant;
import com.kh.fooco.theme.model.vo.ThemeAdmin;

import com.kh.fooco.member.model.vo.Mylist;

import com.kh.fooco.member.model.vo.Select_Board;

import com.kh.fooco.member.model.vo.Select_Checkin;
import com.kh.fooco.member.model.vo.Select_Coupon;
import com.kh.fooco.member.model.vo.TM;
import com.kh.fooco.membership.model.vo.MemberShip;


@Repository("memberDao")
public class MemberDao {
   @Autowired
   private SqlSessionTemplate sqlSessionTemplate;

   //로그인 메소드
   public Member loginMember(Member m) {
      
      return sqlSessionTemplate.selectOne("memberMapper.loginMember",m);
   }

   //회원가입 메소드
   public int insertMember(Member m) {
      
      return sqlSessionTemplate.insert("memberMapper.insertMember",m);
   }
   
   //닉네임 중복체크 메소드
   public int checkNickName(String nickName) {
      
      return sqlSessionTemplate.selectOne("memberMapper.checkNickName",nickName);
   }
   

   public String searchPwdMember(Member m) {
      
      return sqlSessionTemplate.selectOne("memberMapper.searchPwdMember",m);
   }
   
   public int searchMemberPwd(Member m) {
      
      return sqlSessionTemplate.update("memberMapper.searchMemberPwd",m);
   }

   //이메일 중복체크 메소드
   public int chekchemailDup(String email) {
      
      return sqlSessionTemplate.selectOne("memberMapper.checkemailDup",email);
   }


   // ================================== MyPage 동원 ===========================================

   public int checkNickNameDup(String nickName) {
      
      return sqlSessionTemplate.selectOne("mypageMapper.checkNickNameDup",nickName);
   }

   public int updateMemberInfo(Member m) {
      
      return sqlSessionTemplate.update("mypageMapper.updateMemberInfo",m);
   }

   public int updateMemberWithdrawal(Member m) {
      
      return sqlSessionTemplate.update("mypageMapper.updateMemberWithdrawal",m);
   }

   // 팔로워 수 카운트 메소드
   public int selectOneFollowCount(Member m) {
      
      return sqlSessionTemplate.selectOne("mypageMapper.selectOneFollowCount",m);
   }
   
   // 팔로잉 수 카운트 메소드
   public int selectOneFollowingCount(Member m) {
      
      return sqlSessionTemplate.selectOne("mypageMapper.selectOneFollowingCount",m);
   }
   
   // 프로필 사진 조회 메소드
   public String selectOneProFile(Member m) {
      
      return sqlSessionTemplate.selectOne("mypageMapper.selectOneProFile",m);
   }

   public int updateMemberProfile(Member m) {
      
      return sqlSessionTemplate.update("mypageMapper.updateMemberProfile",m);
   }

   // 팔로우 페이지 팔로워 메소드
   public ArrayList<Follower> selectFollower(Member m) {
   
      return (ArrayList)sqlSessionTemplate.selectList("mypageMapper.selectFollower",m);
   }

   // 팔로우 페이지 팔로잉 메소드
   public ArrayList<Following> selectFollowing(Member m) {
      
      return (ArrayList)sqlSessionTemplate.selectList("mypageMapper.selectFollowing",m);
   }

   
   // 나의 활동 리뷰 수 메소드
   public int selectOneReviewCount(Member m) {
      
      return sqlSessionTemplate.selectOne("mypageMapper.selectOneReviewCount",m);
   }
   // 나의 활동 마이리스트 수 메소드
   public int selectOneMyListCount(Member m) {
      
      return sqlSessionTemplate.selectOne("mypageMapper.selectOneMyListCount",m);
   }
   // 나의 활동 체크인 수 메소드
   public int selectOneCheckInCount(Member m) {
      
      return sqlSessionTemplate.selectOne("mypageMapper.selectOneCheckInCount",m);
   }

   // 체크인 등록 페이지에서 음식점 조회
   public ArrayList<Restaurant> selectListRestaurant(String restitle) {
   
      return (ArrayList)sqlSessionTemplate.selectList("mypageMapper.selectListRestaurant", restitle);
   }
   
   // 체크인 등록 페이지에서 체크인 테이블 입력 작업
   public int insertCheckin(Checkin ck) {
      
      return sqlSessionTemplate.insert("mypageMapper.insertCheckin",ck);
   }
   
   // 체크인 등록 페이지에서 이미지 테이블 입력 작업
   public int insertImage(Image img) {
      
      return sqlSessionTemplate.insert("mypageMapper.insertImage",img);
   }
   
   // 체크인 등록 페이지에서 체크인이미지 테이블 입력 작업
   public int insertCheckinImage(CheckinImage ckimg) {
      
      return sqlSessionTemplate.insert("mypageMapper.insertCheckinImage", ckimg);
   }
   
   // 체크인 리스트 조회 메소드
   public ArrayList<Select_Checkin> selectCheckinList(int memberId) {
      
      return (ArrayList)sqlSessionTemplate.selectList("mypageMapper.selectCheckinList", memberId);
   }
   
   // 체크인 수정페이지에서 조회되는 체크인 리스트
   public ArrayList<Select_Checkin> selectModifyCheckinList(int checkinId) {
      
      return (ArrayList)sqlSessionTemplate.selectList("mypageMapper.selectModifyCheckinList", checkinId);
   }

   // 체크인 수정 페이지에서 체크인 테이블 수정 작업
   public int updateCheckin(Checkin ck) {
      
      return sqlSessionTemplate.update("mypageMapper.updateCheckin", ck);
   }
   
   // 체크인 수정 시 이미지 테이블에서 해당 이미지 삭제
      public int deleteImage(String imageNum) {
         
         return sqlSessionTemplate.delete("mypageMapper.deleteImage", imageNum);
      }
      
   // 체크인 수정 시 체크인 이미지 테이블에서 해당 이미지 관련 행 삭제
   public int deleteCheckinImage(String imageNum) {
      
      return sqlSessionTemplate.delete("mypageMapper.deleteCheckinImage", imageNum);
   }   
   
   // 체크인 수정 시 체크인 이미지 테이블 입력 작업
   public int insertCheckinImage2(CheckinImage ckimg) {
      
      return sqlSessionTemplate.insert("mypageMapper.insertCheckinImage2", ckimg);
   }   

   // 체크인 테이블 삭제 작업
   public int deleteCheckin(int checkinId) {
   
      return sqlSessionTemplate.delete("mypageMapper.deleteCheckin", checkinId);
   }
   
   // 체크인 리스트 페이지에서 체크인 이미지 테이블 삭제 작업
   public int deleteCheckinImage2(int checkinId) {
      
      return sqlSessionTemplate.delete("mypageMapper.deleteCheckinImage2", checkinId);
   }
   
   // 즐겨찾기 - 맛집 조회 메소드
   public ArrayList<MZ> selectMZ(int memberId) {

      return (ArrayList)sqlSessionTemplate.selectList("mypageMapper.selectMZ",memberId);
   }
   
   // 즐겨찾기 - 맛집 삭제 메소드
   public int deleteMZ(int resBookMarkId) {
      
      return sqlSessionTemplate.delete("mypageMapper.deleteMZ", resBookMarkId);
   }
   
   // 맛집 상세페이지
   public Res getRestaurantDetail(int resId) {
      
      return sqlSessionTemplate.selectOne("restaurantMapper.getRestaurantDetail", resId);
   }
   
   // 해당 맛집 상세페이지 정보
   public Info getRestaurantInfo(int resId) {
      
      return sqlSessionTemplate.selectOne("restaurantMapper.getRestaurantInfo", resId);
   }
   
   // 1대1문의 리스트 조회 메소드
   public ArrayList<Select_Board> selectInquiry(int memberId) {
      
      return (ArrayList)sqlSessionTemplate.selectList("mypageMapper.selectInquiry",memberId);
   }
   
   // 1대1문의 수정페이지 이동 시 해당 정보 조회 메소드
   public BoardInfo selectBoardInfo(int boardId) {
      
      return sqlSessionTemplate.selectOne("mypageMapper.selectBoardInfo",boardId);
   }
   
   // 1대1문의 수정 버튼 클릭 시 board테이블 수정 작업
   public int updateBoard(BoardInfo boardInfo) {
      
      return sqlSessionTemplate.update("mypageMapper.updateBoard",boardInfo);
   }
   
   // 1대1문의 수정 버튼 클릭 시 inquiry테이블 수정 작업
   public int updateInquiry(BoardInfo boardInfo) {
      
      return sqlSessionTemplate.update("mypageMapper.updateInquiry",boardInfo);
   }
   
   // 1대1 문의 삭제 버튼 클릭 시 boardStatus 상태 변경
   public int updateBoardStatus(int boardId) {
      
      return sqlSessionTemplate.update("mypageMapper.updateBoardStatus",boardId);
   }   
   
   // 나의 멤버십 페이지 쿠폰 리스트 조회
   public ArrayList<Select_Coupon> selectCouponList(int memberId) {
      
      return (ArrayList)sqlSessionTemplate.selectList("mypageMapper.selectCouponList",memberId);
   }
   
   // 쿠폰 상태 변경 메소드
   public int updatecStatus(int couponListId) {
   
      return sqlSessionTemplate.update("mypageMapper.updatecStatus",couponListId);
   }
   
   // 즐겨찾기 - 테마 리스트 조회 메소드
   public ArrayList<TM> selectTM(int memberId) {
      
      return (ArrayList)sqlSessionTemplate.selectList("mypageMapper.selectTM",memberId);
   }
   
   // 즐겨찾기 - 테마 목록 삭제
   public int deleteTM(int themeBookMarkId) {
      
      return sqlSessionTemplate.delete("mypageMapper.deleteTM",themeBookMarkId);
   }

   
   // ================================== Mylist 영은 ===========================================

   public ArrayList<Mylist> searchListRes(String searchRes) {
      
      return (ArrayList)sqlSessionTemplate.selectList("mypageMapper.searchListRes",searchRes);
   }

   public Mylist selectmylist(int mlId1) {
      System.out.println("쿼리 실행 전 : " + mlId1);
      Mylist ret = sqlSessionTemplate.selectOne("mypageMapper.selectmylist",mlId1);
      System.out.println("쿼리 실행 후 Mylist : " + ret);
      return ret;
   }

   public int insertMylist(String themeTitle, int themeWriter) {
      HashMap<String, Object> updateParameter = new HashMap<String, Object>();
      updateParameter.put("themeTitle", themeTitle);
      updateParameter.put("themeWriter", themeWriter);
      
      return sqlSessionTemplate.insert("mypageMapper.insertMylist",updateParameter);
   }

   public int insertMylistRes(String theme) {
      return sqlSessionTemplate.insert("mypageMapper.insertMylistRes",theme);
   }
   
   
   public ArrayList<MyListAdmin> selectmyPageMylist() {

      return (ArrayList)sqlSessionTemplate.selectList("mypageMapper.selectmyPageMylist");
   }

   public int deleteMylistR(MyListAdmin ma) {
      return sqlSessionTemplate.delete("mypageMapper.deleteMylistR",ma);
   }

   public int deleteMylist(MyListAdmin ma) {
      return sqlSessionTemplate.delete("mypageMapper.deleteMylist",ma);
   }

   public MyListAdmin selectOneMylist(MyListAdmin ma) {
      return sqlSessionTemplate.selectOne("mypageMapper.selectOneMylist",ma);
   }

   public ArrayList<Restaurant> selectListMylistRestaurant(MyListAdmin ma) {
      return (ArrayList)sqlSessionTemplate.selectList("mypageMapper.selectListMylistRestaurant",ma);
   }

   public int modifyMylist(MyListAdmin ma) {
      return sqlSessionTemplate.update("mypageMapper.modifyMylist",ma);
   }

   public int deleteRList(MyListAdmin ma) {
      return sqlSessionTemplate.delete("mypageMapper.deleteRList",ma);
   }

   public int insertMylistRestaurant(String mh, MyListAdmin ma) {
      int mId = ma.getMlId();
      HashMap<String, Object> updateParameter = new HashMap<String, Object>();
      updateParameter.put("mId", mId);
      updateParameter.put("mylist",mh);      
      return sqlSessionTemplate.insert("mypageMapper.insertMylistRestaurant",updateParameter);
   }

   public int recommendMylst(int mlId) {
      return sqlSessionTemplate.update("mypageMapper.recommendMylst",mlId);
   }
   










   

   
   











   

}