package com.gathering.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gathering.dto.CommentsVO;
import com.gathering.dto.QnaVO;
import com.gathering.mapper.CommentsMapper;
import com.gathering.paging.Criteria;

@Service
public class CommentsServiceImpl implements CommentsService {

	@Autowired
	private CommentsMapper commentsMapper;
	
	@Override
	public int insertComment(CommentsVO vo) {
		return commentsMapper.insertComment(vo);
	}
	
	//Qna댓글 총 갯수
	@Override
	public int getTotal(Criteria cri) {
		return commentsMapper.getTotal(cri);
	}
	
	//Qna댓글 리스트
	@Override
	public List<CommentsVO> commentList (int qna_seq) {
		return commentsMapper.commentList(qna_seq);
	}
	
	// Qna 페이징 리스트
	@Override
	public List<CommentsVO> commentListWithPaging(Criteria cri){
		return commentsMapper.commentListWithPaging(cri);
	}
	
	
	@Override
	public void deleteComment(int qna_seq){
		commentsMapper.deleteComment(qna_seq);
	}
	
	//------------ 그룹 공지 댓글 파트 ----------------//
	
	@Override
	public int groupInsertComment(CommentsVO vo) {
		return commentsMapper.groupInsertComment(vo);
	}
	
	//댓글 총 갯수
	@Override
	public int groupGetTotal(Criteria cri) {
		return commentsMapper.groupGetTotal(cri);
	}
	
	//댓글 리스트
	@Override
	public List<CommentsVO> groupCommentList (int qna_seq) {
		return commentsMapper.groupCommentList(qna_seq);
	}
	
	//페이징 리스트
	@Override
	public List<CommentsVO> groupCommentListWithPaging(Criteria cri){
		return commentsMapper.groupCommentListWithPaging(cri);
	}
}





















