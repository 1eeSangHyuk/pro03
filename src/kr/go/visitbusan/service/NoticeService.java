package kr.go.visitbusan.service;

import java.util.ArrayList;

import kr.go.visitbusan.dto.Notice;
import kr.go.visitbusan.model.NoticeDAOMySQL;

public class NoticeService {
	NoticeDAOMySQL ndao = new NoticeDAOMySQL();
	
	// 공지사항 목록
	public ArrayList<Notice> getNoticeList(int cur){
		ArrayList<Notice> notiList = ndao.noticeListAll();
		return notiList;
	}
	
	// 공지사항 상세 글보기
	public Notice getNotice(String noticeId){
		Notice noti = ndao.noticeDetail(noticeId);
		return noti;
	}
	
	// 공지사항 추가
	public int noticeInsert(Notice noti){
		int i = ndao.noticeInsert(noti);
		return i;
	}
	
	// 공지사항 수정
	public Notice noticeUpdate(String noticeId){
		Notice noti = ndao.noticeUpdate(noticeId);
		return noti;
	}
	
	// 공지사항 삭제
	public int noticeDelete(String noticeId){
		int i = ndao.noticeDelete(noticeId);
		return i;
	}
	
	// 페이징 처리
}
